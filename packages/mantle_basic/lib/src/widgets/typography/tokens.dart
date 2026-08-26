import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';

/// Whether the resolved scheme is dark.
bool isDarkScheme(BuildContext context) {
  return MantleProvider.colorSchemeOf(context) == MantleColorScheme.dark;
}

/// Default foreground.
Color textColor(BuildContext context) {
  final theme = MantleTheme.of(context);
  return isDarkScheme(context) ? theme.white : theme.black;
}

/// Page/body surface (`--mantine-color-body`).
Color bodyColor(BuildContext context) {
  final theme = MantleTheme.of(context);
  return isDarkScheme(context) ? theme.colors['dark'][7] : theme.white;
}

/// Resolves a palette name (`blue`) or shade (`blue.4`) to a [Color].
Color paletteColor(
  BuildContext context,
  String? color, {
  int? shade,
}) {
  final theme = MantleTheme.of(context);
  final scheme = MantleProvider.colorSchemeOf(context);
  if (color == null || color.isEmpty) {
    return theme.primaryShadeColor(scheme);
  }
  final dot = color.indexOf('.');
  if (dot == -1) {
    final resolvedShade =
        shade ??
        theme.primaryShade.indexFor(
          isDark: scheme == MantleColorScheme.dark,
        );
    return theme.colors[color][resolvedShade];
  }
  return theme.colors[color.substring(0, dot)][int.parse(
    color.substring(dot + 1),
  )];
}

/// Font size from a typography size token, scaled.
double fontSizeToken(MantleTheme theme, String size) {
  return (theme.typography.fontSize.getOrNull(size) ?? 16) * theme.scale;
}

/// Line height multiplier from a typography size token.
double lineHeightToken(MantleTheme theme, String size) {
  return theme.typography.lineHeight.getOrNull(size) ?? 1.55;
}

/// Heading style for order 1–6.
TextStyle headingStyle(MantleTheme theme, int order) {
  final headings = theme.typography.headings;
  return switch (order) {
    2 => headings.h2,
    3 => headings.h3,
    4 => headings.h4,
    5 => headings.h5,
    6 => headings.h6,
    _ => headings.h1,
  };
}

/// Resolves a [BorderRadiusGeometry] against the ambient text direction.
BorderRadius resolveRadius(BorderRadiusGeometry radius, BuildContext context) {
  return radius.resolve(Directionality.of(context));
}
