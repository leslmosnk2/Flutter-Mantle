/// A compiled template expression.
sealed class Expression {
  const Expression();
}

/// A dotted path such as `foo.bar`.
final class PathExpression extends Expression {
  /// Creates a [PathExpression] with the given [segments].
  const PathExpression(this.segments);

  /// The path segments, e.g. `['foo', 'bar']` for `foo.bar`.
  final List<String> segments;
}

/// A logical `not` expression.
final class NotExpression extends Expression {
  /// Creates a [NotExpression] wrapping [operand].
  const NotExpression(this.operand);

  /// The operand expression.
  final Expression operand;
}

/// A logical `and` expression.
final class AndExpression extends Expression {
  /// Creates an [AndExpression] with the given [operands].
  const AndExpression(this.operands);

  /// The operands joined by `and`.
  final List<Expression> operands;
}

/// A logical `or` expression.
final class OrExpression extends Expression {
  /// Creates an [OrExpression] with the given [operands].
  const OrExpression(this.operands);

  /// The operands joined by `or`.
  final List<Expression> operands;
}

/// Parses template expressions.
final class ExpressionParser {
  /// Creates an [ExpressionParser] for the given [source].
  ExpressionParser(this.source);

  /// The expression source text.
  final String source;

  var _index = 0;

  /// Parses the full expression.
  Expression parse() {
    final expression = _parseOr();
    _skipWhitespace();
    if (_index < source.length) {
      throw const FormatException('Unexpected trailing input in expression');
    }
    return expression;
  }

  Expression _parseOr() {
    final operands = [_parseAnd()];
    while (_matchKeyword('or')) {
      operands.add(_parseAnd());
    }
    return operands.length == 1 ? operands.first : OrExpression(operands);
  }

  Expression _parseAnd() {
    final operands = [_parseNot()];
    while (_matchKeyword('and')) {
      operands.add(_parseNot());
    }
    return operands.length == 1 ? operands.first : AndExpression(operands);
  }

  Expression _parseNot() {
    if (_matchKeyword('not')) {
      return NotExpression(_parseNot());
    }
    return _parsePath();
  }

  Expression _parsePath() {
    final segments = <String>[];
    _skipWhitespace();
    if (_index >= source.length ||
        !_isIdentifierStart(source.codeUnitAt(_index))) {
      throw const FormatException('Expected identifier in expression');
    }
    segments.add(_readIdentifier());
    while (_match('.')) {
      _skipWhitespace();
      if (_index >= source.length ||
          !_isIdentifierStart(source.codeUnitAt(_index))) {
        throw const FormatException('Expected identifier after "."');
      }
      segments.add(_readIdentifier());
    }
    return PathExpression(segments);
  }

  bool _matchKeyword(String keyword) {
    _skipWhitespace();
    if (!_sourceStartsWith(keyword)) {
      return false;
    }
    final end = _index + keyword.length;
    if (end < source.length && _isIdentifierPart(source.codeUnitAt(end))) {
      return false;
    }
    _index = end;
    return true;
  }

  bool _match(String char) {
    _skipWhitespace();
    if (_index >= source.length || source[_index] != char) {
      return false;
    }
    _index++;
    return true;
  }

  void _skipWhitespace() {
    while (_index < source.length && _isWhitespace(source.codeUnitAt(_index))) {
      _index++;
    }
  }

  String _readIdentifier() {
    final start = _index;
    while (_index < source.length &&
        _isIdentifierPart(source.codeUnitAt(_index))) {
      _index++;
    }
    return source.substring(start, _index);
  }

  bool _sourceStartsWith(String value) {
    if (_index + value.length > source.length) {
      return false;
    }
    return source.startsWith(value, _index);
  }

  bool _isWhitespace(int codeUnit) =>
      codeUnit == 0x20 ||
      codeUnit == 0x09 ||
      codeUnit == 0x0A ||
      codeUnit == 0x0D;

  bool _isIdentifierStart(int codeUnit) =>
      (codeUnit >= 0x41 && codeUnit <= 0x5A) ||
      (codeUnit >= 0x61 && codeUnit <= 0x7A) ||
      codeUnit == 0x5F;

  bool _isIdentifierPart(int codeUnit) =>
      _isIdentifierStart(codeUnit) || (codeUnit >= 0x30 && codeUnit <= 0x39);
}
