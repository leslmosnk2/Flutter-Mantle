import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';

/// Input heights matching Mantine `--input-height-*`.
const Map<String, double> inputHeights = {
  'xs': 30,
  'sm': 36,
  'md': 42,
  'lg': 50,
  'xl': 60,
};

/// Checkbox / radio box sizes.
const Map<String, double> checkboxSizes = {
  'xs': 16,
  'sm': 20,
  'md': 24,
  'lg': 30,
  'xl': 36,
};

/// Switch track height.
const Map<String, double> switchHeights = {
  'xs': 16,
  'sm': 20,
  'md': 24,
  'lg': 30,
  'xl': 36,
};

/// Switch track width.
const Map<String, double> switchWidths = {
  'xs': 32,
  'sm': 38,
  'md': 46,
  'lg': 56,
  'xl': 72,
};

/// Switch thumb size.
const Map<String, double> switchThumbSizes = {
  'xs': 12,
  'sm': 14,
  'md': 18,
  'lg': 22,
  'xl': 28,
};

/// Chip height.
const Map<String, double> chipHeights = {
  'xs': 23,
  'sm': 28,
  'md': 32,
  'lg': 36,
  'xl': 40,
};

/// Slider track thickness.
const Map<String, double> sliderSizes = {
  'xs': 4,
  'sm': 6,
  'md': 8,
  'lg': 10,
  'xl': 12,
};

/// Rating symbol size.
const Map<String, double> ratingSizes = {
  'xs': 14,
  'sm': 18,
  'md': 22,
  'lg': 28,
  'xl': 36,
};

/// Looks up a size token with [fallback].
double inputSizeToken(
  Map<String, double> tokens,
  String size, {
  double fallback = 36,
}) {
  return tokens[size] ?? tokens['sm'] ?? fallback;
}

/// Maps generated `defaults` enum names to Mantine `default`.
String inputVariantName(Enum variant) {
  final name = variant.name;
  return name == 'defaults' ? 'default' : name;
}

/// Resolves a theme color key (`blue`, `red.6`) or `#hex`.
Color resolveThemeColor(
  MantleTheme theme,
  MantleColorScheme scheme,
  String? color,
) {
  if (color != null && color.startsWith('#')) {
    return parseHexColor(color) ?? theme.black;
  }
  final shade = theme.primaryShade.indexFor(
    isDark: scheme == MantleColorScheme.dark,
  );
  if (color == null || color.isEmpty) {
    return theme.primary[shade];
  }
  final dot = color.indexOf('.');
  if (dot == -1) {
    return theme.colors[color][shade];
  }
  return theme.colors[color.substring(0, dot)][int.parse(
    color.substring(dot + 1),
  )];
}

/// Parses `#rgb`, `#rrggbb`, or `#rrggbbaa`.
Color? parseHexColor(String raw) {
  var hex = raw.startsWith('#') ? raw.substring(1) : raw;
  if (hex.length == 3) {
    hex = hex.split('').map((c) => '$c$c').join();
  }
  if (hex.length == 6) {
    hex = 'FF$hex';
  }
  if (hex.length != 8) {
    return null;
  }
  final value = int.tryParse(hex, radix: 16);
  if (value == null) {
    return null;
  }
  return Color(value);
}

/// Error red from the theme.
Color inputErrorColor(MantleTheme theme) => theme.colors['red'][6];

/// Placeholder / dimmed gray.
Color inputDimmedColor(MantleTheme theme, MantleColorScheme scheme) {
  return scheme == MantleColorScheme.dark
      ? theme.colors['dark'][2]
      : theme.colors['gray'][6];
}

/// Input border / fill for a variant.
class InputChromeColors {
  /// Creates chrome colors.
  const InputChromeColors({
    required this.background,
    required this.border,
    required this.focusBorder,
    required this.foreground,
    required this.placeholder,
  });

  /// Field fill.
  final Color background;

  /// Resting border.
  final Color border;

  /// Focused border.
  final Color focusBorder;

  /// Typed text.
  final Color foreground;

  /// Placeholder text.
  final Color placeholder;
}

/// Resolves Mantine Input variant colors.
InputChromeColors resolveInputChrome({
  required MantleTheme theme,
  required MantleColorScheme scheme,
  required String variant,
  required bool hasError,
  required bool withErrorStyles,
}) {
  final isDark = scheme == MantleColorScheme.dark;
  final error = hasError && withErrorStyles;
  final placeholder = isDark
      ? theme.colors['dark'][3]
      : theme.colors['gray'][5];
  final foreground = error
      ? inputErrorColor(theme)
      : (isDark ? theme.white : theme.black);
  final focus = theme.primary[theme.primaryShade.indexFor(isDark: isDark)];

  late final Color background;
  late final Color border;
  switch (variant) {
    case 'filled':
      background = isDark ? theme.colors['dark'][5] : theme.colors['gray'][1];
      border = const Color(0x00000000);
    case 'unstyled':
      background = const Color(0x00000000);
      border = const Color(0x00000000);
    default:
      background = isDark ? theme.colors['dark'][6] : theme.white;
      border = isDark ? theme.colors['dark'][4] : theme.colors['gray'][4];
  }

  return InputChromeColors(
    background: background,
    border: error ? inputErrorColor(theme) : border,
    focusBorder: error ? inputErrorColor(theme) : focus,
    foreground: foreground,
    placeholder: error ? inputErrorColor(theme) : placeholder,
  );
}
