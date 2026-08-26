// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'button.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum ButtonVariant {
  defaults,
  filled,
  light,
  outline,
  subtle,
  transparent,
  white,
}

@immutable
class ButtonStyle {
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

  final Color? color;
  final Color? hoverBackground;
  final Color? hoverColor;
  final double? height;
  final TextStyle? textStyle;
  final double? horizontalPadding;
  final AlignmentGeometry? alignment;
  final Color? background;
  final BorderRadiusGeometry? radius;

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

@immutable
class ButtonState {
  const ButtonState({
    this.disabled = false,
    this.loading = false,
    this.grow = false,
    this.hasLeftSection = false,
    this.hasRightSection = false,
    this.sectionPosition,
  });

  final bool disabled;
  final bool loading;
  final bool grow;
  final bool hasLeftSection;
  final bool hasRightSection;
  final SectionPosition? sectionPosition;
}

@immutable
class ButtonContext {
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

  final BuildContext context;
  final ButtonStyle style;
  final ButtonState state;
  final ButtonVariant variant;
  final Widget child;
  final VoidCallback onPressed;
  final bool disabled;
  final bool grow;
  final Widget? prefix;
  final Widget? suffix;
  final bool loading;
  final BorderRadiusGeometry radius;
  final AlignmentGeometry alignment;
  final String? size;
  final bool? autoContrast;
  final Gradient? gradient;
}

class ButtonRoot {
  const ButtonRoot(this._build);

  final Widget Function(ButtonContext context) _build;

  Widget call(ButtonContext context) => _build(context);
}

class ButtonInner {
  const ButtonInner(this._build);

  final Widget Function(ButtonContext context) _build;

  Widget call(ButtonContext context) => _build(context);
}

class ButtonLoader {
  const ButtonLoader(this._build);

  final Widget? Function(ButtonContext context) _build;

  Widget? call(ButtonContext context) => _build(context);
}

class ButtonLabel {
  const ButtonLabel(this._build);

  final Widget Function(ButtonContext context) _build;

  Widget call(ButtonContext context) => _build(context);
}

class ButtonSection {
  const ButtonSection(this._build);

  final Widget Function(ButtonContext context) _build;

  Widget call(ButtonContext context) => _build(context);
}

abstract class ButtonDelegate extends ComponentDelegate {
  const ButtonDelegate();

  Widget root(
    ButtonContext context, {
    required ButtonInner inner,
    required ButtonLoader loader,
  });

  Widget inner(
    ButtonContext context, {
    required ButtonLabel label,
    required ButtonSection prefix,
    required ButtonSection suffix,
  });

  Widget? loader(ButtonContext context);

  Widget label(ButtonContext context);

  Widget section(ButtonContext context);
}

class Button extends StatelessWidget {
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

  final ButtonVariant variant;
  final Widget child;
  final VoidCallback onPressed;
  final bool? disabled;
  final bool? grow;
  final Widget? prefix;
  final Widget? suffix;
  final bool? loading;
  final BorderRadiusGeometry? radius;
  final AlignmentGeometry? alignment;
  final String? size;
  final bool? autoContrast;
  final Gradient? gradient;
  final ButtonStyle? style;

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
