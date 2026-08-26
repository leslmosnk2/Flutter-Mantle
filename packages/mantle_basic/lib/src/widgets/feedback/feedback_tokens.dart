import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';

/// Resolves a palette name (`blue`) or shade (`blue.4`) to the filled color.
Color resolveFilledColor(
  MantleTheme theme,
  MantleColorScheme scheme,
  String? color,
) {
  return theme
          .variantColorResolver(
            VariantColorsInput(
              theme: theme,
              variant: 'filled',
              colorScheme: scheme,
              color: color,
            ),
          )
          .background ??
      theme.primaryShadeColor(scheme);
}

/// Mantine `color-dimmed`: gray.6 in light, dark.2 in dark.
Color dimmedColor(MantleTheme theme, MantleColorScheme scheme) {
  if (scheme == MantleColorScheme.dark) {
    return theme.colors['dark'][2];
  }
  return theme.colors['gray'][6];
}

/// Mantine `color-bright`: black in light, white in dark.
Color brightColor(MantleTheme theme, MantleColorScheme scheme) {
  return scheme == MantleColorScheme.dark ? theme.white : theme.black;
}

/// Track / skeleton fill: gray.2 light, dark.4 dark.
Color trackColor(MantleTheme theme, MantleColorScheme scheme) {
  if (scheme == MantleColorScheme.dark) {
    return theme.colors['dark'][4];
  }
  return theme.colors['gray'][2];
}

/// Skeleton overlay: gray.3 light, dark.4 dark.
Color skeletonColor(MantleTheme theme, MantleColorScheme scheme) {
  if (scheme == MantleColorScheme.dark) {
    return theme.colors['dark'][4];
  }
  return theme.colors['gray'][3];
}

/// Loader sizes matching `--loader-size-*`.
const Map<String, double> loaderSizes = {
  'xs': 18,
  'sm': 22,
  'md': 36,
  'lg': 44,
  'xl': 58,
};

/// Progress track heights matching `--progress-size-*`.
const Map<String, double> progressSizes = {
  'xs': 3,
  'sm': 5,
  'md': 8,
  'lg': 12,
  'xl': 16,
};

/// EmptyState indicator, gap, and type scale for `xs`–`xl`.
class EmptyStateSize {
  /// Creates a size token set.
  const EmptyStateSize({
    required this.indicator,
    required this.gap,
    required this.titleFont,
    required this.descriptionFont,
  });

  /// Indicator icon size (logical pixels).
  final double indicator;

  /// Gap between indicator, title, description, and actions.
  final double gap;

  /// Title font-size token (`xs`–`xl`).
  final String titleFont;

  /// Description font-size token (`xs`–`xl`).
  final String descriptionFont;
}

/// EmptyState size scale from Mantine CSS variables.
const Map<String, EmptyStateSize> emptyStateSizes = {
  'xs': EmptyStateSize(
    indicator: 32,
    gap: 6,
    titleFont: 'sm',
    descriptionFont: 'xs',
  ),
  'sm': EmptyStateSize(
    indicator: 40,
    gap: 8,
    titleFont: 'md',
    descriptionFont: 'sm',
  ),
  'md': EmptyStateSize(
    indicator: 48,
    gap: 10,
    titleFont: 'lg',
    descriptionFont: 'sm',
  ),
  'lg': EmptyStateSize(
    indicator: 60,
    gap: 12,
    titleFont: 'xl',
    descriptionFont: 'md',
  ),
  'xl': EmptyStateSize(
    indicator: 72,
    gap: 16,
    titleFont: 'xl',
    descriptionFont: 'lg',
  ),
};

/// Looks up a size token, falling back to [fallback].
double resolveNamedSize(
  Map<String, double> sizes,
  String? size, {
  String fallback = 'md',
}) {
  return sizes[size] ?? sizes[fallback]!;
}

/// Font size for [key], scaled, with a numeric fallback.
double resolveFontSize(MantleTheme theme, String key, {double fallback = 14}) {
  return (theme.typography.fontSize.getOrNull(key) ?? fallback) * theme.scale;
}
