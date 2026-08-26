/// Thrown when a template fails to parse or render.
final class TemplateException implements Exception {
  /// Creates a [TemplateException] with the given [message].
  const TemplateException(this.message, {this.line, this.column});

  /// A human-readable description of the error.
  final String message;

  /// The 1-based line number where the error occurred, if known.
  final int? line;

  /// The 1-based column number where the error occurred, if known.
  final int? column;

  @override
  String toString() {
    if (line != null) {
      final columnSuffix = column != null ? ', column $column' : '';
      return 'TemplateException at line $line$columnSuffix: $message';
    }
    return 'TemplateException: $message';
  }
}
