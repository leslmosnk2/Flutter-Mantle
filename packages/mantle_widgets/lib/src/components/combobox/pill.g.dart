// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pill.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Pill].
enum PillVariant {
  /// The default variant.
  defaults,

  /// The contrast variant.
  contrast,
}

/// Resolved visual values for [Pill].
@immutable
class PillStyle {
  /// Creates a [PillStyle].
  const PillStyle({
    this.background,
    this.color,
    this.height,
    this.fontSize,
    this.radius,
  });

  /// Background color.
  final Color? background;

  /// Foreground or accent color.
  final Color? color;

  /// Height in logical pixels.
  final double? height;

  /// Font size in logical pixels.
  final double? fontSize;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Returns a copy of this [PillStyle] with selected fields replaced.
  PillStyle copyWith({
    Color? background,
    Color? color,
    double? height,
    double? fontSize,
    BorderRadiusGeometry? radius,
  }) {
    return PillStyle(
      background: background ?? this.background,
      color: color ?? this.color,
      height: height ?? this.height,
      fontSize: fontSize ?? this.fontSize,
      radius: radius ?? this.radius,
    );
  }

  /// Merges [other] over this [PillStyle]; null fields keep this value.
  PillStyle mergeWith(PillStyle? other) {
    if (other == null) return this;
    return PillStyle(
      background: background ?? other.background,
      color: color ?? other.color,
      height: height ?? other.height,
      fontSize: fontSize ?? other.fontSize,
      radius: radius ?? other.radius,
    );
  }
}

/// Resolved interaction state for [Pill].
@immutable
class PillState {
  /// Creates a [PillState].
  const PillState({this.disabled = false, this.withRemoveButton = false});

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether a remove control is shown.
  final bool withRemoveButton;
}

/// Values passed to [PillDelegate] slots during build.
@immutable
class PillContext {
  /// Creates a [PillContext].
  const PillContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.withRemoveButton,
    this.onRemove,
    required this.disabled,
    this.size,
    required this.radius,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final PillStyle style;

  /// Resolved interaction state for this build.
  final PillState state;

  /// The visual variant selected by the constructor.
  final PillVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether a remove control is shown.
  final bool withRemoveButton;

  /// Called when an item is removed.
  final VoidCallback? onRemove;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class PillRoot {
  /// Creates a [PillRoot] from a builder function.
  const PillRoot(this._build);

  final Widget Function(PillContext context) _build;

  /// Invokes this slot with [context].
  Widget call(PillContext context) => _build(context);
}

/// Theme-owned composition slots for [Pill].
abstract class PillDelegate extends ComponentDelegate {
  /// Creates a [PillDelegate].
  const PillDelegate();

  /// Builds the composition root.
  Widget root(PillContext context);
}

/// A [Pill] widget resolved through [PillDelegate].
class Pill extends StatelessWidget {
  /// Creates a [Pill].
  const Pill({
    super.key,
    required this.child,
    this.withRemoveButton,
    this.onRemove,
    this.disabled,
    this.size,
    this.radius,
    this.style,
  }) : variant = PillVariant.defaults;

  /// Creates a contrast [Pill].
  const Pill.contrast({
    super.key,
    required this.child,
    this.withRemoveButton,
    this.onRemove,
    this.disabled,
    this.size,
    this.radius,
    this.style,
  }) : variant = PillVariant.contrast;

  /// The visual variant selected by the constructor.
  final PillVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether a remove control is shown.
  final bool? withRemoveButton;

  /// Called when an item is removed.
  final VoidCallback? onRemove;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final PillStyle? style;

  /// Resolves properties and builds via [PillDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedWithRemoveButton = withRemoveButton ?? false;
    final resolvedOnRemove = onRemove;
    final resolvedDisabled = disabled ?? false;
    final resolvedSize = size;
    final resolvedRadius =
        radius ?? style?.radius ?? defaultPillRadius(context);

    final fromProps = PillStyle(radius: radius);
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = PillStyle(
      background: merged.background,
      color: merged.color,
      height: merged.height,
      fontSize: merged.fontSize,
      radius: merged.radius ?? defaultPillRadius(context),
    );
    final resolvedState = PillState(
      disabled: resolvedDisabled,
      withRemoveButton: resolvedWithRemoveButton,
    );
    final pillContext = PillContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      withRemoveButton: resolvedWithRemoveButton,
      onRemove: resolvedOnRemove,
      disabled: resolvedDisabled,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<PillDelegate>();
    return delegate.root(pillContext);
  }
}

/// Visual variants of [PillGroup].
enum PillGroupVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [PillGroup].
@immutable
class PillGroupStyle {
  /// Creates a [PillGroupStyle].
  const PillGroupStyle();

  /// Returns a copy of this [PillGroupStyle] with selected fields replaced.
  PillGroupStyle copyWith() => this;

  /// Merges [other] over this [PillGroupStyle]; null fields keep this value.
  PillGroupStyle mergeWith(PillGroupStyle? other) => this;
}

/// Resolved interaction state for [PillGroup].
@immutable
class PillGroupState {
  /// Creates a [PillGroupState].
  const PillGroupState();
}

/// Values passed to [PillGroupDelegate] slots during build.
@immutable
class PillGroupContext {
  /// Creates a [PillGroupContext].
  const PillGroupContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    this.size,
    this.gap,
    required this.disabled,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final PillGroupStyle style;

  /// Resolved interaction state for this build.
  final PillGroupState state;

  /// The visual variant selected by the constructor.
  final PillGroupVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Size token.
  final String? size;

  /// Spacing token between items.
  final String? gap;

  /// Whether interaction is disabled.
  final bool disabled;
}

/// Builder for the root slot.
class PillGroupRoot {
  /// Creates a [PillGroupRoot] from a builder function.
  const PillGroupRoot(this._build);

  final Widget Function(PillGroupContext context) _build;

  /// Invokes this slot with [context].
  Widget call(PillGroupContext context) => _build(context);
}

/// Theme-owned composition slots for [PillGroup].
abstract class PillGroupDelegate extends ComponentDelegate {
  /// Creates a [PillGroupDelegate].
  const PillGroupDelegate();

  /// Builds the composition root.
  Widget root(PillGroupContext context);
}

/// A [PillGroup] widget resolved through [PillGroupDelegate].
class PillGroup extends StatelessWidget {
  /// Creates a [PillGroup].
  const PillGroup({
    super.key,
    required this.children,
    this.size,
    this.gap,
    this.disabled,
    this.style,
  }) : variant = PillGroupVariant.defaults;

  /// The visual variant selected by the constructor.
  final PillGroupVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Size token.
  final String? size;

  /// Spacing token between items.
  final String? gap;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Style overrides merged over theme defaults.
  final PillGroupStyle? style;

  /// Resolves properties and builds via [PillGroupDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedSize = size;
    final resolvedGap = gap;
    final resolvedDisabled = disabled ?? false;

    const fromProps = PillGroupStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = PillGroupState();
    final pillGroupContext = PillGroupContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      size: resolvedSize,
      gap: resolvedGap,
      disabled: resolvedDisabled,
    );
    final delegate = MantleTheme.of(context).delegate<PillGroupDelegate>();
    return delegate.root(pillGroupContext);
  }
}
