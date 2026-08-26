import 'package:flutter/foundation.dart';
import 'package:flutter/painting.dart';
import 'package:mantle_core/src/theme/color_scheme.dart';
import 'package:mantle_core/src/theme/gradient.dart';
import 'package:mantle_core/src/theme/mantle_theme.dart';
import 'package:mantle_core/src/tokens/color.dart';

/// Input to a [VariantColorsResolver].
@immutable
class VariantColorsInput {
  /// Creates resolver input.
  const VariantColorsInput({
    required this.theme,
    required this.variant,
    required this.colorScheme,
    this.color,
    this.gradient,
    this.autoContrast,
  });

  /// Palette name (`blue`) or shade (`blue.4`). `null` uses the primary.
  final String? color;

  /// Theme whose tokens should be used.
  final MantleTheme theme;

  /// Variant name (`filled`, `light`, `outline`, …).
  final String variant;

  /// Resolved light or dark scheme (never [MantleColorScheme.auto]).
  final MantleColorScheme colorScheme;

  /// Gradient for `variant: gradient`.
  final MantleGradient? gradient;

  /// Overrides [MantleTheme.autoContrast] when non-null.
  final bool? autoContrast;
}

/// Colors produced by a [VariantColorsResolver].
@immutable
class VariantColors {
  /// Creates a variant color set.
  const VariantColors({
    this.background,
    this.hover,
    this.color,
    this.border,
    this.hoverColor,
    this.gradient,
  });

  /// Fill color.
  final Color? background;

  /// Fill color while hovered/pressed.
  final Color? hover;

  /// Foreground (text/icon) color.
  final Color? color;

  /// Border color.
  final Color? border;

  /// Foreground color while hovered/pressed.
  final Color? hoverColor;

  /// Resolved gradient for `variant: gradient`.
  final Gradient? gradient;
}

/// Resolves variant colors for Button, ActionIcon, ThemeIcon, and similar.
typedef VariantColorsResolver =
    VariantColors Function(VariantColorsInput input);

/// Default resolver, mirroring Mantine's `defaultVariantColorsResolver`.
VariantColors defaultVariantColorsResolver(VariantColorsInput input) {
  final theme = input.theme;
  final parsed = _parseColor(input.color, theme);
  final shade =
      parsed.shade ??
      theme.primaryShade.indexFor(
        isDark: input.colorScheme == MantleColorScheme.dark,
      );
  final swatch = parsed.swatch;
  final hoverShade = shade >= 9 ? 8 : shade + 1;
  final useAutoContrast = input.autoContrast ?? theme.autoContrast;

  Color contrastOn(Color background) {
    if (!useAutoContrast) {
      return theme.white;
    }
    return background.computeLuminance() > theme.luminanceThreshold
        ? theme.black
        : theme.white;
  }

  Color c(int i) => swatch[i];

  return switch (input.variant) {
    'light' => VariantColors(
      background: c(0),
      hover: c(1),
      color: c(shade),
      border: const Color(0x00000000),
    ),
    'outline' => VariantColors(
      background: const Color(0x00000000),
      hover: c(0),
      color: c(shade),
      border: c(shade),
    ),
    'subtle' => VariantColors(
      background: const Color(0x00000000),
      hover: c(0),
      color: c(shade),
      border: const Color(0x00000000),
    ),
    'transparent' => VariantColors(
      background: const Color(0x00000000),
      hover: const Color(0x00000000),
      color: c(shade),
      border: const Color(0x00000000),
    ),
    'white' => VariantColors(
      background: theme.white,
      hover: theme.white,
      color: c(shade),
      border: const Color(0x00000000),
    ),
    'gradient' => VariantColors(
      color: theme.white,
      border: const Color(0x00000000),
      gradient: (input.gradient ?? theme.defaultGradient).resolve(theme.colors),
    ),
    _ => VariantColors(
      background: c(shade),
      hover: c(hoverShade),
      color: contrastOn(c(shade)),
      border: const Color(0x00000000),
    ),
  };
}

class _ParsedColor {
  const _ParsedColor({required this.swatch, this.shade});

  final MantleColor swatch;
  final int? shade;
}

_ParsedColor _parseColor(String? color, MantleTheme theme) {
  if (color == null || color.isEmpty) {
    return _ParsedColor(swatch: theme.primary);
  }
  final dot = color.indexOf('.');
  if (dot == -1) {
    return _ParsedColor(swatch: theme.colors[color]);
  }
  return _ParsedColor(
    swatch: theme.colors[color.substring(0, dot)],
    shade: int.parse(color.substring(dot + 1)),
  );
}
