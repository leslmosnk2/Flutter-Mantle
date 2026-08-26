// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progress.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum ProgressVariant { defaults }

@immutable
class ProgressStyle {
  const ProgressStyle();

  ProgressStyle copyWith() => this;

  ProgressStyle mergeWith(ProgressStyle? other) => this;
}

@immutable
class ProgressState {
  const ProgressState();
}

@immutable
class ProgressContext {
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

  final BuildContext context;
  final ProgressStyle style;
  final ProgressState state;
  final ProgressVariant variant;
  final double value;
  final String? color;
  final bool striped;
  final bool animated;
  final String size;
  final BorderRadiusGeometry radius;
}

class ProgressRoot {
  const ProgressRoot(this._build);

  final Widget Function(ProgressContext context) _build;

  Widget call(ProgressContext context) => _build(context);
}

abstract class ProgressDelegate extends ComponentDelegate {
  const ProgressDelegate();

  Widget root(ProgressContext context);
}

class Progress extends StatelessWidget {
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

  final ProgressVariant variant;
  final double value;
  final String? color;
  final bool? striped;
  final bool? animated;
  final String? size;
  final BorderRadiusGeometry? radius;
  final ProgressStyle? style;

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
