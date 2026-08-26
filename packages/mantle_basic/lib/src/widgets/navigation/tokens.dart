import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';

/// Resolves a palette name (`blue`) or shade (`blue.6`) to a [Color].
Color resolveNamedColor(
  BuildContext context,
  String? color, {
  Color? fallback,
}) {
  final theme = MantleTheme.of(context);
  final scheme = MantleProvider.colorSchemeOf(context);
  if (color == null || color.isEmpty) {
    return fallback ?? theme.primaryShadeColor(scheme);
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

/// Variant colors for [color] / [variant] against the current theme.
VariantColors resolveVariantColors(
  BuildContext context, {
  required String variant,
  String? color,
}) {
  final theme = MantleTheme.of(context);
  return theme.variantColorResolver(
    VariantColorsInput(
      theme: theme,
      variant: variant,
      colorScheme: MantleProvider.colorSchemeOf(context),
      color: color,
    ),
  );
}

/// Font size for a type-scale token, scaled by the theme.
double resolveFontSize(MantleTheme theme, String size) {
  return theme.typography.fontSize[size] * theme.scale;
}

/// Foreground used when no palette is set (black in light, white in dark).
Color schemeForeground(BuildContext context) {
  final theme = MantleTheme.of(context);
  final scheme = MantleProvider.colorSchemeOf(context);
  return scheme == MantleColorScheme.dark ? theme.white : theme.black;
}

/// Light-scheme `gray.3` / dark-scheme `dark.4` hairline.
Color schemeBorder(BuildContext context) {
  final theme = MantleTheme.of(context);
  final scheme = MantleProvider.colorSchemeOf(context);
  if (scheme == MantleColorScheme.dark) {
    return theme.colors['dark'][4];
  }
  return theme.colors['gray'][3];
}

/// Dimmed description color.
Color schemeDimmed(BuildContext context) {
  final theme = MantleTheme.of(context);
  final scheme = MantleProvider.colorSchemeOf(context);
  if (scheme == MantleColorScheme.dark) {
    return theme.colors['dark'][2];
  }
  return theme.colors['gray'][6];
}
