import 'dart:math' as math;

import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_widgets/inputs.dart';

/// Parses a CSS-like color string into [HSVColor].
HSVColor? parseColorString(String raw) {
  final value = raw.trim();
  if (value.isEmpty) {
    return null;
  }
  if (value.startsWith('#')) {
    final color = parseHexColor(value);
    return color == null ? null : HSVColor.fromColor(color);
  }
  final rgb = RegExp(
    r'rgba?\(\s*([\d.]+)\s*,\s*([\d.]+)\s*,\s*([\d.]+)(?:\s*,\s*([\d.]+))?\s*\)',
  ).firstMatch(value);
  if (rgb != null) {
    final color = Color.fromARGB(
      ((double.tryParse(rgb.group(4) ?? '1') ?? 1) * 255).round(),
      (double.tryParse(rgb.group(1)!) ?? 0).round(),
      (double.tryParse(rgb.group(2)!) ?? 0).round(),
      (double.tryParse(rgb.group(3)!) ?? 0).round(),
    );
    return HSVColor.fromColor(color);
  }
  final hsl = RegExp(
    r'hsla?\(\s*([\d.]+)\s*,\s*([\d.]+)%\s*,\s*([\d.]+)%(?:\s*,\s*([\d.]+))?\s*\)',
  ).firstMatch(value);
  if (hsl != null) {
    final color = HSLColor.fromAHSL(
      double.tryParse(hsl.group(4) ?? '1') ?? 1,
      double.tryParse(hsl.group(1)!) ?? 0,
      (double.tryParse(hsl.group(2)!) ?? 0) / 100,
      (double.tryParse(hsl.group(3)!) ?? 0) / 100,
    ).toColor();
    return HSVColor.fromColor(color);
  }
  return parseHexColor(value) != null
      ? HSVColor.fromColor(parseHexColor(value)!)
      : null;
}

/// Formats [hsv] in the given [format].
String formatColorString(HSVColor hsv, ColorFormat format) {
  final color = hsv.toColor();
  final r = (color.r * 255).round();
  final g = (color.g * 255).round();
  final b = (color.b * 255).round();
  final a = color.a;
  String hex(int n) => n.toRadixString(16).padLeft(2, '0');
  final hsl = HSLColor.fromColor(color);
  return switch (format) {
    ColorFormat.hex => '#${hex(r)}${hex(g)}${hex(b)}',
    ColorFormat.hexa => '#${hex(r)}${hex(g)}${hex(b)}${hex((a * 255).round())}',
    ColorFormat.rgb => 'rgb($r, $g, $b)',
    ColorFormat.rgba => 'rgba($r, $g, $b, ${a.toStringAsFixed(2)})',
    ColorFormat.hsl =>
      'hsl(${hsl.hue.round()}, ${(hsl.saturation * 100).round()}%, '
          '${(hsl.lightness * 100).round()}%)',
    ColorFormat.hsla =>
      'hsla(${hsl.hue.round()}, ${(hsl.saturation * 100).round()}%, '
          '${(hsl.lightness * 100).round()}%, ${a.toStringAsFixed(2)})',
  };
}

/// Hue rainbow gradient (0–360).
const List<Color> hueRainbow = [
  Color(0xFFFF0000),
  Color(0xFFFFFF00),
  Color(0xFF00FF00),
  Color(0xFF00FFFF),
  Color(0xFF0000FF),
  Color(0xFFFF00FF),
  Color(0xFFFF0000),
];

/// A horizontal color slider used by hue and alpha.
class BasicColorSlider extends StatelessWidget {
  /// Creates a color slider.
  const BasicColorSlider({
    required this.value,
    required this.maxValue,
    required this.overlays,
    this.onChanged,
    this.onChangeEnd,
    this.size = 'md',
    this.thumbColor,
    super.key,
  });

  /// Current value.
  final double value;

  /// Domain maximum.
  final double maxValue;

  /// Background layers, back to front.
  final List<Gradient?> overlays;

  /// Value changes.
  final ValueChanged<double>? onChanged;

  /// Drag end.
  final ValueChanged<double>? onChangeEnd;

  /// Size token.
  final String size;

  /// Thumb fill.
  final Color? thumbColor;

  @override
  Widget build(BuildContext context) {
    final height = inputSizeToken(sliderSizes, size) * 2 + 8;
    return SizedBox(
      height: height,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          void setFrom(double dx, {bool end = false}) {
            final next = (dx / width).clamp(0.0, 1.0) * maxValue;
            onChanged?.call(next);
            if (end) {
              onChangeEnd?.call(next);
            }
          }

          return GestureDetector(
            onTapDown: (d) => setFrom(d.localPosition.dx),
            onHorizontalDragUpdate: (d) => setFrom(d.localPosition.dx),
            onHorizontalDragEnd: (_) => onChangeEnd?.call(value),
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                for (final overlay in overlays)
                  if (overlay != null)
                    Positioned.fill(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: overlay,
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                Positioned(
                  left: width * (value / maxValue) - 8,
                  child: SizedBox(
                    width: 16,
                    height: 16,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: thumbColor ?? const Color(0xFFFFFFFF),
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFFFFFFFF),
                          width: 2,
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x33000000),
                            blurRadius: 2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

/// Saturation / value square.
class BasicSaturation extends StatelessWidget {
  /// Creates a saturation square.
  const BasicSaturation({
    required this.hsv,
    this.onChanged,
    super.key,
  });

  /// Current color.
  final HSVColor hsv;

  /// Saturation/value changes.
  final ValueChanged<HSVColor>? onChanged;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 10,
      child: LayoutBuilder(
        builder: (context, constraints) {
          return GestureDetector(
            onPanDown: (d) => _set(d.localPosition, constraints),
            onPanUpdate: (d) => _set(d.localPosition, constraints),
            child: CustomPaint(
              painter: _SaturationPainter(hsv: hsv),
              child: Stack(
                children: [
                  Positioned(
                    left: hsv.saturation * constraints.maxWidth - 8,
                    top: (1 - hsv.value) * constraints.maxHeight - 8,
                    child: const SizedBox(
                      width: 16,
                      height: 16,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.fromBorderSide(
                            BorderSide(color: Color(0xFFFFFFFF), width: 2),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void _set(Offset local, BoxConstraints constraints) {
    final s = (local.dx / constraints.maxWidth).clamp(0.0, 1.0);
    final v = 1 - (local.dy / constraints.maxHeight).clamp(0.0, 1.0);
    onChanged?.call(hsv.withSaturation(s).withValue(v));
  }
}

class _SaturationPainter extends CustomPainter {
  _SaturationPainter({required this.hsv});

  final HSVColor hsv;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final hue = HSVColor.fromAHSV(1, hsv.hue, 1, 1).toColor();
    canvas
      ..drawRect(
        rect,
        Paint()
          ..shader = LinearGradient(
            colors: [const Color(0xFFFFFFFF), hue],
          ).createShader(rect),
      )
      ..drawRect(
        rect,
        Paint()
          ..shader = const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0x00000000), Color(0xFF000000)],
          ).createShader(rect),
      );
  }

  @override
  bool shouldRepaint(covariant _SaturationPainter oldDelegate) {
    return oldDelegate.hsv.hue != hsv.hue;
  }
}

/// Unused math import is for AngleSlider; keep round helper.
double roundTo(double value, int digits) {
  final factor = math.pow(10, digits).toDouble();
  return (value * factor).round() / factor;
}
