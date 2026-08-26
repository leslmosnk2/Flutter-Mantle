import 'package:mantle_gen/src/parser/exception.dart';

/// The kind of token produced by [TemplateLexer].
enum TemplateTokenKind {
  /// Literal text.
  text,

  /// An output expression `{{ ... }}`.
  output,

  /// A control-flow tag `{% ... %}`.
  tag,

  /// A comment `{# ... #}`.
  comment,
}

/// A token produced by [TemplateLexer].
final class TemplateToken {
  /// Creates a [TemplateToken].
  const TemplateToken({
    required this.kind,
    required this.value,
    required this.line,
    required this.column,
    this.trimLeft = false,
    this.trimRight = false,
  });

  /// The token kind.
  final TemplateTokenKind kind;

  /// The token value (text content or tag/expression body).
  final String value;

  /// The 1-based line where the token starts.
  final int line;

  /// The 1-based column where the token starts.
  final int column;

  /// Whether whitespace to the left should be trimmed.
  final bool trimLeft;

  /// Whether whitespace to the right should be trimmed.
  final bool trimRight;
}

/// Lexes a template source string into tokens.
final class TemplateLexer {
  /// Creates a [TemplateLexer] for the given [source].
  TemplateLexer(this.source);

  /// The template source text.
  final String source;

  var _index = 0;
  var _line = 1;
  var _column = 1;

  /// Tokenizes the entire [source].
  List<TemplateToken> tokenize() {
    final tokens = <TemplateToken>[];
    while (_index < source.length) {
      final startLine = _line;
      final startColumn = _column;

      if (_matchSequence('{{')) {
        final trimLeft = _matchChar('-');
        final value = _readUntil('}}', trimRight: true);
        tokens.add(
          TemplateToken(
            kind: TemplateTokenKind.output,
            value: value.trim(),
            line: startLine,
            column: startColumn,
            trimLeft: trimLeft,
            trimRight: _lastTrimRight,
          ),
        );
        continue;
      }

      if (_matchSequence('{%')) {
        final trimLeft = _matchChar('-');
        final value = _readUntil('%}', trimRight: true);
        tokens.add(
          TemplateToken(
            kind: TemplateTokenKind.tag,
            value: value.trim(),
            line: startLine,
            column: startColumn,
            trimLeft: trimLeft,
            trimRight: _lastTrimRight,
          ),
        );
        continue;
      }

      if (_matchSequence('{#')) {
        _readUntil('#}', trimRight: false);
        tokens.add(
          TemplateToken(
            kind: TemplateTokenKind.comment,
            value: '',
            line: startLine,
            column: startColumn,
          ),
        );
        continue;
      }

      final textStart = _index;
      while (_index < source.length && !_startsSpecial()) {
        _advance();
      }
      tokens.add(
        TemplateToken(
          kind: TemplateTokenKind.text,
          value: source.substring(textStart, _index),
          line: startLine,
          column: startColumn,
        ),
      );
    }
    return tokens;
  }

  var _lastTrimRight = false;

  String _readUntil(String terminator, {required bool trimRight}) {
    _lastTrimRight = false;
    final buffer = StringBuffer();
    while (_index < source.length) {
      if (_matchChar('-') && _matchSequence(terminator)) {
        if (trimRight) {
          _lastTrimRight = true;
        }
        return buffer.toString();
      }
      if (_matchSequence(terminator)) {
        return buffer.toString();
      }
      buffer.write(source[_index]);
      _advance();
    }
    throw TemplateException(
      'Unclosed template delimiter, expected "$terminator"',
      line: _line,
      column: _column,
    );
  }

  bool _startsSpecial() =>
      _matchSequence('{{', consume: false) ||
      _matchSequence('{%', consume: false) ||
      _matchSequence('{#', consume: false);

  bool _matchSequence(String value, {bool consume = true}) {
    if (_index + value.length > source.length) {
      return false;
    }
    if (!source.startsWith(value, _index)) {
      return false;
    }
    if (consume) {
      for (var i = 0; i < value.length; i++) {
        _advance();
      }
    }
    return true;
  }

  bool _matchChar(String char) {
    if (_index >= source.length || source[_index] != char) {
      return false;
    }
    _advance();
    return true;
  }

  void _advance() {
    if (_index >= source.length) {
      return;
    }
    if (source[_index] == '\n') {
      _line++;
      _column = 1;
    } else {
      _column++;
    }
    _index++;
  }
}
