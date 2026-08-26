// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_icon.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum ThemeIconVariant { defaults }

@immutable
class ThemeIconStyle {
  const ThemeIconStyle();

  ThemeIconStyle copyWith() => this;

  ThemeIconStyle mergeWith(ThemeIconStyle? other) => this;
}

@immutable
class ThemeIconState {
  const ThemeIconState();
}

@immutable
class ThemeIconContext {
  const ThemeIconContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.size,
    this.color,
    required this.appearance,
    required this.radius,
    required this.autoContrast,
  });

  final BuildContext context;
  final ThemeIconStyle style;
  final ThemeIconState state;
  final ThemeIconVariant variant;
  final Widget child;
  final String size;
  final String? color;
  final String appearance;
  final BorderRadiusGeometry radius;
  final bool autoContrast;
}

class ThemeIconRoot {
  const ThemeIconRoot(this._build);

  final Widget Function(ThemeIconContext context) _build;

  Widget call(ThemeIconContext context) => _build(context);
}

abstract class ThemeIconDelegate extends ComponentDelegate {
  const ThemeIconDelegate();

  Widget root(ThemeIconContext context);
}

class ThemeIcon extends StatelessWidget {
  const ThemeIcon({
    super.key,
    required this.child,
    this.size,
    this.color,
    this.appearance,
    this.radius,
    this.autoContrast,
    this.style,
  }) : variant = ThemeIconVariant.defaults;

  final ThemeIconVariant variant;
  final Widget child;
  final String? size;
  final String? color;
  final String? appearance;
  final BorderRadiusGeometry? radius;
  final bool? autoContrast;
  final ThemeIconStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedSize = size ?? 'md';
    final resolvedColor = color;
    final resolvedAppearance = appearance ?? 'filled';
    final resolvedRadius = radius ?? dataDisplayDefaultRadius(context);
    final resolvedAutoContrast = autoContrast ?? false;

    const fromProps = ThemeIconStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ThemeIconState();
    final themeIconContext = ThemeIconContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      size: resolvedSize,
      color: resolvedColor,
      appearance: resolvedAppearance,
      radius: resolvedRadius,
      autoContrast: resolvedAutoContrast,
    );
    final delegate = MantleTheme.of(context).delegate<ThemeIconDelegate>();
    return delegate.root(themeIconContext);
  }
}
