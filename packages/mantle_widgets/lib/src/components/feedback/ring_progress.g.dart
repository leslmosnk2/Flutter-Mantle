// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ring_progress.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [RingProgress].
enum RingProgressVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [RingProgress].
@immutable
class RingProgressStyle {
  /// Creates a [RingProgressStyle].
  const RingProgressStyle();

  /// Returns a copy of this [RingProgressStyle] with selected fields replaced.
  RingProgressStyle copyWith() => this;

  /// Merges [other] over this [RingProgressStyle]; null fields keep this value.
  RingProgressStyle mergeWith(RingProgressStyle? other) => this;
}

/// Resolved interaction state for [RingProgress].
@immutable
class RingProgressState {
  /// Creates a [RingProgressState].
  const RingProgressState();
}

/// Values passed to [RingProgressDelegate] slots during build.
@immutable
class RingProgressContext {
  /// Creates a [RingProgressContext].
  const RingProgressContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.sections,
    this.value,
    this.color,
    this.label,
    required this.size,
    required this.thickness,
    required this.roundCaps,
    this.rootColor,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final RingProgressStyle style;

  /// Resolved interaction state for this build.
  final RingProgressState state;

  /// The visual variant selected by the constructor.
  final RingProgressVariant variant;

  /// The sections.
  final List<RingProgressSection>? sections;

  /// The controlled value.
  final double? value;

  /// Foreground or accent color.
  final String? color;

  /// The label.
  final Widget? label;

  /// Size token.
  final double size;

  /// The thickness.
  final double thickness;

  /// Whether round caps.
  final bool roundCaps;

  /// The root color.
  final String? rootColor;
}

/// Builder for the root slot.
class RingProgressRoot {
  /// Creates a [RingProgressRoot] from a builder function.
  const RingProgressRoot(this._build);

  final Widget Function(RingProgressContext context) _build;

  /// Invokes this slot with [context].
  Widget call(RingProgressContext context) => _build(context);
}

/// Theme-owned composition slots for [RingProgress].
abstract class RingProgressDelegate extends ComponentDelegate {
  /// Creates a [RingProgressDelegate].
  const RingProgressDelegate();

  /// Builds the composition root.
  Widget root(RingProgressContext context);
}

/// A [RingProgress] widget resolved through [RingProgressDelegate].
class RingProgress extends StatelessWidget {
  /// Creates a [RingProgress].
  const RingProgress({
    super.key,
    this.sections,
    this.value,
    this.color,
    this.label,
    this.size,
    this.thickness,
    this.roundCaps,
    this.rootColor,
    this.style,
  }) : variant = RingProgressVariant.defaults;

  /// The visual variant selected by the constructor.
  final RingProgressVariant variant;

  /// The sections.
  final List<RingProgressSection>? sections;

  /// The controlled value.
  final double? value;

  /// Foreground or accent color.
  final String? color;

  /// The label.
  final Widget? label;

  /// Size token.
  final double? size;

  /// The thickness.
  final double? thickness;

  /// Whether round caps.
  final bool? roundCaps;

  /// The root color.
  final String? rootColor;

  /// Style overrides merged over theme defaults.
  final RingProgressStyle? style;

  /// Resolves properties and builds via [RingProgressDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedSections = sections;
    final resolvedValue = value;
    final resolvedColor = color;
    final resolvedLabel = label;
    final resolvedSize = size ?? 120;
    final resolvedThickness = thickness ?? 12;
    final resolvedRoundCaps = roundCaps ?? false;
    final resolvedRootColor = rootColor;

    const fromProps = RingProgressStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = RingProgressState();
    final ringProgressContext = RingProgressContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      sections: resolvedSections,
      value: resolvedValue,
      color: resolvedColor,
      label: resolvedLabel,
      size: resolvedSize,
      thickness: resolvedThickness,
      roundCaps: resolvedRoundCaps,
      rootColor: resolvedRootColor,
    );
    final delegate = MantleTheme.of(context).delegate<RingProgressDelegate>();
    return delegate.root(ringProgressContext);
  }
}
