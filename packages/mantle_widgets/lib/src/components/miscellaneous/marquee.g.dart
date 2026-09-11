// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marquee.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Marquee].
enum MarqueeVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Marquee].
@immutable
class MarqueeStyle {
  /// Creates a [MarqueeStyle].
  const MarqueeStyle();

  /// Returns a copy of this [MarqueeStyle] with selected fields replaced.
  MarqueeStyle copyWith() => this;

  /// Merges [other] over this [MarqueeStyle]; null fields keep this value.
  MarqueeStyle mergeWith(MarqueeStyle? other) => this;
}

/// Resolved interaction state for [Marquee].
@immutable
class MarqueeState {
  /// Creates a [MarqueeState].
  const MarqueeState();
}

/// Values passed to [MarqueeDelegate] slots during build.
@immutable
class MarqueeContext {
  /// Creates a [MarqueeContext].
  const MarqueeContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.duration,
    required this.gap,
    required this.orientation,
    required this.reverse,
    required this.pauseOnHover,
    required this.repeat,
    required this.fadeEdges,
    required this.fadeEdgeSize,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MarqueeStyle style;

  /// Resolved interaction state for this build.
  final MarqueeState state;

  /// The visual variant selected by the constructor.
  final MarqueeVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Animation duration in milliseconds.
  final int duration;

  /// Spacing token between items.
  final String gap;

  /// The orientation.
  final Axis orientation;

  /// Whether motion runs in reverse.
  final bool reverse;

  /// Whether to pause motion while hovered.
  final bool pauseOnHover;

  /// How many times the content is repeated.
  final int repeat;

  /// Whether to fade the scrolling edges.
  final bool fadeEdges;

  /// The fade edge size.
  final double fadeEdgeSize;
}

/// Builder for the root slot.
class MarqueeRoot {
  /// Creates a [MarqueeRoot] from a builder function.
  const MarqueeRoot(this._build);

  final Widget Function(MarqueeContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MarqueeContext context) => _build(context);
}

/// Theme-owned composition slots for [Marquee].
abstract class MarqueeDelegate extends ComponentDelegate {
  /// Creates a [MarqueeDelegate].
  const MarqueeDelegate();

  /// Builds the composition root.
  Widget root(MarqueeContext context);
}

/// A [Marquee] widget resolved through [MarqueeDelegate].
class Marquee extends StatelessWidget {
  /// Creates a [Marquee].
  const Marquee({
    super.key,
    required this.children,
    this.duration,
    this.gap,
    this.orientation,
    this.reverse,
    this.pauseOnHover,
    this.repeat,
    this.fadeEdges,
    this.fadeEdgeSize,
    this.style,
  }) : variant = MarqueeVariant.defaults;

  /// The visual variant selected by the constructor.
  final MarqueeVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Animation duration in milliseconds.
  final int? duration;

  /// Spacing token between items.
  final String? gap;

  /// The orientation.
  final Axis? orientation;

  /// Whether motion runs in reverse.
  final bool? reverse;

  /// Whether to pause motion while hovered.
  final bool? pauseOnHover;

  /// How many times the content is repeated.
  final int? repeat;

  /// Whether to fade the scrolling edges.
  final bool? fadeEdges;

  /// The fade edge size.
  final double? fadeEdgeSize;

  /// Style overrides merged over theme defaults.
  final MarqueeStyle? style;

  /// Resolves properties and builds via [MarqueeDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedDuration = duration ?? 40000;
    final resolvedGap = gap ?? 'md';
    final resolvedOrientation = orientation ?? Axis.horizontal;
    final resolvedReverse = reverse ?? false;
    final resolvedPauseOnHover = pauseOnHover ?? false;
    final resolvedRepeat = repeat ?? 4;
    final resolvedFadeEdges = fadeEdges ?? true;
    final resolvedFadeEdgeSize = fadeEdgeSize ?? 0.05;

    const fromProps = MarqueeStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MarqueeState();
    final marqueeContext = MarqueeContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      duration: resolvedDuration,
      gap: resolvedGap,
      orientation: resolvedOrientation,
      reverse: resolvedReverse,
      pauseOnHover: resolvedPauseOnHover,
      repeat: resolvedRepeat,
      fadeEdges: resolvedFadeEdges,
      fadeEdgeSize: resolvedFadeEdgeSize,
    );
    final delegate = MantleTheme.of(context).delegate<MarqueeDelegate>();
    return delegate.root(marqueeContext);
  }
}
