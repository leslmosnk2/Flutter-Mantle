import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/inputs/input_field.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_widgets/inputs.dart';

/// Baseline [JsonInputDelegate].
class BasicJsonInputDelegate extends JsonInputDelegate {
  /// Creates a baseline JSON input delegate.
  const BasicJsonInputDelegate();

  @override
  Widget root(JsonInputContext context) {
    return _JsonInputRoot(context: context);
  }
}

class _JsonInputRoot extends StatefulWidget {
  const _JsonInputRoot({required this.context});

  final JsonInputContext context;

  @override
  State<_JsonInputRoot> createState() => _JsonInputRootState();
}

class _JsonInputRootState extends State<_JsonInputRoot> {
  var _invalid = false;
  String? _text;

  String get _value =>
      widget.context.value ?? _text ?? widget.context.defaultValue ?? '';

  bool _isValid(String raw) {
    if (raw.trim().isEmpty) {
      return true;
    }
    try {
      jsonDecode(raw);
      return true;
    } on FormatException {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final ctx = widget.context;
    final error = _invalid ? (ctx.validationError ?? ctx.error) : ctx.error;
    return BasicInputWrapper(
      size: ctx.size,
      label: ctx.label,
      description: ctx.description,
      error: error,
      required: ctx.required,
      withAsterisk: ctx.withAsterisk,
      child: BasicTextInputBody(
        variant: inputVariantName(ctx.variant),
        size: ctx.size,
        radius: ctx.radius,
        value: ctx.value,
        defaultValue: ctx.defaultValue,
        onChanged: (value) {
          setState(() {
            _text = value;
            _invalid = false;
          });
          ctx.onChanged?.call(value);
        },
        placeholder: ctx.placeholder,
        disabled: ctx.disabled,
        readOnly: ctx.readOnly,
        error: error != null,
        multiline: true,
        minLines: ctx.minRows,
        maxLines: null,
        monospace: true,
        onSubmitted: (_) => _handleBlur(),
        keyboardType: TextInputType.multiline,
      ),
    );
  }

  void _handleBlur() {
    final ctx = widget.context;
    final valid = _isValid(_value);
    setState(() => _invalid = !valid);
    if (valid && ctx.formatOnBlur && _value.trim().isNotEmpty) {
      final formatted = const JsonEncoder.withIndent('  ').convert(
        jsonDecode(_value),
      );
      if (ctx.value == null) {
        setState(() => _text = formatted);
      }
      ctx.onChanged?.call(formatted);
    }
  }
}
