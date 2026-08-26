import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/inputs/input_field.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_widgets/inputs.dart';

/// Baseline [TextInputDelegate].
class BasicTextInputDelegate extends TextInputDelegate {
  /// Creates a baseline text input delegate.
  const BasicTextInputDelegate();

  @override
  Widget root(TextInputContext context) {
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
        onChanged: context.onChanged,
        placeholder: context.placeholder,
        leftSection: context.leftSection,
        rightSection: context.rightSection,
        disabled: context.disabled,
        readOnly: context.readOnly,
        error: context.error != null,
      ),
    );
  }
}
