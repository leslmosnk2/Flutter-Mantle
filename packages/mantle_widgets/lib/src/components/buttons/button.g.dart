// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'button.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Button].
enum ButtonVariant {
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

/// Resolved visual values for [Button].
@immutable
class ButtonStyle {
  /// Creates a [ButtonStyle].
  const ButtonStyle({
    this.color,
    this.hoverBackground,
    this.hoverColor,
    this.height,
    this.textStyle,
    this.horizontalPadding,
    this.alignment,
    this.background,
    this.radius,
  });

  /// Foreground or accent color.
  final Color? color;

  /// Background color while hovered.
  final Color? hoverBackground;

  /// Foreground color while hovered.
  final Color? hoverColor;

  /// Height in logical pixels.
  final double? height;

  /// Text style overrides.
  final TextStyle? textStyle;

  /// Horizontal padding in logical pixels.
  final double? horizontalPadding;

  /// Content alignment inside the component.
  final AlignmentGeometry? alignment;

  /// Background color.
  final Color? background;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Returns a copy of this [ButtonStyle] with selected fields replaced.
  ButtonStyle copyWith({
    Color? color,
    Color? hoverBackground,
    Color? hoverColor,
    double? height,
    TextStyle? textStyle,
    double? horizontalPadding,
    AlignmentGeometry? alignment,
    Color? background,
    BorderRadiusGeometry? radius,
  }) {
    return ButtonStyle(
      color: color ?? this.color,
      hoverBackground: hoverBackground ?? this.hoverBackground,
      hoverColor: hoverColor ?? this.hoverColor,
      height: height ?? this.height,
      textStyle: textStyle ?? this.textStyle,
      horizontalPadding: horizontalPadding ?? this.horizontalPadding,
      alignment: alignment ?? this.alignment,
      background: background ?? this.background,
      radius: radius ?? this.radius,
    );
  }

  /// Merges [other] over this [ButtonStyle]; null fields keep this value.
  ButtonStyle mergeWith(ButtonStyle? other) {
    if (other == null) return this;
    return ButtonStyle(
      color: color ?? other.color,
      hoverBackground: hoverBackground ?? other.hoverBackground,
      hoverColor: hoverColor ?? other.hoverColor,
      height: height ?? other.height,
      textStyle: textStyle ?? other.textStyle,
      horizontalPadding: horizontalPadding ?? other.horizontalPadding,
      alignment: alignment ?? other.alignment,
      background: background ?? other.background,
      radius: radius ?? other.radius,
    );
  }
}

/// Resolved interaction state for [Button].
@immutable
class ButtonState {
  /// Creates a [ButtonState].
  const ButtonState({
    this.disabled = false,
    this.loading = false,
    this.grow = false,
    this.hasLeftSection = false,
    this.hasRightSection = false,
    this.sectionPosition,
  });

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether a loading indicator is shown.
  final bool loading;

  /// Whether the control expands to fill available width.
  final bool grow;

  /// Whether this has left section.
  final bool hasLeftSection;

  /// Whether this has right section.
  final bool hasRightSection;

  /// The section position.
  final SectionPosition? sectionPosition;
}

/// Values passed to [ButtonDelegate] slots during build.
@immutable
class ButtonContext {
  /// Creates a [ButtonContext].
  const ButtonContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.onPressed,
    required this.disabled,
    required this.grow,
    this.prefix,
    this.suffix,
    required this.loading,
    required this.radius,
    required this.alignment,
    this.size,
    this.autoContrast,
    this.gradient,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ButtonStyle style;

  /// Resolved interaction state for this build.
  final ButtonState state;

  /// The visual variant selected by the constructor.
  final ButtonVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Called when the control is pressed.
  final VoidCallback onPressed;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether the control expands to fill available width.
  final bool grow;

  /// Widget placed before the main content.
  final Widget? prefix;

  /// Widget placed after the main content.
  final Widget? suffix;

  /// Whether a loading indicator is shown.
  final bool loading;

  /// Corner radius.
  final BorderRadiusGeometry radius;

  /// Content alignment inside the component.
  final AlignmentGeometry alignment;

  /// Size token.
  final String? size;

  /// Whether to pick a contrasting foreground automatically.
  final bool? autoContrast;

  /// Gradient fill for this variant.
  final Gradient? gradient;
}

/// Builder for the root slot.
class ButtonRoot {
  /// Creates a [ButtonRoot] from a builder function.
  const ButtonRoot(this._build);

  final Widget Function(ButtonContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ButtonContext context) => _build(context);
}

/// Builder for the inner slot.
class ButtonInner {
  /// Creates a [ButtonInner] from a builder function.
  const ButtonInner(this._build);

  final Widget Function(ButtonContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ButtonContext context) => _build(context);
}

/// Builder for the loader slot.
class ButtonLoader {
  /// Creates a [ButtonLoader] from a builder function.
  const ButtonLoader(this._build);

  final Widget? Function(ButtonContext context) _build;

  /// Invokes this slot with [context].
  Widget? call(ButtonContext context) => _build(context);
}

/// Builder for the label slot.
class ButtonLabel {
  /// Creates a [ButtonLabel] from a builder function.
  const ButtonLabel(this._build);

  final Widget Function(ButtonContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ButtonContext context) => _build(context);
}

/// Builder for the section slot.
class ButtonSection {
  /// Creates a [ButtonSection] from a builder function.
  const ButtonSection(this._build);

  final Widget Function(ButtonContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ButtonContext context) => _build(context);
}

/// Theme-owned composition slots for [Button].
abstract class ButtonDelegate extends ComponentDelegate {
  /// Creates a [ButtonDelegate].
  const ButtonDelegate();

  /// Builds the composition root.
  Widget root(
    ButtonContext context, {
    required ButtonInner inner,
    required ButtonLoader loader,
  });

  /// Builds the inner slot.
  Widget inner(
    ButtonContext context, {
    required ButtonLabel label,
    required ButtonSection prefix,
    required ButtonSection suffix,
  });

  /// Builds the loader slot.
  Widget? loader(ButtonContext context);

  /// Builds the label slot.
  Widget label(ButtonContext context);

  /// Builds the section slot.
  Widget section(ButtonContext context);
}

/// A [Button] widget resolved through [ButtonDelegate].
class Button extends StatelessWidget {
  /// Creates a [Button].
  const Button({
    super.key,
    required this.child,
    required this.onPressed,
    this.disabled,
    this.grow,
    this.prefix,
    this.suffix,
    this.loading,
    this.radius,
    this.alignment,
    this.size,
    this.style,
  }) : variant = ButtonVariant.defaults,
       autoContrast = null,
       gradient = null;

  /// Creates a filled [Button].
  const Button.filled({
    super.key,
    required this.child,
    required this.onPressed,
    this.disabled,
    this.grow,
    this.prefix,
    this.suffix,
    this.loading,
    this.radius,
    this.alignment,
    this.size,
    this.autoContrast,
    this.gradient,
    this.style,
  }) : variant = ButtonVariant.filled;

  /// Creates a light [Button].
  const Button.light({
    super.key,
    required this.child,
    required this.onPressed,
    this.disabled,
    this.grow,
    this.prefix,
    this.suffix,
    this.loading,
    this.radius,
    this.alignment,
    this.size,
    this.style,
  }) : variant = ButtonVariant.light,
       autoContrast = null,
       gradient = null;

  /// Creates an outline [Button].
  const Button.outline({
    super.key,
    required this.child,
    required this.onPressed,
    this.disabled,
    this.grow,
    this.prefix,
    this.suffix,
    this.loading,
    this.radius,
    this.alignment,
    this.size,
    this.style,
  }) : variant = ButtonVariant.outline,
       autoContrast = null,
       gradient = null;

  /// Creates a subtle [Button].
  const Button.subtle({
    super.key,
    required this.child,
    required this.onPressed,
    this.disabled,
    this.grow,
    this.prefix,
    this.suffix,
    this.loading,
    this.radius,
    this.alignment,
    this.size,
    this.style,
  }) : variant = ButtonVariant.subtle,
       autoContrast = null,
       gradient = null;

  /// Creates a transparent [Button].
  const Button.transparent({
    super.key,
    required this.child,
    required this.onPressed,
    this.disabled,
    this.grow,
    this.prefix,
    this.suffix,
    this.loading,
    this.radius,
    this.alignment,
    this.size,
    this.style,
  }) : variant = ButtonVariant.transparent,
       autoContrast = null,
       gradient = null;

  /// Creates a white [Button].
  const Button.white({
    super.key,
    required this.child,
    required this.onPressed,
    this.disabled,
    this.grow,
    this.prefix,
    this.suffix,
    this.loading,
    this.radius,
    this.alignment,
    this.size,
    this.style,
  }) : variant = ButtonVariant.white,
       autoContrast = null,
       gradient = null;

  /// The visual variant selected by the constructor.
  final ButtonVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Called when the control is pressed.
  final VoidCallback onPressed;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Whether the control expands to fill available width.
  final bool? grow;

  /// Widget placed before the main content.
  final Widget? prefix;

  /// Widget placed after the main content.
  final Widget? suffix;

  /// Whether a loading indicator is shown.
  final bool? loading;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Content alignment inside the component.
  final AlignmentGeometry? alignment;

  /// Size token.
  final String? size;

  /// Whether to pick a contrasting foreground automatically.
  final bool? autoContrast;

  /// Gradient fill for this variant.
  final Gradient? gradient;

  /// Style overrides merged over theme defaults.
  final ButtonStyle? style;

  /// Resolves properties and builds via [ButtonDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedOnPressed = onPressed;
    final resolvedDisabled = disabled ?? false;
    final resolvedGrow = grow ?? false;
    final resolvedPrefix = prefix;
    final resolvedSuffix = suffix;
    final resolvedLoading = loading ?? false;
    final resolvedRadius =
        radius ?? style?.radius ?? _getDefaultRadius(context);
    final resolvedAlignment = alignment ?? style?.alignment ?? Alignment.center;
    final resolvedSize = size;
    final resolvedAutoContrast =
        autoContrast ?? (variant == ButtonVariant.filled ? false : null);
    final resolvedGradient = gradient;

    final fromProps = ButtonStyle(alignment: alignment, radius: radius);
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = ButtonStyle(
      color: merged.color,
      hoverBackground: merged.hoverBackground,
      hoverColor: merged.hoverColor,
      height: merged.height,
      textStyle: merged.textStyle,
      horizontalPadding: merged.horizontalPadding,
      alignment: merged.alignment ?? Alignment.center,
      background: merged.background,
      radius: merged.radius ?? _getDefaultRadius(context),
    );
    final resolvedState = ButtonState(
      disabled: resolvedDisabled,
      loading: resolvedLoading,
      grow: resolvedGrow,
      hasLeftSection: false,
      hasRightSection: false,
      sectionPosition: null,
    );
    final buttonContext = ButtonContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      onPressed: resolvedOnPressed,
      disabled: resolvedDisabled,
      grow: resolvedGrow,
      prefix: resolvedPrefix,
      suffix: resolvedSuffix,
      loading: resolvedLoading,
      radius: resolvedRadius,
      alignment: resolvedAlignment,
      size: resolvedSize,
      autoContrast: resolvedAutoContrast,
      gradient: resolvedGradient,
    );
    final delegate = MantleTheme.of(context).delegate<ButtonDelegate>();
    return delegate.root(
      buttonContext,
      inner: ButtonInner(
        (ctx) => delegate.inner(
          ctx,
          label: ButtonLabel((ctx) => delegate.label(ctx)),
          prefix: ButtonSection((ctx) => delegate.section(ctx)),
          suffix: ButtonSection((ctx) => delegate.section(ctx)),
        ),
      ),
      loader: ButtonLoader((ctx) => delegate.loader(ctx)),
    );
  }
}
