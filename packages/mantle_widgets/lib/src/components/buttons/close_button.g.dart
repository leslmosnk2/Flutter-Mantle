// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'close_button.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [CloseButton].
enum CloseButtonVariant {
  /// The default variant.
  defaults,

  /// The subtle variant.
  subtle,

  /// The transparent variant.
  transparent,
}

/// Resolved visual values for [CloseButton].
@immutable
class CloseButtonStyle {
  /// Creates a [CloseButtonStyle].
  const CloseButtonStyle({
    this.color,
    this.hoverBackground,
    this.dimension,
    this.radius,
  });

  /// Foreground or accent color.
  final Color? color;

  /// Background color while hovered.
  final Color? hoverBackground;

  /// The dimension.
  final double? dimension;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Returns a copy of this [CloseButtonStyle] with selected fields replaced.
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

  /// Merges [other] over this [CloseButtonStyle]; null fields keep this value.
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

/// Resolved interaction state for [CloseButton].
@immutable
class CloseButtonState {
  /// Creates a [CloseButtonState].
  const CloseButtonState({this.disabled = false});

  /// Whether interaction is disabled.
  final bool disabled;
}

/// Values passed to [CloseButtonDelegate] slots during build.
@immutable
class CloseButtonContext {
  /// Creates a [CloseButtonContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final CloseButtonStyle style;

  /// Resolved interaction state for this build.
  final CloseButtonState state;

  /// The visual variant selected by the constructor.
  final CloseButtonVariant variant;

  /// Called when the control is pressed.
  final VoidCallback onPressed;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Corner radius.
  final BorderRadiusGeometry radius;

  /// Size token.
  final String? size;

  /// Icon size in logical pixels.
  final double? iconSize;

  /// Leading or decorative icon.
  final Widget? icon;

  /// The primary child widget.
  final Widget? child;

  /// The semantic label.
  final String? semanticLabel;
}

/// Builder for the root slot.
class CloseButtonRoot {
  /// Creates a [CloseButtonRoot] from a builder function.
  const CloseButtonRoot(this._build);

  final Widget Function(CloseButtonContext context) _build;

  /// Invokes this slot with [context].
  Widget call(CloseButtonContext context) => _build(context);
}

/// Theme-owned composition slots for [CloseButton].
abstract class CloseButtonDelegate extends ComponentDelegate {
  /// Creates a [CloseButtonDelegate].
  const CloseButtonDelegate();

  /// Builds the composition root.
  Widget root(CloseButtonContext context);
}

/// A [CloseButton] widget resolved through [CloseButtonDelegate].
class CloseButton extends StatelessWidget {
  /// Creates a [CloseButton].
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

  /// Creates a subtle [CloseButton].
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

  /// Creates a transparent [CloseButton].
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

  /// The visual variant selected by the constructor.
  final CloseButtonVariant variant;

  /// Called when the control is pressed.
  final VoidCallback onPressed;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Size token.
  final String? size;

  /// Icon size in logical pixels.
  final double? iconSize;

  /// Leading or decorative icon.
  final Widget? icon;

  /// The primary child widget.
  final Widget? child;

  /// The semantic label.
  final String? semanticLabel;

  /// Style overrides merged over theme defaults.
  final CloseButtonStyle? style;

  /// Resolves properties and builds via [CloseButtonDelegate].
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
