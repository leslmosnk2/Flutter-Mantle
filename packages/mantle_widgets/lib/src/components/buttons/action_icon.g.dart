// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_icon.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [ActionIcon].
enum ActionIconVariant {
  /// The default variant.
  defaults,

  /// The filled variant.
  filled,

  /// The light variant.
  light,

  /// The outline variant.
  outline,

  /// The subtle variant.
  subtle,

  /// The transparent variant.
  transparent,

  /// The white variant.
  white,
}

/// Resolved visual values for [ActionIcon].
@immutable
class ActionIconStyle {
  /// Creates an [ActionIconStyle].
  const ActionIconStyle({
    this.color,
    this.hoverBackground,
    this.hoverColor,
    this.dimension,
    this.background,
    this.radius,
  });

  /// Foreground or accent color.
  final Color? color;

  /// Background color while hovered.
  final Color? hoverBackground;

  /// Foreground color while hovered.
  final Color? hoverColor;

  /// The dimension.
  final double? dimension;

  /// Background color.
  final Color? background;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Returns a copy of this [ActionIconStyle] with selected fields replaced.
  ActionIconStyle copyWith({
    Color? color,
    Color? hoverBackground,
    Color? hoverColor,
    double? dimension,
    Color? background,
    BorderRadiusGeometry? radius,
  }) {
    return ActionIconStyle(
      color: color ?? this.color,
      hoverBackground: hoverBackground ?? this.hoverBackground,
      hoverColor: hoverColor ?? this.hoverColor,
      dimension: dimension ?? this.dimension,
      background: background ?? this.background,
      radius: radius ?? this.radius,
    );
  }

  /// Merges [other] over this [ActionIconStyle]; null fields keep this value.
  ActionIconStyle mergeWith(ActionIconStyle? other) {
    if (other == null) return this;
    return ActionIconStyle(
      color: color ?? other.color,
      hoverBackground: hoverBackground ?? other.hoverBackground,
      hoverColor: hoverColor ?? other.hoverColor,
      dimension: dimension ?? other.dimension,
      background: background ?? other.background,
      radius: radius ?? other.radius,
    );
  }
}

/// Resolved interaction state for [ActionIcon].
@immutable
class ActionIconState {
  /// Creates an [ActionIconState].
  const ActionIconState({this.disabled = false, this.loading = false});

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether a loading indicator is shown.
  final bool loading;
}

/// Values passed to [ActionIconDelegate] slots during build.
@immutable
class ActionIconContext {
  /// Creates an [ActionIconContext].
  const ActionIconContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.onPressed,
    required this.disabled,
    required this.loading,
    required this.radius,
    this.size,
    this.semanticLabel,
    this.autoContrast,
    this.gradient,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ActionIconStyle style;

  /// Resolved interaction state for this build.
  final ActionIconState state;

  /// The visual variant selected by the constructor.
  final ActionIconVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Called when the control is pressed.
  final VoidCallback onPressed;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether a loading indicator is shown.
  final bool loading;

  /// Corner radius.
  final BorderRadiusGeometry radius;

  /// Size token.
  final String? size;

  /// The semantic label.
  final String? semanticLabel;

  /// Whether to pick a contrasting foreground automatically.
  final bool? autoContrast;

  /// Gradient fill for this variant.
  final Gradient? gradient;
}

/// Builder for the root slot.
class ActionIconRoot {
  /// Creates an [ActionIconRoot] from a builder function.
  const ActionIconRoot(this._build);

  final Widget Function(ActionIconContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ActionIconContext context) => _build(context);
}

/// Builder for the icon slot.
class ActionIconIcon {
  /// Creates an [ActionIconIcon] from a builder function.
  const ActionIconIcon(this._build);

  final Widget Function(ActionIconContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ActionIconContext context) => _build(context);
}

/// Builder for the loader slot.
class ActionIconLoader {
  /// Creates an [ActionIconLoader] from a builder function.
  const ActionIconLoader(this._build);

  final Widget? Function(ActionIconContext context) _build;

  /// Invokes this slot with [context].
  Widget? call(ActionIconContext context) => _build(context);
}

/// Theme-owned composition slots for [ActionIcon].
abstract class ActionIconDelegate extends ComponentDelegate {
  /// Creates an [ActionIconDelegate].
  const ActionIconDelegate();

  /// Builds the composition root.
  Widget root(
    ActionIconContext context, {
    required ActionIconIcon icon,
    required ActionIconLoader loader,
  });

  /// Builds the icon slot.
  Widget icon(ActionIconContext context);

  /// Builds the loader slot.
  Widget? loader(ActionIconContext context);
}

/// An [ActionIcon] widget resolved through [ActionIconDelegate].
class ActionIcon extends StatelessWidget {
  /// Creates an [ActionIcon].
  const ActionIcon({
    super.key,
    required this.child,
    required this.onPressed,
    this.disabled,
    this.loading,
    this.radius,
    this.size,
    this.semanticLabel,
    this.style,
  }) : variant = ActionIconVariant.defaults,
       autoContrast = null,
       gradient = null;

  /// Creates a filled [ActionIcon].
  const ActionIcon.filled({
    super.key,
    required this.child,
    required this.onPressed,
    this.disabled,
    this.loading,
    this.radius,
    this.size,
    this.semanticLabel,
    this.autoContrast,
    this.gradient,
    this.style,
  }) : variant = ActionIconVariant.filled;

  /// Creates a light [ActionIcon].
  const ActionIcon.light({
    super.key,
    required this.child,
    required this.onPressed,
    this.disabled,
    this.loading,
    this.radius,
    this.size,
    this.semanticLabel,
    this.style,
  }) : variant = ActionIconVariant.light,
       autoContrast = null,
       gradient = null;

  /// Creates an outline [ActionIcon].
  const ActionIcon.outline({
    super.key,
    required this.child,
    required this.onPressed,
    this.disabled,
    this.loading,
    this.radius,
    this.size,
    this.semanticLabel,
    this.style,
  }) : variant = ActionIconVariant.outline,
       autoContrast = null,
       gradient = null;

  /// Creates a subtle [ActionIcon].
  const ActionIcon.subtle({
    super.key,
    required this.child,
    required this.onPressed,
    this.disabled,
    this.loading,
    this.radius,
    this.size,
    this.semanticLabel,
    this.style,
  }) : variant = ActionIconVariant.subtle,
       autoContrast = null,
       gradient = null;

  /// Creates a transparent [ActionIcon].
  const ActionIcon.transparent({
    super.key,
    required this.child,
    required this.onPressed,
    this.disabled,
    this.loading,
    this.radius,
    this.size,
    this.semanticLabel,
    this.style,
  }) : variant = ActionIconVariant.transparent,
       autoContrast = null,
       gradient = null;

  /// Creates a white [ActionIcon].
  const ActionIcon.white({
    super.key,
    required this.child,
    required this.onPressed,
    this.disabled,
    this.loading,
    this.radius,
    this.size,
    this.semanticLabel,
    this.style,
  }) : variant = ActionIconVariant.white,
       autoContrast = null,
       gradient = null;

  /// The visual variant selected by the constructor.
  final ActionIconVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Called when the control is pressed.
  final VoidCallback onPressed;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Whether a loading indicator is shown.
  final bool? loading;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Size token.
  final String? size;

  /// The semantic label.
  final String? semanticLabel;

  /// Whether to pick a contrasting foreground automatically.
  final bool? autoContrast;

  /// Gradient fill for this variant.
  final Gradient? gradient;

  /// Style overrides merged over theme defaults.
  final ActionIconStyle? style;

  /// Resolves properties and builds via [ActionIconDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedOnPressed = onPressed;
    final resolvedDisabled = disabled ?? false;
    final resolvedLoading = loading ?? false;
    final resolvedRadius =
        radius ?? style?.radius ?? _getDefaultRadius(context);
    final resolvedSize = size;
    final resolvedSemanticLabel = semanticLabel;
    final resolvedAutoContrast =
        autoContrast ?? (variant == ActionIconVariant.filled ? false : null);
    final resolvedGradient = gradient;

    final fromProps = ActionIconStyle(radius: radius);
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = ActionIconStyle(
      color: merged.color,
      hoverBackground: merged.hoverBackground,
      hoverColor: merged.hoverColor,
      dimension: merged.dimension,
      background: merged.background,
      radius: merged.radius ?? _getDefaultRadius(context),
    );
    final resolvedState = ActionIconState(
      disabled: resolvedDisabled,
      loading: resolvedLoading,
    );
    final actionIconContext = ActionIconContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      onPressed: resolvedOnPressed,
      disabled: resolvedDisabled,
      loading: resolvedLoading,
      radius: resolvedRadius,
      size: resolvedSize,
      semanticLabel: resolvedSemanticLabel,
      autoContrast: resolvedAutoContrast,
      gradient: resolvedGradient,
    );
    final delegate = MantleTheme.of(context).delegate<ActionIconDelegate>();
    return delegate.root(
      actionIconContext,
      icon: ActionIconIcon((ctx) => delegate.icon(ctx)),
      loader: ActionIconLoader((ctx) => delegate.loader(ctx)),
    );
  }
}
