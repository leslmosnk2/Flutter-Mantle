// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_icon.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum ActionIconVariant {
  defaults,
  filled,
  light,
  outline,
  subtle,
  transparent,
  white,
}

@immutable
class ActionIconStyle {
  const ActionIconStyle({
    this.color,
    this.hoverBackground,
    this.hoverColor,
    this.dimension,
    this.background,
    this.radius,
  });

  final Color? color;
  final Color? hoverBackground;
  final Color? hoverColor;
  final double? dimension;
  final Color? background;
  final BorderRadiusGeometry? radius;

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

@immutable
class ActionIconState {
  const ActionIconState({this.disabled = false, this.loading = false});

  final bool disabled;
  final bool loading;
}

@immutable
class ActionIconContext {
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

  final BuildContext context;
  final ActionIconStyle style;
  final ActionIconState state;
  final ActionIconVariant variant;
  final Widget child;
  final VoidCallback onPressed;
  final bool disabled;
  final bool loading;
  final BorderRadiusGeometry radius;
  final String? size;
  final String? semanticLabel;
  final bool? autoContrast;
  final Gradient? gradient;
}

class ActionIconRoot {
  const ActionIconRoot(this._build);

  final Widget Function(ActionIconContext context) _build;

  Widget call(ActionIconContext context) => _build(context);
}

class ActionIconIcon {
  const ActionIconIcon(this._build);

  final Widget Function(ActionIconContext context) _build;

  Widget call(ActionIconContext context) => _build(context);
}

class ActionIconLoader {
  const ActionIconLoader(this._build);

  final Widget? Function(ActionIconContext context) _build;

  Widget? call(ActionIconContext context) => _build(context);
}

abstract class ActionIconDelegate extends ComponentDelegate {
  const ActionIconDelegate();

  Widget root(
    ActionIconContext context, {
    required ActionIconIcon icon,
    required ActionIconLoader loader,
  });

  Widget icon(ActionIconContext context);

  Widget? loader(ActionIconContext context);
}

class ActionIcon extends StatelessWidget {
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

  final ActionIconVariant variant;
  final Widget child;
  final VoidCallback onPressed;
  final bool? disabled;
  final bool? loading;
  final BorderRadiusGeometry? radius;
  final String? size;
  final String? semanticLabel;
  final bool? autoContrast;
  final Gradient? gradient;
  final ActionIconStyle? style;

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
