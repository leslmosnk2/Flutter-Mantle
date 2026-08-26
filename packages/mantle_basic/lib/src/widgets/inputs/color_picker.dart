import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/inputs/color_utils.dart';
import 'package:mantle_basic/src/widgets/inputs/input_field.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/inputs.dart';

/// Baseline [ColorPickerDelegate].
class BasicColorPickerDelegate extends ColorPickerDelegate {
  /// Creates a baseline color picker delegate.
  const BasicColorPickerDelegate();

  @override
  Widget root(ColorPickerContext context) {
    return _ColorPickerRoot(context: context);
  }
}

class _ColorPickerRoot extends StatefulWidget {
  const _ColorPickerRoot({required this.context});

  final ColorPickerContext context;

  @override
  State<_ColorPickerRoot> createState() => _ColorPickerRootState();
}

class _ColorPickerRootState extends State<_ColorPickerRoot> {
  HSVColor? _hsv;

  HSVColor get _value {
    final raw =
        widget.context.value ?? widget.context.defaultValue ?? '#ffffff';
    return _hsv ??
        parseColorString(raw) ??
        HSVColor.fromColor(const Color(0xFFFFFFFF));
  }

  void _emit(HSVColor hsv, {bool end = false}) {
    final formatted = formatColorString(hsv, widget.context.format);
    setState(() => _hsv = hsv);
    widget.context.onChanged?.call(formatted);
    if (end) {
      widget.context.onChangeEnd?.call(formatted);
    }
  }

  @override
  Widget build(BuildContext context) {
    final ctx = widget.context;
    final hsv = _value;
    final width = ctx.fullWidth ? double.infinity : 200.0;
    return SizedBox(
      width: width == double.infinity ? null : width,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (ctx.withPicker) ...[
            BasicSaturation(
              hsv: hsv,
              onChanged: _emit,
            ),
            const SizedBox(height: 8),
            BasicColorSlider(
              value: hsv.hue,
              maxValue: 360,
              size: ctx.size,
              thumbColor: HSVColor.fromAHSV(1, hsv.hue, 1, 1).toColor(),
              overlays: const [
                LinearGradient(colors: hueRainbow),
              ],
              onChanged: (hue) => _emit(hsv.withHue(hue)),
              onChangeEnd: (hue) => _emit(hsv.withHue(hue), end: true),
            ),
            const SizedBox(height: 8),
            BasicColorSlider(
              value: hsv.alpha,
              maxValue: 1,
              size: ctx.size,
              overlays: [
                LinearGradient(
                  colors: [
                    hsv.toColor().withValues(alpha: 0),
                    hsv.toColor().withValues(alpha: 1),
                  ],
                ),
              ],
              onChanged: (alpha) => _emit(hsv.withAlpha(alpha)),
              onChangeEnd: (alpha) => _emit(hsv.withAlpha(alpha), end: true),
            ),
          ],
          if (ctx.swatches != null && ctx.swatches!.isNotEmpty) ...[
            const SizedBox(height: 8),
            Wrap(
              spacing: 4,
              runSpacing: 4,
              children: [
                for (final swatch in ctx.swatches!)
                  GestureDetector(
                    onTap: () {
                      final parsed = parseColorString(swatch);
                      if (parsed != null) {
                        _emit(parsed, end: true);
                      }
                    },
                    child: SizedBox(
                      width: 20,
                      height: 20,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color:
                              parseHexColor(swatch) ??
                              parseColorString(swatch)?.toColor(),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}

/// Baseline [ColorInputDelegate].
class BasicColorInputDelegate extends ColorInputDelegate {
  /// Creates a baseline color input delegate.
  const BasicColorInputDelegate();

  @override
  Widget root(ColorInputContext context) {
    return _ColorInputRoot(context: context);
  }
}

class _ColorInputRoot extends StatefulWidget {
  const _ColorInputRoot({required this.context});

  final ColorInputContext context;

  @override
  State<_ColorInputRoot> createState() => _ColorInputRootState();
}

class _ColorInputRootState extends State<_ColorInputRoot> {
  var _open = false;
  String? _text;

  String get _value =>
      widget.context.value ?? _text ?? widget.context.defaultValue ?? '';

  @override
  Widget build(BuildContext context) {
    final ctx = widget.context;
    final parsed = parseColorString(_value);
    return BasicInputWrapper(
      size: ctx.size,
      label: ctx.label,
      description: ctx.description,
      error: ctx.error,
      required: ctx.required,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onTap: ctx.disabled ? null : () => setState(() => _open = !_open),
            child: BasicTextInputBody(
              variant: inputVariantName(ctx.variant),
              size: ctx.size,
              radius: ctx.radius,
              value: ctx.value,
              defaultValue: ctx.defaultValue,
              onChanged: ctx.disallowInput
                  ? null
                  : (raw) {
                      setState(() => _text = raw);
                      ctx.onChanged?.call(raw);
                    },
              placeholder: ctx.placeholder,
              disabled: ctx.disabled,
              readOnly: ctx.disallowInput,
              error: ctx.error != null,
              leftSection: ctx.withPreview
                  ? SizedBox(
                      width: 16,
                      height: 16,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: parsed?.toColor() ?? const Color(0x00000000),
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: MantleTheme.of(context).colors['gray'][4],
                          ),
                        ),
                      ),
                    )
                  : null,
            ),
          ),
          if (_open && ctx.withPicker)
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: ColorPicker(
                value: _value.isEmpty ? null : _value,
                format: ctx.format,
                swatches: ctx.swatches,
                onChanged: ctx.onChanged,
              ),
            ),
        ],
      ),
    );
  }
}

/// Baseline [HueSliderDelegate].
class BasicHueSliderDelegate extends HueSliderDelegate {
  /// Creates a baseline hue slider delegate.
  const BasicHueSliderDelegate();

  @override
  Widget root(HueSliderContext context) {
    return BasicColorSlider(
      value: context.value,
      maxValue: 360,
      size: context.size,
      thumbColor: HSVColor.fromAHSV(1, context.value, 1, 1).toColor(),
      overlays: const [LinearGradient(colors: hueRainbow)],
      onChanged: context.onChanged,
      onChangeEnd: context.onChangeEnd,
    );
  }
}

/// Baseline [AlphaSliderDelegate].
class BasicAlphaSliderDelegate extends AlphaSliderDelegate {
  /// Creates a baseline alpha slider delegate.
  const BasicAlphaSliderDelegate();

  @override
  Widget root(AlphaSliderContext context) {
    final parsed =
        parseColorString(context.color)?.toColor() ??
        parseHexColor(context.color) ??
        const Color(0xFF000000);
    return BasicColorSlider(
      value: context.value,
      maxValue: 1,
      size: context.size,
      overlays: [
        LinearGradient(
          colors: [
            parsed.withValues(alpha: 0),
            parsed.withValues(alpha: 1),
          ],
        ),
      ],
      onChanged: (value) => context.onChanged?.call(roundTo(value, 2)),
      onChangeEnd: (value) => context.onChangeEnd?.call(roundTo(value, 2)),
    );
  }
}
