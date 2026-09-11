// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timeline.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Timeline].
enum TimelineVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Timeline].
@immutable
class TimelineStyle {
  /// Creates a [TimelineStyle].
  const TimelineStyle();

  /// Returns a copy of this [TimelineStyle] with selected fields replaced.
  TimelineStyle copyWith() => this;

  /// Merges [other] over this [TimelineStyle]; null fields keep this value.
  TimelineStyle mergeWith(TimelineStyle? other) => this;
}

/// Resolved interaction state for [Timeline].
@immutable
class TimelineState {
  /// Creates a [TimelineState].
  const TimelineState();
}

/// Values passed to [TimelineDelegate] slots during build.
@immutable
class TimelineContext {
  /// Creates a [TimelineContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final TimelineStyle style;

  /// Resolved interaction state for this build.
  final TimelineState state;

  /// The visual variant selected by the constructor.
  final TimelineVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Whether this item is the active option.
  final int active;

  /// Foreground or accent color.
  final String? color;

  /// The bullet size.
  final double bulletSize;

  /// The line width.
  final double lineWidth;

  /// Text alignment.
  final TimelineAlign align;

  /// Whether reverse active.
  final bool reverseActive;

  /// Corner radius.
  final BorderRadiusGeometry radius;

  /// Whether to pick a contrasting foreground automatically.
  final bool autoContrast;
}

/// Builder for the root slot.
class TimelineRoot {
  /// Creates a [TimelineRoot] from a builder function.
  const TimelineRoot(this._build);

  final Widget Function(TimelineContext context) _build;

  /// Invokes this slot with [context].
  Widget call(TimelineContext context) => _build(context);
}

/// Theme-owned composition slots for [Timeline].
abstract class TimelineDelegate extends ComponentDelegate {
  /// Creates a [TimelineDelegate].
  const TimelineDelegate();

  /// Builds the composition root.
  Widget root(TimelineContext context);
}

/// A [Timeline] widget resolved through [TimelineDelegate].
class Timeline extends StatelessWidget {
  /// Creates a [Timeline].
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

  /// The visual variant selected by the constructor.
  final TimelineVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Whether this item is the active option.
  final int? active;

  /// Foreground or accent color.
  final String? color;

  /// The bullet size.
  final double? bulletSize;

  /// The line width.
  final double? lineWidth;

  /// Text alignment.
  final TimelineAlign? align;

  /// Whether reverse active.
  final bool? reverseActive;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Whether to pick a contrasting foreground automatically.
  final bool? autoContrast;

  /// Style overrides merged over theme defaults.
  final TimelineStyle? style;

  /// Resolves properties and builds via [TimelineDelegate].
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

/// Visual variants of [TimelineItem].
enum TimelineItemVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [TimelineItem].
@immutable
class TimelineItemStyle {
  /// Creates a [TimelineItemStyle].
  const TimelineItemStyle();

  /// Returns a copy of this [TimelineItemStyle] with selected fields replaced.
  TimelineItemStyle copyWith() => this;

  /// Merges [other] over this [TimelineItemStyle]; null fields keep this value.
  TimelineItemStyle mergeWith(TimelineItemStyle? other) => this;
}

/// Resolved interaction state for [TimelineItem].
@immutable
class TimelineItemState {
  /// Creates a [TimelineItemState].
  const TimelineItemState();
}

/// Values passed to [TimelineItemDelegate] slots during build.
@immutable
class TimelineItemContext {
  /// Creates a [TimelineItemContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final TimelineItemStyle style;

  /// Resolved interaction state for this build.
  final TimelineItemState state;

  /// The visual variant selected by the constructor.
  final TimelineItemVariant variant;

  /// The title.
  final Widget? title;

  /// The primary child widget.
  final Widget? child;

  /// The bullet.
  final Widget? bullet;

  /// Foreground or accent color.
  final String? color;

  /// The line variant.
  final TimelineLineVariant lineVariant;

  /// The index.
  final int? index;
}

/// Builder for the root slot.
class TimelineItemRoot {
  /// Creates a [TimelineItemRoot] from a builder function.
  const TimelineItemRoot(this._build);

  final Widget Function(TimelineItemContext context) _build;

  /// Invokes this slot with [context].
  Widget call(TimelineItemContext context) => _build(context);
}

/// Theme-owned composition slots for [TimelineItem].
abstract class TimelineItemDelegate extends ComponentDelegate {
  /// Creates a [TimelineItemDelegate].
  const TimelineItemDelegate();

  /// Builds the composition root.
  Widget root(TimelineItemContext context);
}

/// A [TimelineItem] widget resolved through [TimelineItemDelegate].
class TimelineItem extends StatelessWidget {
  /// Creates a [TimelineItem].
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

  /// The visual variant selected by the constructor.
  final TimelineItemVariant variant;

  /// The title.
  final Widget? title;

  /// The primary child widget.
  final Widget? child;

  /// The bullet.
  final Widget? bullet;

  /// Foreground or accent color.
  final String? color;

  /// The line variant.
  final TimelineLineVariant? lineVariant;

  /// The index.
  final int? index;

  /// Style overrides merged over theme defaults.
  final TimelineItemStyle? style;

  /// Resolves properties and builds via [TimelineItemDelegate].
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
