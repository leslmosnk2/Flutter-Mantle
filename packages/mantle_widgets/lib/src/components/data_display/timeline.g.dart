// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum TimelineVariant { defaults }

@immutable
class TimelineStyle {
  const TimelineStyle();

  TimelineStyle copyWith() => this;

  TimelineStyle mergeWith(TimelineStyle? other) => this;
}

@immutable
class TimelineState {
  const TimelineState();
}

@immutable
class TimelineContext {
  const TimelineContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.active,
    this.color,
    required this.bulletSize,
    required this.lineWidth,
    required this.align,
    required this.reverseActive,
    required this.radius,
    required this.autoContrast,
  });

  final BuildContext context;
  final TimelineStyle style;
  final TimelineState state;
  final TimelineVariant variant;
  final List<Widget> children;
  final int active;
  final String? color;
  final double bulletSize;
  final double lineWidth;
  final TimelineAlign align;
  final bool reverseActive;
  final BorderRadiusGeometry radius;
  final bool autoContrast;
}

class TimelineRoot {
  const TimelineRoot(this._build);

  final Widget Function(TimelineContext context) _build;

  Widget call(TimelineContext context) => _build(context);
}

abstract class TimelineDelegate extends ComponentDelegate {
  const TimelineDelegate();

  Widget root(TimelineContext context);
}

class Timeline extends StatelessWidget {
  const Timeline({
    super.key,
    required this.children,
    this.active,
    this.color,
    this.bulletSize,
    this.lineWidth,
    this.align,
    this.reverseActive,
    this.radius,
    this.autoContrast,
    this.style,
  }) : variant = TimelineVariant.defaults;

  final TimelineVariant variant;
  final List<Widget> children;
  final int? active;
  final String? color;
  final double? bulletSize;
  final double? lineWidth;
  final TimelineAlign? align;
  final bool? reverseActive;
  final BorderRadiusGeometry? radius;
  final bool? autoContrast;
  final TimelineStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedActive = active ?? -1;
    final resolvedColor = color;
    final resolvedBulletSize = bulletSize ?? 20;
    final resolvedLineWidth = lineWidth ?? 4;
    final resolvedAlign = align ?? TimelineAlign.left;
    final resolvedReverseActive = reverseActive ?? false;
    final resolvedRadius = radius ?? dataDisplayPillRadius(context);
    final resolvedAutoContrast = autoContrast ?? false;

    const fromProps = TimelineStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TimelineState();
    final timelineContext = TimelineContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      active: resolvedActive,
      color: resolvedColor,
      bulletSize: resolvedBulletSize,
      lineWidth: resolvedLineWidth,
      align: resolvedAlign,
      reverseActive: resolvedReverseActive,
      radius: resolvedRadius,
      autoContrast: resolvedAutoContrast,
    );
    final delegate = MantleTheme.of(context).delegate<TimelineDelegate>();
    return delegate.root(timelineContext);
  }
}

enum TimelineItemVariant { defaults }

@immutable
class TimelineItemStyle {
  const TimelineItemStyle();

  TimelineItemStyle copyWith() => this;

  TimelineItemStyle mergeWith(TimelineItemStyle? other) => this;
}

@immutable
class TimelineItemState {
  const TimelineItemState();
}

@immutable
class TimelineItemContext {
  const TimelineItemContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.title,
    this.child,
    this.bullet,
    this.color,
    required this.lineVariant,
    this.index,
  });

  final BuildContext context;
  final TimelineItemStyle style;
  final TimelineItemState state;
  final TimelineItemVariant variant;
  final Widget? title;
  final Widget? child;
  final Widget? bullet;
  final String? color;
  final TimelineLineVariant lineVariant;
  final int? index;
}

class TimelineItemRoot {
  const TimelineItemRoot(this._build);

  final Widget Function(TimelineItemContext context) _build;

  Widget call(TimelineItemContext context) => _build(context);
}

abstract class TimelineItemDelegate extends ComponentDelegate {
  const TimelineItemDelegate();

  Widget root(TimelineItemContext context);
}

class TimelineItem extends StatelessWidget {
  const TimelineItem({
    super.key,
    this.title,
    this.child,
    this.bullet,
    this.color,
    this.lineVariant,
    this.index,
    this.style,
  }) : variant = TimelineItemVariant.defaults;

  final TimelineItemVariant variant;
  final Widget? title;
  final Widget? child;
  final Widget? bullet;
  final String? color;
  final TimelineLineVariant? lineVariant;
  final int? index;
  final TimelineItemStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedTitle = title;
    final resolvedChild = child;
    final resolvedBullet = bullet;
    final resolvedColor = color;
    final resolvedLineVariant = lineVariant ?? TimelineLineVariant.solid;
    final resolvedIndex = index;

    const fromProps = TimelineItemStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TimelineItemState();
    final timelineItemContext = TimelineItemContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      title: resolvedTitle,
      child: resolvedChild,
      bullet: resolvedBullet,
      color: resolvedColor,
      lineVariant: resolvedLineVariant,
      index: resolvedIndex,
    );
    final delegate = MantleTheme.of(context).delegate<TimelineItemDelegate>();
    return delegate.root(timelineItemContext);
  }
}
