/// Widget-test helpers for Mantle.
///
/// ```dart
/// import 'package:mantle_core/testing.dart';
/// ```
library;

import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_core/mantle_core.dart';

/// 10-shade palette whose red channel is [seed].
MantleColor mantleTestPalette(int seed) {
  return MantleColor([
    for (var i = 0; i < 10; i++) Color.fromARGB(255, seed, i * 25, 100),
  ]);
}

/// Compact theme for tests. Includes `blue`, `red`, and `gray` palettes.
MantleTheme testTheme({
  MantleColors? colors,
  MantleIcons? icons,
  MantleTypography? typography,
  MantleSpacing? spacing,
  MantleRadius? radius,
  MantleShadow? shadows,
  MantleBreakpoint? breakpoints,
  DelegateRegistry? components,
  ComponentDefaults? componentDefaults,
  String? debugName,
  String? primaryColor,
  MantleShade? primaryShade,
  MantleSize? defaultRadius,
  MantleGradient? defaultGradient,
  MantleTheme? baseline,
}) {
  final theme = MantleTheme(
    colors:
        colors ??
        MantleColors({
          'blue': mantleTestPalette(0),
          'red': mantleTestPalette(200),
          'gray': mantleTestPalette(120),
        }),
    icons: icons ?? const MantleIcons.empty(),
    typography: typography ?? const MantleTypography.empty(),
    spacing: spacing ?? const MantleSpacing.empty(),
    radius: radius ?? MantleRadius(const {'sm': 4, 'md': 8, 'lg': 16}),
    shadows: shadows ?? const MantleShadow.empty(),
    breakpoints: breakpoints ?? const MantleBreakpoint.empty(),
    components: components ?? const DelegateRegistry.empty(),
    componentDefaults: componentDefaults ?? const ComponentDefaults.empty(),
    debugName: debugName,
    primaryColor: primaryColor ?? 'blue',
    primaryShade: primaryShade,
    defaultRadius: defaultRadius ?? 'md',
    defaultGradient: defaultGradient,
  );
  return baseline == null ? theme : theme.bindBaseline(baseline);
}

/// Pumps [widget] under a [MantleProvider] with [Directionality].
extension MantleTester on WidgetTester {
  /// Pumps [widget] inside a Mantle test host.
  Future<void> pumpMantle(
    Widget widget, {
    required MantleTheme theme,
    MantleTheme? baseline,
    AnimationStyle animation = AnimationStyle.noAnimation,
    MantleColorScheme defaultColorScheme = MantleColorScheme.light,
    MantleColorScheme? forceColorScheme,
    MantleColorSchemeManager? colorSchemeManager,
    MantleEnvironment env = MantleEnvironment.test,
  }) {
    return pumpWidget(
      MantleProvider(
        theme: theme,
        baseline: baseline,
        animation: animation,
        defaultColorScheme: defaultColorScheme,
        forceColorScheme: forceColorScheme,
        colorSchemeManager: colorSchemeManager,
        env: env,
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: Center(child: widget),
        ),
      ),
    );
  }
}
