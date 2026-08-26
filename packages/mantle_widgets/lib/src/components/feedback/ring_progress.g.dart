// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ring_progress.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum RingProgressVariant { defaults }

@immutable
class RingProgressStyle {
  const RingProgressStyle();

  RingProgressStyle copyWith() => this;

  RingProgressStyle mergeWith(RingProgressStyle? other) => this;
}

@immutable
class RingProgressState {
  const RingProgressState();
}

@immutable
class RingProgressContext {
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

  final BuildContext context;
  final RingProgressStyle style;
  final RingProgressState state;
  final RingProgressVariant variant;
  final List<RingProgressSection>? sections;
  final double? value;
  final String? color;
  final Widget? label;
  final double size;
  final double thickness;
  final bool roundCaps;
  final String? rootColor;
}

class RingProgressRoot {
  const RingProgressRoot(this._build);

  final Widget Function(RingProgressContext context) _build;

  Widget call(RingProgressContext context) => _build(context);
}

abstract class RingProgressDelegate extends ComponentDelegate {
  const RingProgressDelegate();

  Widget root(RingProgressContext context);
}

class RingProgress extends StatelessWidget {
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

  final RingProgressVariant variant;
  final List<RingProgressSection>? sections;
  final double? value;
  final String? color;
  final Widget? label;
  final double? size;
  final double? thickness;
  final bool? roundCaps;
  final String? rootColor;
  final RingProgressStyle? style;

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
