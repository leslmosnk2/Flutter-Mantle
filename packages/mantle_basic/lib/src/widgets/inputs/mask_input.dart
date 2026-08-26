import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/inputs/input_field.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_widgets/inputs.dart';

/// Applies a Mantine-style mask string (`9`, `a`, `A`, `*`).
String applyInputMask(String raw, String mask, {String slotChar = '_'}) {
  final out = StringBuffer();
  var source = 0;
  for (var i = 0; i < mask.length; i++) {
    final token = mask[i];
    if (token == r'\' && i + 1 < mask.length) {
      out.write(mask[i + 1]);
      i++;
      continue;
    }
    if (_isMaskToken(token)) {
      while (source < raw.length && !_matchesToken(token, raw[source])) {
        source++;
      }
      if (source >= raw.length) {
        break;
      }
      var ch = raw[source++];
      if (token == 'A') {
        ch = ch.toUpperCase();
      }
      out.write(ch);
    } else {
      out.write(token);
    }
  }
  return out.toString();
}

bool _isMaskToken(String token) => '9aA*#'.contains(token);

bool _matchesToken(String token, String ch) {
  return switch (token) {
    '9' => RegExp(r'\d').hasMatch(ch),
    'a' => RegExp(r'[A-Za-z]').hasMatch(ch),
    'A' => RegExp(r'[A-Za-z]').hasMatch(ch),
    '*' => RegExp(r'[A-Za-z0-9]').hasMatch(ch),
    '#' => RegExp(r'[-+0-9]').hasMatch(ch),
    _ => false,
  };
}

/// Baseline [MaskInputDelegate].
class BasicMaskInputDelegate extends MaskInputDelegate {
  /// Creates a baseline mask input delegate.
  const BasicMaskInputDelegate();

  @override
  Widget root(MaskInputContext context) {
    return BasicInputWrapper(
      size: context.size,
      label: context.label,
      description: context.description,
      error: context.error,
      required: context.required,
      withAsterisk: context.withAsterisk,
      child: BasicTextInputBody(
        variant: inputVariantName(context.variant),
        size: context.size,
        radius: context.radius,
        value: context.value,
        defaultValue: context.defaultValue,
        onChanged: (raw) {
          final masked = applyInputMask(
            raw,
            context.mask,
            slotChar: context.slotChar,
          );
          context.onChanged?.call(masked);
        },
        placeholder: context.placeholder,
        disabled: context.disabled,
        readOnly: context.readOnly,
        error: context.error != null,
      ),
    );
  }
}
