import 'package:mantle_gen/src/parser/ast.dart';
import 'package:mantle_gen/src/parser/exception.dart';
import 'package:mantle_gen/src/parser/expression.dart';

/// Loop metadata exposed as `loop.*` inside a for block.
final class LoopContext {
  /// Creates a [LoopContext].
  const LoopContext({
    required this.index,
    required this.index0,
    required this.first,
    required this.last,
    required this.length,
  });

  /// The 1-based index of the current iteration.
  final int index;

  /// The 0-based index of the current iteration.
  final int index0;

  /// Whether this is the first iteration.
  final bool first;

  /// Whether this is the last iteration.
  final bool last;

  /// The total number of iterations.
  final int length;
}

/// Renders a compiled template AST with a context map.
final class TemplateRenderer {
  /// Creates a [TemplateRenderer] for the given [nodes].
  const TemplateRenderer(this.nodes);

  /// The AST nodes to render.
  final List<TemplateNode> nodes;

  /// Renders the template with the given [context].
  String render(Map<String, Object?> context) {
    final buffer = StringBuffer();
    _renderNodes(nodes, _ContextScope(context), buffer);
    return buffer.toString();
  }

  void _renderNodes(
    List<TemplateNode> nodes,
    _ContextScope scope,
    StringBuffer buffer,
  ) {
    for (final node in nodes) {
      switch (node) {
        case TextNode(:final value):
          buffer.write(value);
        case RawNode(:final value):
          buffer.write(value);
        case OutputNode(:final expression):
          buffer.write(_evaluateOutput(expression, scope));
        case IfNode(
          :final condition,
          :final body,
          :final elifBranches,
          :final elseBody,
        ):
          if (_isTruthy(_evaluateExpression(condition, scope))) {
            _renderNodes(body, scope, buffer);
          } else {
            var matched = false;
            for (final (elifCondition, elifBody) in elifBranches) {
              if (_isTruthy(_evaluateExpression(elifCondition, scope))) {
                _renderNodes(elifBody, scope, buffer);
                matched = true;
                break;
              }
            }
            if (!matched) {
              _renderNodes(elseBody, scope, buffer);
            }
          }
        case ForNode(
          :final itemName,
          :final collection,
          :final body,
          :final elseBody,
        ):
          final items = _evaluateIterable(collection, scope);
          if (items.isEmpty) {
            _renderNodes(elseBody, scope, buffer);
          } else {
            final length = items.length;
            for (var i = 0; i < length; i++) {
              final loop = LoopContext(
                index: i + 1,
                index0: i,
                first: i == 0,
                last: i == length - 1,
                length: length,
              );
              final childScope = scope.push({
                itemName: items[i],
                'loop': loop,
              });
              _renderNodes(body, childScope, buffer);
            }
          }
      }
    }
  }

  String _evaluateOutput(Expression expression, _ContextScope scope) {
    final value = _evaluateExpression(expression, scope);
    if (value == null) {
      return '';
    }
    return value.toString();
  }

  Object? _evaluateExpression(Expression expression, _ContextScope scope) {
    switch (expression) {
      case PathExpression(:final segments):
        return _resolvePath(segments, scope);
      case NotExpression(:final operand):
        return !_isTruthy(_evaluateExpression(operand, scope));
      case AndExpression(:final operands):
        for (final operand in operands) {
          if (!_isTruthy(_evaluateExpression(operand, scope))) {
            return false;
          }
        }
        return true;
      case OrExpression(:final operands):
        for (final operand in operands) {
          if (_isTruthy(_evaluateExpression(operand, scope))) {
            return true;
          }
        }
        return false;
    }
  }

  Object? _resolvePath(List<String> segments, _ContextScope scope) {
    if (segments.isEmpty) {
      throw const TemplateException('Empty path in expression');
    }

    var current = scope.lookup(segments.first);
    if (current == null && !scope.containsKey(segments.first)) {
      throw TemplateException('Undefined variable "${segments.first}"');
    }

    for (final segment in segments.skip(1)) {
      current = _resolveProperty(current, segment);
    }
    return current;
  }

  Object? _resolveProperty(Object? value, String name) {
    if (value == null) {
      return null;
    }

    if (value is Map) {
      if (!value.containsKey(name)) {
        throw TemplateException('Undefined property "$name"');
      }
      return value[name];
    }

    if (value is LoopContext) {
      return switch (name) {
        'index' => value.index,
        'index0' => value.index0,
        'first' => value.first,
        'last' => value.last,
        'length' => value.length,
        _ => throw TemplateException('Undefined loop property "$name"'),
      };
    }

    if (value is Iterable && value is! Map) {
      return switch (name) {
        'length' => value.length,
        'isEmpty' => value.isEmpty,
        'isNotEmpty' => value.isNotEmpty,
        'first' => value.isEmpty ? null : value.first,
        'last' => value.isEmpty ? null : value.last,
        _ => throw TemplateException('Undefined property "$name" on iterable'),
      };
    }

    if (value is String) {
      return switch (name) {
        'length' => value.length,
        'isEmpty' => value.isEmpty,
        'isNotEmpty' => value.isNotEmpty,
        _ => throw TemplateException('Undefined property "$name" on string'),
      };
    }

    throw TemplateException(
      'Cannot access property "$name" on ${value.runtimeType}',
    );
  }

  List<Object?> _evaluateIterable(Expression expression, _ContextScope scope) {
    final value = _evaluateExpression(expression, scope);
    if (value == null) {
      return const [];
    }
    if (value is Iterable && value is! Map) {
      return value.toList();
    }
    throw TemplateException(
      'Expected iterable in for loop, got ${value.runtimeType}',
    );
  }

  bool _isTruthy(Object? value) {
    if (value == null) {
      return false;
    }
    if (value is bool) {
      return value;
    }
    if (value is num) {
      return value != 0;
    }
    if (value is String) {
      return value.isNotEmpty;
    }
    if (value is Iterable && value is! Map) {
      return value.isNotEmpty;
    }
    if (value is Map) {
      return value.isNotEmpty;
    }
    return true;
  }
}

final class _ContextScope {
  _ContextScope(this._values);

  final Map<String, Object?> _values;

  Object? lookup(String name) => _values[name];

  bool containsKey(String name) => _values.containsKey(name);

  _ContextScope push(Map<String, Object?> values) {
    return _ContextScope({..._values, ...values});
  }
}
