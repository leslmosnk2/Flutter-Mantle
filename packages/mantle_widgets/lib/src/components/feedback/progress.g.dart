// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Progress].
enum ProgressVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Progress].
@immutable
class ProgressStyle {
  /// Creates a [ProgressStyle].
  const ProgressStyle();

  /// Returns a copy of this [ProgressStyle] with selected fields replaced.
  ProgressStyle copyWith() => this;

  /// Merges [other] over this [ProgressStyle]; null fields keep this value.
  ProgressStyle mergeWith(ProgressStyle? other) => this;
}

/// Resolved interaction state for [Progress].
@immutable
class ProgressState {
  /// Creates a [ProgressState].
  const ProgressState();
}

/// Values passed to [ProgressDelegate] slots during build.
@immutable
class ProgressContext {
  /// Creates a [ProgressContext].
  const ProgressContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.value,
    this.color,
    required this.striped,
    required this.animated,
    required this.size,
    required this.radius,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ProgressStyle style;

  /// Resolved interaction state for this build.
  final ProgressState state;

  /// The visual variant selected by the constructor.
  final ProgressVariant variant;

  /// The controlled value.
  final double value;

  /// Foreground or accent color.
  final String? color;

  /// Whether rows use alternating backgrounds.
  final bool striped;

  /// Whether animated.
  final bool animated;

  /// Size token.
  final String size;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class ProgressRoot {
  /// Creates a [ProgressRoot] from a builder function.
  const ProgressRoot(this._build);

  final Widget Function(ProgressContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ProgressContext context) => _build(context);
}

/// Theme-owned composition slots for [Progress].
abstract class ProgressDelegate extends ComponentDelegate {
  /// Creates a [ProgressDelegate].
  const ProgressDelegate();

  /// Builds the composition root.
  Widget root(ProgressContext context);
}

/// A [Progress] widget resolved through [ProgressDelegate].
class Progress extends StatelessWidget {
  /// Creates a [Progress].
  const Progress({
    super.key,
    required this.value,
    this.color,
    this.striped,
    this.animated,
    this.size,
    this.radius,
    this.style,
  }) : variant = ProgressVariant.defaults;

  /// The visual variant selected by the constructor.
  final ProgressVariant variant;

  /// The controlled value.
  final double value;

  /// Foreground or accent color.
  final String? color;

  /// Whether rows use alternating backgrounds.
  final bool? striped;

  /// Whether animated.
  final bool? animated;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final ProgressStyle? style;

  /// Resolves properties and builds via [ProgressDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedColor = color;
    final resolvedStriped = striped ?? false;
    final resolvedAnimated = animated ?? false;
    final resolvedSize = size ?? 'md';
    final resolvedRadius = radius ?? feedbackDefaultRadius(context);

    const fromProps = ProgressStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ProgressState();
    final progressContext = ProgressContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      color: resolvedColor,
      striped: resolvedStriped,
      animated: resolvedAnimated,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<ProgressDelegate>();
    return delegate.root(progressContext);
  }
}
