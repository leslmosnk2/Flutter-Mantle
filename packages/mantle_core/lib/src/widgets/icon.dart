import 'package:flutter/widgets.dart';
import 'package:mantle_core/src/theme/color_scheme.dart';
import 'package:mantle_core/src/theme/mantle_provider.dart';
import 'package:mantle_core/src/theme/mantle_theme.dart';
import 'package:mantle_core/src/tokens/icons.dart';

/// A widget that displays an icon from the Mantle icon set.
///
/// [size] and [color] fall back to the ambient [IconTheme], then to the
/// enclosing [MantleTheme] (`black` / `white` by color scheme, size 24).
class MantleIcon extends StatelessWidget {
  /// Creates an icon widget.
  const MantleIcon({required this.icon, this.color, this.size, super.key});

  /// Matches [IconThemeData.fallback].
  static const double fallbackSize = 24;

  /// The icon to display.
  final IconTokenBuilder icon;

  /// The color of the icon.
  ///
  /// If null, uses [IconThemeData.color], then the Mantle foreground.
  final Color? color;

  /// The size of the icon.
  ///
  /// If null, uses [IconThemeData.size], then [fallbackSize].
  final double? size;

  @override
  Widget build(BuildContext context) {
    final iconTheme = context.dependOnInheritedWidgetOfExactType<IconTheme>();
    final data = iconTheme?.data;

    final resolvedSize = size ?? data?.size ?? fallbackSize;
    var resolvedColor = color ?? data?.color ?? _foregroundOf(context);
    final opacity = data?.opacity;
    if (opacity != null && opacity != 1) {
      resolvedColor = resolvedColor.withValues(
        alpha: resolvedColor.a * opacity,
      );
    }

    return icon(size: resolvedSize, color: resolvedColor);
  }

  static Color _foregroundOf(BuildContext context) {
    final theme = MantleTheme.maybeOf(context, aspect: MantleAspect.config);
    if (theme == null) {
      return const Color(0xFF000000);
    }
    final scheme = MantleProvider.maybeColorSchemeOf(context);
    return scheme == MantleColorScheme.dark ? theme.white : theme.black;
  }
}
