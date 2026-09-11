import 'dart:ui' show Color, lerpDouble;

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_core/src/components/defaults.dart';
import 'package:mantle_core/src/components/delegate.dart';
import 'package:mantle_core/src/components/errors.dart';
import 'package:mantle_core/src/components/registry.dart';
import 'package:mantle_core/src/log/mantle_log.dart';
import 'package:mantle_core/src/theme/color_scheme.dart';
import 'package:mantle_core/src/theme/gradient.dart';
import 'package:mantle_core/src/theme/mantle_provider.dart';
import 'package:mantle_core/src/theme/variant_colors.dart';
import 'package:mantle_core/src/tokens/breakpoint.dart';
import 'package:mantle_core/src/tokens/color.dart';
import 'package:mantle_core/src/tokens/colors.dart';
import 'package:mantle_core/src/tokens/icons.dart';
import 'package:mantle_core/src/tokens/radius.dart';
import 'package:mantle_core/src/tokens/shade.dart';
import 'package:mantle_core/src/tokens/shadow.dart';
import 'package:mantle_core/src/tokens/size.dart';
import 'package:mantle_core/src/tokens/spacing.dart';
import 'package:mantle_core/src/tokens/token_group.dart';
import 'package:mantle_core/src/tokens/typography.dart';

T _snap<T>(T a, T b, double t) => t < 0.5 ? a : b;

const _Keep _keep = _Keep();

class _Keep {
  const _Keep();
}

/// Immutable bundle of design tokens, component delegates, and Mantine-like
/// theme scalars.
@immutable
class MantleTheme with Diagnosticable implements MantleTokenGroup {
  /// Creates a theme. Omitted token groups default to empty sentinels so a
  /// nested [MantleProvider] can override a single aspect. Unset scalars
  /// inherit from the parent theme (or Mantine defaults at the root).
  const MantleTheme({
    MantleColors colors = const MantleColors.empty(),
    MantleIcons icons = const MantleIcons.empty(),
    MantleTypography typography = const MantleTypography.empty(),
    MantleSpacing spacing = const MantleSpacing.empty(),
    MantleRadius radius = const MantleRadius.empty(),
    MantleShadow shadows = const MantleShadow.empty(),
    MantleBreakpoint breakpoints = const MantleBreakpoint.empty(),
    MantleSpacing Function(BuildContext context)? spacingBuilder,
    MantleRadius Function(BuildContext context)? radiusBuilder,
    MantleBreakpoint Function(BuildContext context)? breakpointsBuilder,
    DelegateRegistry components = const DelegateRegistry.empty(),
    ComponentDefaults componentDefaults = const ComponentDefaults.empty(),
    Map<Type, MantleTokenGroup> extensions = const {},
    String? debugName,
    String? primaryColor,
    MantleShade? primaryShade,
    MantleSize? defaultRadius,
    MantleGradient? defaultGradient,
    MantleFocusRing? focusRing,
    double? scale,
    Color? white,
    Color? black,
    bool? autoContrast,
    double? luminanceThreshold,
    bool? respectReducedMotion,
    MantleCursorType? cursorType,
    VariantColorsResolver? variantColorResolver,
    MantleTheme? baseline,
  }) : this._(
         colors: colors,
         icons: icons,
         typography: typography,
         spacing: spacing,
         radius: radius,
         shadows: shadows,
         breakpoints: breakpoints,
         spacingBuilder: spacingBuilder,
         radiusBuilder: radiusBuilder,
         breakpointsBuilder: breakpointsBuilder,
         components: components,
         componentDefaults: componentDefaults,
         extensions: extensions,
         debugName: debugName,
         primaryColor: primaryColor,
         primaryShade: primaryShade,
         defaultRadius: defaultRadius,
         defaultGradient: defaultGradient,
         focusRing: focusRing,
         scale: scale,
         white: white,
         black: black,
         autoContrast: autoContrast,
         luminanceThreshold: luminanceThreshold,
         respectReducedMotion: respectReducedMotion,
         cursorType: cursorType,
         variantColorResolver: variantColorResolver,
         baseline: baseline,
       );

  const MantleTheme._({
    required this.colors,
    required this.icons,
    required this.typography,
    required this.spacing,
    required this.radius,
    required this.shadows,
    required this.breakpoints,
    required this.components,
    required this.componentDefaults,
    required this.extensions,
    required this.baseline,
    this.spacingBuilder,
    this.radiusBuilder,
    this.breakpointsBuilder,
    this._debugName,
    this._primaryColor,
    this._primaryShade,
    this._defaultRadius,
    this._defaultGradient,
    this._focusRing,
    this._scale,
    this._white,
    this._black,
    this._autoContrast,
    this._luminanceThreshold,
    this._respectReducedMotion,
    this._cursorType,
    this._variantColorResolver,
  });

  /// Color palettes.
  final MantleColors colors;

  /// Icon builders.
  final MantleIcons icons;

  /// Typography tokens.
  final MantleTypography typography;

  /// Spacing scale.
  final MantleSpacing spacing;

  /// Radius scale.
  final MantleRadius radius;

  /// Shadow scale.
  final MantleShadow shadows;

  /// Breakpoint scale.
  final MantleBreakpoint breakpoints;

  /// Builds [spacing] from the reading [BuildContext] when set.
  final MantleSpacing Function(BuildContext context)? spacingBuilder;

  /// Builds [radius] from the reading [BuildContext] when set.
  final MantleRadius Function(BuildContext context)? radiusBuilder;

  /// Builds [breakpoints] from the reading [BuildContext] when set.
  final MantleBreakpoint Function(BuildContext context)? breakpointsBuilder;

  /// Theme-owned component delegates, keyed by contract type.
  final DelegateRegistry components;

  /// Per-component default style props.
  final ComponentDefaults componentDefaults;

  /// Custom token groups keyed by type, like Flutter's `ThemeExtension`.
  final Map<Type, MantleTokenGroup> extensions;

  /// Baseline theme used only when a delegate is missing from [components].
  ///
  /// Set by [MantleProvider]; not typically passed by app code.
  final MantleTheme? baseline;

  final String? _debugName;
  final String? _primaryColor;
  final MantleShade? _primaryShade;
  final MantleSize? _defaultRadius;
  final MantleGradient? _defaultGradient;
  final MantleFocusRing? _focusRing;
  final double? _scale;
  final Color? _white;
  final Color? _black;
  final bool? _autoContrast;
  final double? _luminanceThreshold;
  final bool? _respectReducedMotion;
  final MantleCursorType? _cursorType;
  final VariantColorsResolver? _variantColorResolver;

  /// Name used in fallback warnings and [MissingDelegateError].
  String get debugName => _debugName ?? 'MantleTheme';

  /// Key of [colors] used as the default palette. Defaults to `blue`.
  String get primaryColor => _primaryColor ?? 'blue';

  /// The primary palette.
  MantleColor get primary => colors[primaryColor];

  /// Light/dark indexes into [primary]. Defaults to `{ light: 6, dark: 8 }`.
  MantleShade get primaryShade => _primaryShade ?? MantleShade.primary;

  /// Shade of [primary] for [scheme] (`light`/`dark`; `auto` is treated as
  /// light).
  Color primaryShadeColor([
    MantleColorScheme scheme = MantleColorScheme.light,
  ]) {
    return primary[primaryShade.indexFor(
      isDark: scheme == MantleColorScheme.dark,
    )];
  }

  /// Key of [radius] used as the default corner radius. Defaults to `md`.
  MantleSize get defaultRadius => _defaultRadius ?? 'md';

  /// [defaultRadius] resolved through [radius].
  Radius get resolvedDefaultRadius => radius.circular(defaultRadius);

  /// Default gradient. When unset, blends the primary palette 6 → 4.
  MantleGradient get defaultGradient =>
      _defaultGradient ?? MantleGradient(from: primaryColor, to: primaryColor);

  /// [defaultGradient] resolved against [colors].
  Gradient get resolvedDefaultGradient => defaultGradient.resolve(colors);

  /// Focus ring behavior. Defaults to [MantleFocusRing.auto].
  MantleFocusRing get focusRing => _focusRing ?? MantleFocusRing.auto;

  /// Multiplier applied by themes that scale spacing/type. Defaults to `1`.
  double get scale => _scale ?? 1;

  /// Lightest surface color. Defaults to white.
  Color get white => _white ?? const Color(0xFFFFFFFF);

  /// Darkest surface color. Defaults to black.
  Color get black => _black ?? const Color(0xFF000000);

  /// Whether filled variants pick black/white text from luminance.
  bool get autoContrast => _autoContrast ?? false;

  /// Luminance cutoff for [autoContrast]. Defaults to `0.3`.
  double get luminanceThreshold => _luminanceThreshold ?? 0.3;

  /// Whether OS reduced-motion should be respected. Defaults to `false`.
  bool get respectReducedMotion => _respectReducedMotion ?? false;

  /// Cursor for interactive elements. Defaults to [MantleCursorType.system].
  MantleCursorType get cursorType => _cursorType ?? MantleCursorType.system;

  /// Variant color function. Defaults to [defaultVariantColorsResolver].
  VariantColorsResolver get variantColorResolver =>
      _variantColorResolver ?? defaultVariantColorsResolver;

  /// Typed access to a custom token group.
  T extension<T extends MantleTokenGroup>() {
    final value = extensions[T];
    if (value is T) {
      return value;
    }
    throw FlutterError(
      'No $T on MantleTheme "$debugName". '
      'Register it with extensions: { $T: ... }.',
    );
  }

  /// Typed access to a custom token group, or `null`.
  T? maybeExtension<T extends MantleTokenGroup>() {
    final value = extensions[T];
    return value is T ? value : null;
  }

  /// Looks up the delegate for contract [D].
  ///
  /// Walks this theme's [components], then [baseline], warning once when the
  /// baseline is used. Throws [MissingDelegateError] if nothing is found.
  D delegate<D extends ComponentDelegate>() {
    final found = components.maybeGet<D>();
    if (found != null) {
      return found;
    }

    final fallback = baseline?.components.maybeGet<D>();
    if (fallback != null) {
      MantleLog.warnFallback(delegate: D, theme: debugName);
      return fallback;
    }

    throw MissingDelegateError(
      D,
      theme: debugName,
      hasBaseline: baseline != null,
    );
  }

  /// Attaches [baseline] for delegate fallback. Used by [MantleProvider].
  MantleTheme bindBaseline(MantleTheme? baseline) {
    return _copy(baseline: baseline);
  }

  /// Resolves context-built token factories against [context].
  ///
  /// Returns this theme when no factories are set so identity stays stable.
  MantleTheme resolve(BuildContext context) {
    if (spacingBuilder == null &&
        radiusBuilder == null &&
        breakpointsBuilder == null) {
      return this;
    }
    return _copy(
      spacing: spacingBuilder?.call(context) ?? spacing,
      radius: radiusBuilder?.call(context) ?? radius,
      breakpoints: breakpointsBuilder?.call(context) ?? breakpoints,
      spacingBuilder: null,
      radiusBuilder: null,
      breakpointsBuilder: null,
    );
  }

  /// Copies this theme with the given fields replaced.
  MantleTheme copyWith({
    MantleColors? colors,
    MantleIcons? icons,
    MantleTypography? typography,
    MantleSpacing? spacing,
    MantleRadius? radius,
    MantleShadow? shadows,
    MantleBreakpoint? breakpoints,
    MantleSpacing Function(BuildContext context)? spacingBuilder,
    MantleRadius Function(BuildContext context)? radiusBuilder,
    MantleBreakpoint Function(BuildContext context)? breakpointsBuilder,
    DelegateRegistry? components,
    ComponentDefaults? componentDefaults,
    Map<Type, MantleTokenGroup>? extensions,
    String? debugName,
    String? primaryColor,
    MantleShade? primaryShade,
    MantleSize? defaultRadius,
    MantleGradient? defaultGradient,
    MantleFocusRing? focusRing,
    double? scale,
    Color? white,
    Color? black,
    bool? autoContrast,
    double? luminanceThreshold,
    bool? respectReducedMotion,
    MantleCursorType? cursorType,
    VariantColorsResolver? variantColorResolver,
  }) {
    return _copy(
      colors: colors ?? this.colors,
      icons: icons ?? this.icons,
      typography: typography ?? this.typography,
      spacing: spacing ?? this.spacing,
      radius: radius ?? this.radius,
      shadows: shadows ?? this.shadows,
      breakpoints: breakpoints ?? this.breakpoints,
      spacingBuilder: spacingBuilder ?? this.spacingBuilder,
      radiusBuilder: radiusBuilder ?? this.radiusBuilder,
      breakpointsBuilder: breakpointsBuilder ?? this.breakpointsBuilder,
      components: components ?? this.components,
      componentDefaults: componentDefaults ?? this.componentDefaults,
      extensions: extensions ?? this.extensions,
      debugName: debugName ?? _debugName,
      primaryColor: primaryColor ?? _primaryColor,
      primaryShade: primaryShade ?? _primaryShade,
      defaultRadius: defaultRadius ?? _defaultRadius,
      defaultGradient: defaultGradient ?? _defaultGradient,
      focusRing: focusRing ?? _focusRing,
      scale: scale ?? _scale,
      white: white ?? _white,
      black: black ?? _black,
      autoContrast: autoContrast ?? _autoContrast,
      luminanceThreshold: luminanceThreshold ?? _luminanceThreshold,
      respectReducedMotion: respectReducedMotion ?? _respectReducedMotion,
      cursorType: cursorType ?? _cursorType,
      variantColorResolver: variantColorResolver ?? _variantColorResolver,
    );
  }

  /// Inner theme wins; this instance fills gaps.
  MantleTheme overriddenBy(MantleTheme inner) => inner.mergeWith(this);

  @override
  MantleTheme mergeWith(covariant MantleTheme other) {
    return MantleTheme._(
      colors: colors.mergeWith(other.colors),
      icons: icons.mergeWith(other.icons),
      typography: typography.mergeWith(other.typography),
      spacing: spacing.mergeWith(other.spacing),
      radius: radius.mergeWith(other.radius),
      shadows: shadows.mergeWith(other.shadows),
      breakpoints: breakpoints.mergeWith(other.breakpoints),
      spacingBuilder:
          spacingBuilder ?? (spacing.isEmpty ? other.spacingBuilder : null),
      radiusBuilder:
          radiusBuilder ?? (radius.isEmpty ? other.radiusBuilder : null),
      breakpointsBuilder:
          breakpointsBuilder ??
          (breakpoints.isEmpty ? other.breakpointsBuilder : null),
      components: components.mergeWith(other.components),
      componentDefaults: componentDefaults.mergeWith(other.componentDefaults),
      extensions: _mergeExtensions(extensions, other.extensions),
      baseline: baseline ?? other.baseline,
      debugName: _debugName ?? other._debugName,
      primaryColor: _primaryColor ?? other._primaryColor,
      primaryShade: _primaryShade ?? other._primaryShade,
      defaultRadius: _defaultRadius ?? other._defaultRadius,
      defaultGradient: _defaultGradient ?? other._defaultGradient,
      focusRing: _focusRing ?? other._focusRing,
      scale: _scale ?? other._scale,
      white: _white ?? other._white,
      black: _black ?? other._black,
      autoContrast: _autoContrast ?? other._autoContrast,
      luminanceThreshold: _luminanceThreshold ?? other._luminanceThreshold,
      respectReducedMotion:
          _respectReducedMotion ?? other._respectReducedMotion,
      cursorType: _cursorType ?? other._cursorType,
      variantColorResolver:
          _variantColorResolver ?? other._variantColorResolver,
    );
  }

  @override
  MantleTheme lerpWith(covariant MantleTheme other, double t) {
    return MantleTheme._(
      colors: colors.lerpWith(other.colors, t),
      icons: icons.lerpWith(other.icons, t),
      typography: typography.lerpWith(other.typography, t),
      spacing: spacing.lerpWith(other.spacing, t),
      radius: radius.lerpWith(other.radius, t),
      shadows: shadows.lerpWith(other.shadows, t),
      breakpoints: breakpoints.lerpWith(other.breakpoints, t),
      spacingBuilder: _snap(spacingBuilder, other.spacingBuilder, t),
      radiusBuilder: _snap(radiusBuilder, other.radiusBuilder, t),
      breakpointsBuilder: _snap(
        breakpointsBuilder,
        other.breakpointsBuilder,
        t,
      ),
      components: _snap(components, other.components, t),
      componentDefaults: _snap(componentDefaults, other.componentDefaults, t),
      extensions: _lerpExtensions(extensions, other.extensions, t),
      baseline: _snap(baseline, other.baseline, t),
      debugName: _snap(_debugName, other._debugName, t),
      primaryColor: _snap(_primaryColor, other._primaryColor, t),
      primaryShade: _snap(_primaryShade, other._primaryShade, t),
      defaultRadius: _snap(_defaultRadius, other._defaultRadius, t),
      defaultGradient:
          _defaultGradient == null && other._defaultGradient == null
          ? null
          : defaultGradient.lerp(other.defaultGradient, t),
      focusRing: _snap(_focusRing, other._focusRing, t),
      scale: lerpDouble(scale, other.scale, t),
      white: Color.lerp(white, other.white, t),
      black: Color.lerp(black, other.black, t),
      autoContrast: _snap(_autoContrast, other._autoContrast, t),
      luminanceThreshold: lerpDouble(
        luminanceThreshold,
        other.luminanceThreshold,
        t,
      ),
      respectReducedMotion: _snap(
        _respectReducedMotion,
        other._respectReducedMotion,
        t,
      ),
      cursorType: _snap(_cursorType, other._cursorType, t),
      variantColorResolver: _snap(
        _variantColorResolver,
        other._variantColorResolver,
        t,
      ),
    );
  }

  MantleTheme _copy({
    MantleColors? colors,
    MantleIcons? icons,
    MantleTypography? typography,
    MantleSpacing? spacing,
    MantleRadius? radius,
    MantleShadow? shadows,
    MantleBreakpoint? breakpoints,
    Object? spacingBuilder = _keep,
    Object? radiusBuilder = _keep,
    Object? breakpointsBuilder = _keep,
    DelegateRegistry? components,
    ComponentDefaults? componentDefaults,
    Map<Type, MantleTokenGroup>? extensions,
    String? debugName,
    String? primaryColor,
    MantleShade? primaryShade,
    MantleSize? defaultRadius,
    MantleGradient? defaultGradient,
    MantleFocusRing? focusRing,
    double? scale,
    Color? white,
    Color? black,
    bool? autoContrast,
    double? luminanceThreshold,
    bool? respectReducedMotion,
    MantleCursorType? cursorType,
    VariantColorsResolver? variantColorResolver,
    Object? baseline = _keep,
  }) {
    return MantleTheme._(
      colors: colors ?? this.colors,
      icons: icons ?? this.icons,
      typography: typography ?? this.typography,
      spacing: spacing ?? this.spacing,
      radius: radius ?? this.radius,
      shadows: shadows ?? this.shadows,
      breakpoints: breakpoints ?? this.breakpoints,
      spacingBuilder: identical(spacingBuilder, _keep)
          ? this.spacingBuilder
          : spacingBuilder as MantleSpacing Function(BuildContext)?,
      radiusBuilder: identical(radiusBuilder, _keep)
          ? this.radiusBuilder
          : radiusBuilder as MantleRadius Function(BuildContext)?,
      breakpointsBuilder: identical(breakpointsBuilder, _keep)
          ? this.breakpointsBuilder
          : breakpointsBuilder as MantleBreakpoint Function(BuildContext)?,
      components: components ?? this.components,
      componentDefaults: componentDefaults ?? this.componentDefaults,
      extensions: extensions ?? this.extensions,
      baseline: identical(baseline, _keep)
          ? this.baseline
          : baseline as MantleTheme?,
      debugName: debugName ?? _debugName,
      primaryColor: primaryColor ?? _primaryColor,
      primaryShade: primaryShade ?? _primaryShade,
      defaultRadius: defaultRadius ?? _defaultRadius,
      defaultGradient: defaultGradient ?? _defaultGradient,
      focusRing: focusRing ?? _focusRing,
      scale: scale ?? _scale,
      white: white ?? _white,
      black: black ?? _black,
      autoContrast: autoContrast ?? _autoContrast,
      luminanceThreshold: luminanceThreshold ?? _luminanceThreshold,
      respectReducedMotion: respectReducedMotion ?? _respectReducedMotion,
      cursorType: cursorType ?? _cursorType,
      variantColorResolver: variantColorResolver ?? _variantColorResolver,
    );
  }

  /// The theme for [context], subscribing to [aspect] when given.
  static MantleTheme of(BuildContext context, {MantleAspect? aspect}) {
    return MantleProvider.of(context, aspect: aspect);
  }

  /// The theme for [context], or `null` if none is in scope.
  static MantleTheme? maybeOf(BuildContext context, {MantleAspect? aspect}) {
    return MantleProvider.maybeOf(context, aspect: aspect);
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(StringProperty('debugName', debugName))
      ..add(StringProperty('primaryColor', primaryColor))
      ..add(DiagnosticsProperty<MantleShade>('primaryShade', primaryShade))
      ..add(DoubleProperty('scale', scale))
      ..add(EnumProperty<MantleFocusRing>('focusRing', focusRing))
      ..add(
        FlagProperty(
          'autoContrast',
          value: autoContrast,
          ifTrue: 'autoContrast',
        ),
      );
  }
}

Map<Type, MantleTokenGroup> _mergeExtensions(
  Map<Type, MantleTokenGroup> a,
  Map<Type, MantleTokenGroup> b,
) {
  final keys = {...a.keys, ...b.keys};
  return {
    for (final key in keys)
      if (a.containsKey(key) && b.containsKey(key))
        key: a[key]!.mergeWith(b[key]!)
      else if (a.containsKey(key))
        key: a[key]!
      else
        key: b[key]!,
  };
}

Map<Type, MantleTokenGroup> _lerpExtensions(
  Map<Type, MantleTokenGroup> a,
  Map<Type, MantleTokenGroup> b,
  double t,
) {
  final keys = {...a.keys, ...b.keys};
  return {
    for (final key in keys)
      if (a.containsKey(key) && b.containsKey(key))
        key: a[key]!.lerpWith(b[key]!, t)
      else if (a.containsKey(key))
        key: a[key]!
      else
        key: b[key]!,
  };
}
