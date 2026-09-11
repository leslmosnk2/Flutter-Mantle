// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'theme_icon.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [ThemeIcon].
enum ThemeIconVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [ThemeIcon].
@immutable
class ThemeIconStyle {
  /// Creates a [ThemeIconStyle].
  const ThemeIconStyle();

  /// Returns a copy of this [ThemeIconStyle] with selected fields replaced.
  ThemeIconStyle copyWith() => this;

  /// Merges [other] over this [ThemeIconStyle]; null fields keep this value.
  ThemeIconStyle mergeWith(ThemeIconStyle? other) => this;
}

/// Resolved interaction state for [ThemeIcon].
@immutable
class ThemeIconState {
  /// Creates a [ThemeIconState].
  const ThemeIconState();
}

/// Values passed to [ThemeIconDelegate] slots during build.
@immutable
class ThemeIconContext {
  /// Creates a [ThemeIconContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ThemeIconStyle style;

  /// Resolved interaction state for this build.
  final ThemeIconState state;

  /// The visual variant selected by the constructor.
  final ThemeIconVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Size token.
  final String size;

  /// Foreground or accent color.
  final String? color;

  /// Visual appearance token.
  final String appearance;

  /// Corner radius.
  final BorderRadiusGeometry radius;

  /// Whether to pick a contrasting foreground automatically.
  final bool autoContrast;
}

/// Builder for the root slot.
class ThemeIconRoot {
  /// Creates a [ThemeIconRoot] from a builder function.
  const ThemeIconRoot(this._build);

  final Widget Function(ThemeIconContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ThemeIconContext context) => _build(context);
}

/// Theme-owned composition slots for [ThemeIcon].
abstract class ThemeIconDelegate extends ComponentDelegate {
  /// Creates a [ThemeIconDelegate].
  const ThemeIconDelegate();

  /// Builds the composition root.
  Widget root(ThemeIconContext context);
}

/// A [ThemeIcon] widget resolved through [ThemeIconDelegate].
class ThemeIcon extends StatelessWidget {
  /// Creates a [ThemeIcon].
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

  /// The visual variant selected by the constructor.
  final ThemeIconVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Size token.
  final String? size;

  /// Foreground or accent color.
  final String? color;

  /// Visual appearance token.
  final String? appearance;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Whether to pick a contrasting foreground automatically.
  final bool? autoContrast;

  /// Style overrides merged over theme defaults.
  final ThemeIconStyle? style;

  /// Resolves properties and builds via [ThemeIconDelegate].
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
