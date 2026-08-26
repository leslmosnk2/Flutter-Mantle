import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/inputs/input_field.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/inputs.dart';

/// Baseline [NativeSelectDelegate].
class BasicNativeSelectDelegate extends NativeSelectDelegate {
  /// Creates a baseline native select delegate.
  const BasicNativeSelectDelegate();

  @override
  Widget root(NativeSelectContext context) {
    return _NativeSelectRoot(context: context);
  }
}

class _NativeSelectRoot extends StatefulWidget {
  const _NativeSelectRoot({required this.context});

  final NativeSelectContext context;

  @override
  State<_NativeSelectRoot> createState() => _NativeSelectRootState();
}

class _NativeSelectRootState extends State<_NativeSelectRoot> {
  var _open = false;
  String? _uncontrolled;

  String? get _value =>
      widget.context.value ?? _uncontrolled ?? widget.context.defaultValue;

  void _select(String value) {
    if (widget.context.disabled) {
      return;
    }
    if (widget.context.value == null) {
      setState(() => _uncontrolled = value);
    }
    setState(() => _open = false);
    widget.context.onChanged?.call(value);
  }

  @override
  Widget build(BuildContext context) {
    final ctx = widget.context;
    final selected = ctx.data.where((item) => item.value == _value);
    final label = selected.isEmpty
        ? (ctx.placeholder ?? 'Select')
        : selected.first.label;
    final theme = MantleTheme.of(context);
    return BasicInputWrapper(
      size: ctx.size,
      label: ctx.label,
      description: ctx.description,
      error: ctx.error,
      required: ctx.required,
      withAsterisk: ctx.withAsterisk,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onTap: ctx.disabled ? null : () => setState(() => _open = !_open),
            child: BasicInputChrome(
              variant: inputVariantName(ctx.variant),
              size: ctx.size,
              radius: ctx.radius,
              disabled: ctx.disabled,
              pointer: true,
              error: ctx.error != null,
              rightSection: const Text('▾'),
              child: Text(label),
            ),
          ),
          if (_open)
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: theme.white,
                  border: Border.all(color: theme.colors['gray'][4]),
                  borderRadius: ctx.radius,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    for (final item in ctx.data)
                      GestureDetector(
                        onTap: item.disabled ? null : () => _select(item.value),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 8,
                          ),
                          child: Text(
                            item.label,
                            style: TextStyle(
                              color: item.disabled
                                  ? theme.colors['gray'][5]
                                  : theme.black,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
