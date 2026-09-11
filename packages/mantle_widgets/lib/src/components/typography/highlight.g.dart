// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highlight.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Highlight].
enum HighlightVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Highlight].
@immutable
class HighlightStyle {
  /// Creates a [HighlightStyle].
  const HighlightStyle();

  /// Returns a copy of this [HighlightStyle] with selected fields replaced.
  HighlightStyle copyWith() => this;

  /// Merges [other] over this [HighlightStyle]; null fields keep this value.
  HighlightStyle mergeWith(HighlightStyle? other) => this;
}

/// Resolved interaction state for [Highlight].
@immutable
class HighlightState {
  /// Creates a [HighlightState].
  const HighlightState();
}

/// Values passed to [HighlightDelegate] slots during build.
@immutable
class HighlightContext {
  /// Creates a [HighlightContext].
  const HighlightContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.text,
    required this.highlight,
    required this.color,
    required this.size,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final HighlightStyle style;

  /// Resolved interaction state for this build.
  final HighlightState state;

  /// The visual variant selected by the constructor.
  final HighlightVariant variant;

  /// The text to display.
  final String text;

  /// The highlight.
  final List<String> highlight;

  /// Foreground or accent color.
  final String color;

  /// Size token.
  final String size;
}

/// Builder for the root slot.
class HighlightRoot {
  /// Creates a [HighlightRoot] from a builder function.
  const HighlightRoot(this._build);

  final Widget Function(HighlightContext context) _build;

  /// Invokes this slot with [context].
  Widget call(HighlightContext context) => _build(context);
}

/// Theme-owned composition slots for [Highlight].
abstract class HighlightDelegate extends ComponentDelegate {
  /// Creates a [HighlightDelegate].
  const HighlightDelegate();

  /// Builds the composition root.
  Widget root(HighlightContext context);
}

/// A [Highlight] widget resolved through [HighlightDelegate].
class Highlight extends StatelessWidget {
  /// Creates a [Highlight].
  const Highlight({
    super.key,
    required this.text,
    required this.highlight,
    this.color,
    this.size,
    this.style,
  }) : variant = HighlightVariant.defaults;

  /// The visual variant selected by the constructor.
  final HighlightVariant variant;

  /// The text to display.
  final String text;

  /// The highlight.
  final List<String> highlight;

  /// Foreground or accent color.
  final String? color;

  /// Size token.
  final String? size;

  /// Style overrides merged over theme defaults.
  final HighlightStyle? style;

  /// Resolves properties and builds via [HighlightDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedText = text;
    final resolvedHighlight = highlight;
    final resolvedColor = color ?? 'yellow';
    final resolvedSize = size ?? 'md';

    const fromProps = HighlightStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = HighlightState();
    final highlightContext = HighlightContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      text: resolvedText,
      highlight: resolvedHighlight,
      color: resolvedColor,
      size: resolvedSize,
    );
    final delegate = MantleTheme.of(context).delegate<HighlightDelegate>();
    return delegate.root(highlightContext);
  }
}
