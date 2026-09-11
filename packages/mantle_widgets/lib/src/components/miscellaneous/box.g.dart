// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'box.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Box].
enum BoxVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Box].
@immutable
class BoxStyle {
  /// Creates a [BoxStyle].
  const BoxStyle();

  /// Returns a copy of this [BoxStyle] with selected fields replaced.
  BoxStyle copyWith() => this;

  /// Merges [other] over this [BoxStyle]; null fields keep this value.
  BoxStyle mergeWith(BoxStyle? other) => this;
}

/// Resolved interaction state for [Box].
@immutable
class BoxState {
  /// Creates a [BoxState].
  const BoxState();
}

/// Values passed to [BoxDelegate] slots during build.
@immutable
class BoxContext {
  /// Creates a [BoxContext].
  const BoxContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.child,
    this.padding,
    this.margin,
    this.color,
    this.radius,
    this.width,
    this.height,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final BoxStyle style;

  /// Resolved interaction state for this build.
  final BoxState state;

  /// The visual variant selected by the constructor.
  final BoxVariant variant;

  /// The primary child widget.
  final Widget? child;

  /// Inner spacing.
  final EdgeInsetsGeometry? padding;

  /// Outer spacing.
  final EdgeInsetsGeometry? margin;

  /// Foreground or accent color.
  final Color? color;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Width in logical pixels.
  final double? width;

  /// Height in logical pixels.
  final double? height;
}

/// Builder for the root slot.
class BoxRoot {
  /// Creates a [BoxRoot] from a builder function.
  const BoxRoot(this._build);

  final Widget Function(BoxContext context) _build;

  /// Invokes this slot with [context].
  Widget call(BoxContext context) => _build(context);
}

/// Theme-owned composition slots for [Box].
abstract class BoxDelegate extends ComponentDelegate {
  /// Creates a [BoxDelegate].
  const BoxDelegate();

  /// Builds the composition root.
  Widget root(BoxContext context);
}

/// A [Box] widget resolved through [BoxDelegate].
class Box extends StatelessWidget {
  /// Creates a [Box].
  const Box({
    super.key,
    this.child,
    this.padding,
    this.margin,
    this.color,
    this.radius,
    this.width,
    this.height,
    this.style,
  }) : variant = BoxVariant.defaults;

  /// The visual variant selected by the constructor.
  final BoxVariant variant;

  /// The primary child widget.
  final Widget? child;

  /// Inner spacing.
  final EdgeInsetsGeometry? padding;

  /// Outer spacing.
  final EdgeInsetsGeometry? margin;

  /// Foreground or accent color.
  final Color? color;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Width in logical pixels.
  final double? width;

  /// Height in logical pixels.
  final double? height;

  /// Style overrides merged over theme defaults.
  final BoxStyle? style;

  /// Resolves properties and builds via [BoxDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedPadding = padding;
    final resolvedMargin = margin;
    final resolvedColor = color;
    final resolvedRadius = radius;
    final resolvedWidth = width;
    final resolvedHeight = height;

    const fromProps = BoxStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = BoxState();
    final boxContext = BoxContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      padding: resolvedPadding,
      margin: resolvedMargin,
      color: resolvedColor,
      radius: resolvedRadius,
      width: resolvedWidth,
      height: resolvedHeight,
    );
    final delegate = MantleTheme.of(context).delegate<BoxDelegate>();
    return delegate.root(boxContext);
  }
}
