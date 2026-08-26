import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/inputs/input_field.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_widgets/inputs.dart';

/// Baseline [NumberInputDelegate].
class BasicNumberInputDelegate extends NumberInputDelegate {
  /// Creates a baseline number input delegate.
  const BasicNumberInputDelegate();

  /// Increment control key.
  static const Key incrementKey = ValueKey<String>(
    'mantle.number.increment',
  );

  /// Decrement control key.
  static const Key decrementKey = ValueKey<String>(
    'mantle.number.decrement',
  );

  @override
  Widget root(NumberInputContext context) {
    return _NumberInputRoot(context: context);
  }
}

class _NumberInputRoot extends StatefulWidget {
  const _NumberInputRoot({required this.context});

  final NumberInputContext context;

  @override
  State<_NumberInputRoot> createState() => _NumberInputRootState();
}

class _NumberInputRootState extends State<_NumberInputRoot> {
  double? _uncontrolled;

  double get _value {
    return widget.context.value ??
        _uncontrolled ??
        widget.context.defaultValue ??
        0;
  }

  void _commit(double next) {
    var value = next;
    if (!widget.context.allowNegative && value < 0) {
      value = 0;
    }
    final min = widget.context.min;
    final max = widget.context.max;
    if (min != null && value < min) value = min;
    if (max != null && value > max) value = max;
    if (widget.context.value == null) {
      setState(() => _uncontrolled = value);
    }
    widget.context.onChanged?.call(value);
  }

  void _step(double delta) {
    if (widget.context.disabled || widget.context.readOnly) {
      return;
    }
    _commit(_value + delta);
  }

  @override
  Widget build(BuildContext context) {
    final ctx = widget.context;
    final text = ctx.value != null
        ? _format(ctx.value!)
        : (_uncontrolled != null ? _format(_uncontrolled!) : null);
    return BasicInputWrapper(
      size: ctx.size,
      label: ctx.label,
      description: ctx.description,
      error: ctx.error,
      required: ctx.required,
      withAsterisk: ctx.withAsterisk,
      child: BasicTextInputBody(
        variant: inputVariantName(ctx.variant),
        size: ctx.size,
        radius: ctx.radius,
        value: text,
        defaultValue: ctx.defaultValue != null
            ? _format(ctx.defaultValue!)
            : null,
        onChanged: (raw) {
          final parsed = double.tryParse(raw);
          if (parsed == null) {
            return;
          }
          if (ctx.clampBehavior == NumberClampBehavior.strict) {
            if (ctx.min != null && parsed < ctx.min!) return;
            if (ctx.max != null && parsed > ctx.max!) return;
          }
          if (ctx.value == null) {
            setState(() => _uncontrolled = parsed);
          }
          ctx.onChanged?.call(parsed);
        },
        placeholder: ctx.placeholder,
        disabled: ctx.disabled,
        readOnly: ctx.readOnly,
        error: ctx.error != null,
        keyboardType: TextInputType.numberWithOptions(
          decimal: ctx.allowDecimal,
          signed: ctx.allowNegative,
        ),
        rightSection: ctx.hideControls
            ? null
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    key: BasicNumberInputDelegate.incrementKey,
                    onTap: () => _step(ctx.step),
                    child: const Text('▲'),
                  ),
                  GestureDetector(
                    key: BasicNumberInputDelegate.decrementKey,
                    onTap: () => _step(-ctx.step),
                    child: const Text('▼'),
                  ),
                ],
              ),
      ),
    );
  }

  String _format(double value) {
    if (value == value.roundToDouble()) {
      return '${value.toInt()}';
    }
    return '$value';
  }
}
