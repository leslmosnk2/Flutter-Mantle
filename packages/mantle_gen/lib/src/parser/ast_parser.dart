import 'package:mantle_gen/src/parser/ast.dart';
import 'package:mantle_gen/src/parser/exception.dart';
import 'package:mantle_gen/src/parser/expression.dart';
import 'package:mantle_gen/src/parser/lexer.dart';

/// Parses lexed template tokens into an AST.
final class TemplateAstParser {
  /// Creates a [TemplateAstParser] for the given [tokens].
  TemplateAstParser(this.tokens);

  /// The tokens to parse.
  final List<TemplateToken> tokens;

  var _index = 0;

  /// Parses the token stream into a list of [TemplateNode]s.
  List<TemplateNode> parse() {
    final nodes = _parseNodes(until: const {});
    if (_index < tokens.length) {
      final token = tokens[_index];
      throw TemplateException(
        'Unexpected token "${token.value}"',
        line: token.line,
        column: token.column,
      );
    }
    return nodes;
  }

  List<TemplateNode> _parseNodes({required Set<String> until}) {
    final nodes = <TemplateNode>[];
    while (_index < tokens.length) {
      final token = tokens[_index];
      if (token.kind == TemplateTokenKind.tag) {
        final parts = token.value.split(RegExp(r'\s+'));
        final tag = parts.first;
        if (until.contains(tag)) {
          if (token.trimLeft) {
            _trimTrailingWhitespace(nodes);
          }
          break;
        }
        if (token.trimLeft) {
          _trimTrailingWhitespace(nodes);
        }
        switch (tag) {
          case 'if':
            nodes.add(_parseIf(token));
          case 'for':
            nodes.add(_parseFor(token));
          case 'raw':
            nodes.add(_parseRaw(token));
          case 'elif':
          case 'else':
          case 'endif':
          case 'endfor':
          case 'endraw':
            throw TemplateException(
              'Unexpected "$tag" tag',
              line: token.line,
              column: token.column,
            );
          default:
            throw TemplateException(
              'Unknown tag "$tag"',
              line: token.line,
              column: token.column,
            );
        }
        continue;
      }

      if (token.kind == TemplateTokenKind.comment) {
        _index++;
        continue;
      }

      if (token.kind == TemplateTokenKind.text) {
        var value = token.value;
        if (_index > 0 && _previousTokenHadTrimRight(_index - 1)) {
          value = value.replaceFirst(RegExp(r'^\s+'), '');
        }
        if (value.isNotEmpty) {
          nodes.add(TextNode(value));
        }
        _index++;
        continue;
      }

      if (token.kind == TemplateTokenKind.output) {
        if (token.trimLeft) {
          _trimTrailingWhitespace(nodes);
        }
        nodes.add(
          OutputNode(_parseExpression(token.value, token.line, token.column)),
        );
        _index++;
        continue;
      }
    }
    return nodes;
  }

  bool _previousTokenHadTrimRight(int tokenIndex) {
    final previous = tokens[tokenIndex];
    return (previous.kind == TemplateTokenKind.tag ||
            previous.kind == TemplateTokenKind.output) &&
        previous.trimRight;
  }

  void _trimTrailingWhitespace(List<TemplateNode> nodes) {
    if (nodes.isEmpty) {
      return;
    }
    final last = nodes.last;
    if (last is! TextNode) {
      return;
    }
    final trimmed = last.value.replaceFirst(RegExp(r'\s+$'), '');
    if (trimmed.isEmpty) {
      nodes.removeLast();
    } else if (trimmed != last.value) {
      nodes[nodes.length - 1] = TextNode(trimmed);
    }
  }

  IfNode _parseIf(TemplateToken token) {
    _index++;
    final conditionSource = token.value.substring('if'.length).trim();
    final condition = _parseExpression(
      conditionSource,
      token.line,
      token.column,
    );
    final body = _parseNodes(until: {'elif', 'else', 'endif'});

    final elifBranches = <(Expression, List<TemplateNode>)>[];
    while (_index < tokens.length &&
        tokens[_index].kind == TemplateTokenKind.tag &&
        tokens[_index].value.startsWith('elif')) {
      final elifToken = tokens[_index];
      final elifConditionSource = elifToken.value
          .substring('elif'.length)
          .trim();
      final elifCondition = _parseExpression(
        elifConditionSource,
        elifToken.line,
        elifToken.column,
      );
      _index++;
      final elifBody = _parseNodes(until: {'elif', 'else', 'endif'});
      elifBranches.add((elifCondition, elifBody));
    }

    var elseBody = const <TemplateNode>[];
    if (_index < tokens.length &&
        tokens[_index].kind == TemplateTokenKind.tag &&
        tokens[_index].value == 'else') {
      _index++;
      elseBody = _parseNodes(until: {'endif'});
    }

    _expectTag('endif', token);
    return IfNode(
      condition: condition,
      body: body,
      elifBranches: elifBranches,
      elseBody: elseBody,
    );
  }

  ForNode _parseFor(TemplateToken token) {
    _index++;
    final match = RegExp(r'^for\s+(\w+)\s+in\s+(.+)$').firstMatch(token.value);
    if (match == null) {
      throw TemplateException(
        'Invalid for tag syntax, expected "for item in collection"',
        line: token.line,
        column: token.column,
      );
    }
    final itemName = match.group(1)!;
    final collection = _parseExpression(
      match.group(2)!.trim(),
      token.line,
      token.column,
    );
    final body = _parseNodes(until: {'else', 'endfor'});

    var elseBody = const <TemplateNode>[];
    if (_index < tokens.length &&
        tokens[_index].kind == TemplateTokenKind.tag &&
        tokens[_index].value == 'else') {
      _index++;
      elseBody = _parseNodes(until: {'endfor'});
    }

    _expectTag('endfor', token);
    return ForNode(
      itemName: itemName,
      collection: collection,
      body: body,
      elseBody: elseBody,
    );
  }

  RawNode _parseRaw(TemplateToken token) {
    final buffer = StringBuffer();
    _index++;
    while (_index < tokens.length) {
      final current = tokens[_index];
      if (current.kind == TemplateTokenKind.tag && current.value == 'endraw') {
        _index++;
        return RawNode(buffer.toString());
      }
      switch (current.kind) {
        case TemplateTokenKind.text:
          buffer.write(current.value);
        case TemplateTokenKind.output:
          buffer.write('{{ ${current.value} }}');
        case TemplateTokenKind.tag:
          buffer.write('{% ${current.value} %}');
        case TemplateTokenKind.comment:
          break;
      }
      _index++;
    }
    throw TemplateException(
      'Unclosed raw block, expected "endraw"',
      line: token.line,
      column: token.column,
    );
  }

  void _expectTag(String expected, TemplateToken context) {
    if (_index >= tokens.length ||
        tokens[_index].kind != TemplateTokenKind.tag ||
        tokens[_index].value != expected) {
      throw TemplateException(
        'Expected "$expected" tag',
        line: context.line,
        column: context.column,
      );
    }
    _index++;
  }

  Expression _parseExpression(String source, int line, int column) {
    try {
      return ExpressionParser(source).parse();
    } on FormatException catch (error) {
      throw TemplateException(
        'Invalid expression "$source": ${error.message}',
        line: line,
        column: column,
      );
    }
  }
}
