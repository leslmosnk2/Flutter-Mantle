import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';

/// Whether the resolved scheme is dark.
bool isDarkScheme(BuildContext context) {
  return MantleProvider.colorSchemeOf(context) == MantleColorScheme.dark;
}

/// Page/body surface (`--mantine-color-body`).
Color bodyColor(BuildContext context) {
  final theme = MantleTheme.of(context);
  return isDarkScheme(context) ? theme.colors['dark'][7] : theme.white;
}

/// Default foreground.
Color textColor(BuildContext context) {
  final theme = MantleTheme.of(context);
  return isDarkScheme(context) ? theme.white : theme.black;
}

/// Subtle border (`gray.3` / `dark.4`).
Color hairlineColor(BuildContext context) {
  final theme = MantleTheme.of(context);
  return isDarkScheme(context)
      ? theme.colors['dark'][4]
      : theme.colors['gray'][3];
}

/// Filled item surface (`gray.0` / `dark.6`).
Color filledSurface(BuildContext context) {
  final theme = MantleTheme.of(context);
  return isDarkScheme(context)
      ? theme.colors['dark'][6]
      : theme.colors['gray'][0];
}

/// Resolves a palette name (`blue`) or shade (`blue.4`) to a [Color].
Color paletteColor(BuildContext context, String? color) {
  final theme = MantleTheme.of(context);
  final scheme = MantleProvider.colorSchemeOf(context);
  if (color == null || color.isEmpty || color == 'initials') {
    return theme.primaryShadeColor(scheme);
  }
  final dot = color.indexOf('.');
  if (dot == -1) {
    final shade = theme.primaryShade.indexFor(
      isDark: scheme == MantleColorScheme.dark,
    );
    return theme.colors[color][shade];
  }
  return theme.colors[color.substring(0, dot)][int.parse(
    color.substring(dot + 1),
  )];
}

/// Appearance → [VariantColors] (`filled`, `light`, `outline`, …).
VariantColors resolveAppearance(
  BuildContext context, {
  required String appearance,
  String? color,
  bool autoContrast = false,
}) {
  final theme = MantleTheme.of(context);
  final scheme = MantleProvider.colorSchemeOf(context);
  if (appearance == 'default') {
    final dark = scheme == MantleColorScheme.dark;
    return VariantColors(
      background: dark ? theme.colors['dark'][6] : theme.white,
      hover: dark ? theme.colors['dark'][5] : theme.colors['gray'][0],
      color: dark ? theme.white : theme.black,
      border: dark ? theme.colors['dark'][4] : theme.colors['gray'][4],
    );
  }
  final variantName = appearance == 'dot' ? 'filled' : appearance;
  return theme.variantColorResolver(
    VariantColorsInput(
      theme: theme,
      variant: variantName,
      colorScheme: scheme,
      color: color == 'initials' ? null : color,
      autoContrast: autoContrast,
    ),
  );
}

/// Hash a name onto a chromatic palette (not gray/dark).
String initialsPalette(String name) {
  const palettes = [
    'red',
    'pink',
    'grape',
    'violet',
    'indigo',
    'blue',
    'cyan',
    'teal',
    'green',
    'lime',
    'yellow',
    'orange',
  ];
  var hash = 0;
  for (final code in name.codeUnits) {
    hash = (hash + code) % palettes.length;
  }
  return palettes[hash];
}

/// Avatar edge length for a size token.
double avatarSize(String size, double scale) {
  return switch (size) {
        'xs' => 16,
        'sm' => 26,
        'md' => 38,
        'lg' => 56,
        'xl' => 84,
        _ => 38,
      } *
      scale;
}

/// ThemeIcon edge length.
double themeIconSize(String size, double scale) {
  return switch (size) {
        'xs' => 18,
        'sm' => 22,
        'md' => 28,
        'lg' => 34,
        'xl' => 44,
        _ => 28,
      } *
      scale;
}

/// Badge metrics.
({double height, double fontSize, double paddingX}) badgeMetrics(
  String size,
  double scale,
) {
  return switch (size) {
    'xs' => (height: 16 * scale, fontSize: 9 * scale, paddingX: 6 * scale),
    'sm' => (height: 18 * scale, fontSize: 10 * scale, paddingX: 8 * scale),
    'lg' => (height: 26 * scale, fontSize: 13 * scale, paddingX: 12 * scale),
    'xl' => (height: 32 * scale, fontSize: 16 * scale, paddingX: 16 * scale),
    _ => (height: 20 * scale, fontSize: 11 * scale, paddingX: 10 * scale),
  };
}

/// Kbd font size.
double kbdFontSize(String size, double scale) {
  return switch (size) {
        'xs' => 10,
        'sm' => 12,
        'md' => 14,
        'lg' => 16,
        'xl' => 20,
        _ => 12,
      } *
      scale;
}

/// DataList / body font size from a token.
double fontSizeToken(MantleTheme theme, String size) {
  return (theme.typography.fontSize.getOrNull(size) ?? 14) * theme.scale;
}

/// Resolves a [BorderRadiusGeometry] against the ambient text direction.
BorderRadius resolveRadius(BorderRadiusGeometry radius, BuildContext context) {
  return radius.resolve(Directionality.of(context));
}
