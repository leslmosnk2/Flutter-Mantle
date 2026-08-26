// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marquee.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum MarqueeVariant { defaults }

@immutable
class MarqueeStyle {
  const MarqueeStyle();

  MarqueeStyle copyWith() => this;

  MarqueeStyle mergeWith(MarqueeStyle? other) => this;
}

@immutable
class MarqueeState {
  const MarqueeState();
}

@immutable
class MarqueeContext {
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

  final BuildContext context;
  final MarqueeStyle style;
  final MarqueeState state;
  final MarqueeVariant variant;
  final List<Widget> children;
  final int duration;
  final String gap;
  final Axis orientation;
  final bool reverse;
  final bool pauseOnHover;
  final int repeat;
  final bool fadeEdges;
  final double fadeEdgeSize;
}

class MarqueeRoot {
  const MarqueeRoot(this._build);

  final Widget Function(MarqueeContext context) _build;

  Widget call(MarqueeContext context) => _build(context);
}

abstract class MarqueeDelegate extends ComponentDelegate {
  const MarqueeDelegate();

  Widget root(MarqueeContext context);
}

class Marquee extends StatelessWidget {
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

  final MarqueeVariant variant;
  final List<Widget> children;
  final int? duration;
  final String? gap;
  final Axis? orientation;
  final bool? reverse;
  final bool? pauseOnHover;
  final int? repeat;
  final bool? fadeEdges;
  final double? fadeEdgeSize;
  final MarqueeStyle? style;

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
