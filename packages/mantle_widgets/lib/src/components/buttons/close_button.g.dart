// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'close_button.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum CloseButtonVariant { defaults, subtle, transparent }

@immutable
class CloseButtonStyle {
  const CloseButtonStyle({
    this.color,
    this.hoverBackground,
    this.dimension,
    this.radius,
  });

  final Color? color;
  final Color? hoverBackground;
  final double? dimension;
  final BorderRadiusGeometry? radius;

  CloseButtonStyle copyWith({
    Color? color,
    Color? hoverBackground,
    double? dimension,
    BorderRadiusGeometry? radius,
  }) {
    return CloseButtonStyle(
      color: color ?? this.color,
      hoverBackground: hoverBackground ?? this.hoverBackground,
      dimension: dimension ?? this.dimension,
      radius: radius ?? this.radius,
    );
  }

  CloseButtonStyle mergeWith(CloseButtonStyle? other) {
    if (other == null) return this;
    return CloseButtonStyle(
      color: color ?? other.color,
      hoverBackground: hoverBackground ?? other.hoverBackground,
      dimension: dimension ?? other.dimension,
      radius: radius ?? other.radius,
    );
  }
}

@immutable
class CloseButtonState {
  const CloseButtonState({this.disabled = false});

  final bool disabled;
}

@immutable
class CloseButtonContext {
  const CloseButtonContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.onPressed,
    required this.disabled,
    required this.radius,
    this.size,
    this.iconSize,
    this.icon,
    this.child,
    this.semanticLabel,
  });

  final BuildContext context;
  final CloseButtonStyle style;
  final CloseButtonState state;
  final CloseButtonVariant variant;
  final VoidCallback onPressed;
  final bool disabled;
  final BorderRadiusGeometry radius;
  final String? size;
  final double? iconSize;
  final Widget? icon;
  final Widget? child;
  final String? semanticLabel;
}

class CloseButtonRoot {
  const CloseButtonRoot(this._build);

  final Widget Function(CloseButtonContext context) _build;

  Widget call(CloseButtonContext context) => _build(context);
}

abstract class CloseButtonDelegate extends ComponentDelegate {
  const CloseButtonDelegate();

  Widget root(CloseButtonContext context);
}

class CloseButton extends StatelessWidget {
  const CloseButton({
    super.key,
    required this.onPressed,
    this.disabled,
    this.radius,
    this.size,
    this.iconSize,
    this.icon,
    this.child,
    this.semanticLabel,
    this.style,
  }) : variant = CloseButtonVariant.defaults;

  const CloseButton.subtle({
    super.key,
    required this.onPressed,
    this.disabled,
    this.radius,
    this.size,
    this.iconSize,
    this.icon,
    this.child,
    this.semanticLabel,
    this.style,
  }) : variant = CloseButtonVariant.subtle;

  const CloseButton.transparent({
    super.key,
    required this.onPressed,
    this.disabled,
    this.radius,
    this.size,
    this.iconSize,
    this.icon,
    this.child,
    this.semanticLabel,
    this.style,
  }) : variant = CloseButtonVariant.transparent;

  final CloseButtonVariant variant;
  final VoidCallback onPressed;
  final bool? disabled;
  final BorderRadiusGeometry? radius;
  final String? size;
  final double? iconSize;
  final Widget? icon;
  final Widget? child;
  final String? semanticLabel;
  final CloseButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedOnPressed = onPressed;
    final resolvedDisabled = disabled ?? false;
    final resolvedRadius =
        radius ?? style?.radius ?? _getDefaultRadius(context);
    final resolvedSize = size;
    final resolvedIconSize = iconSize;
    final resolvedIcon = icon;
    final resolvedChild = child;
    final resolvedSemanticLabel = semanticLabel;

    final fromProps = CloseButtonStyle(radius: radius);
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = CloseButtonStyle(
      color: merged.color,
      hoverBackground: merged.hoverBackground,
      dimension: merged.dimension,
      radius: merged.radius ?? _getDefaultRadius(context),
    );
    final resolvedState = CloseButtonState(disabled: resolvedDisabled);
    final closeButtonContext = CloseButtonContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      onPressed: resolvedOnPressed,
      disabled: resolvedDisabled,
      radius: resolvedRadius,
      size: resolvedSize,
      iconSize: resolvedIconSize,
      icon: resolvedIcon,
      child: resolvedChild,
      semanticLabel: resolvedSemanticLabel,
    );
    final delegate = MantleTheme.of(context).delegate<CloseButtonDelegate>();
    return delegate.root(closeButtonContext);
  }
}
