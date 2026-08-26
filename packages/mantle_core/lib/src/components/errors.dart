/// Thrown when no delegate is registered on the theme or its baseline.
class MissingDelegateError extends StateError {
  /// Creates an error for a missing [delegate] contract.
  MissingDelegateError(
    Type delegate, {
    required String theme,
    required bool hasBaseline,
  }) : delegateType = delegate,
       themeName = theme,
       super(_message(delegate, theme, hasBaseline));

  /// The contract type that was requested.
  final Type delegateType;

  /// `debugName` of the active theme.
  final String themeName;

  static String _message(Type delegate, String theme, bool hasBaseline) {
    final baseline = hasBaseline
        ? 'provided'
        : 'none (MantleProvider.baseline was null)';
    return 'MissingDelegateError: no $delegate registered.\n'
        '  Active theme: "$theme"\n'
        '  Baseline: $baseline\n'
        'Fix: register a $delegate in the theme, or provide a baseline:\n'
        '  MantleProvider(theme: ..., baseline: BasicTheme(), ...)';
  }
}
