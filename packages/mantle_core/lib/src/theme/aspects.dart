import 'package:mantle_core/src/theme/mantle_provider.dart';
import 'package:mantle_core/src/theme/mantle_theme.dart';

/// Slices of a [MantleTheme] that [MantleProvider] dependents can subscribe to.
enum MantleAspect {
  /// [MantleTheme.colors] and primary-color keys.
  colors,

  /// [MantleTheme.icons].
  icons,

  /// [MantleTheme.typography].
  typography,

  /// [MantleTheme.spacing].
  spacing,

  /// [MantleTheme.radius].
  radius,

  /// [MantleTheme.shadows].
  shadows,

  /// [MantleTheme.breakpoints].
  breakpoints,

  /// [MantleTheme.components] and [MantleTheme.componentDefaults].
  components,

  /// Resolved light/dark color scheme from the provider.
  colorScheme,

  /// Scalar theme settings: focus ring, scale, contrast, cursor, etc.
  config,
}
