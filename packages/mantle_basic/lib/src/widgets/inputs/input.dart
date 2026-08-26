import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/inputs/input_field.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_widgets/inputs.dart';

/// Baseline [InputDelegate]: chrome around an editable field.
class BasicInputDelegate extends InputDelegate {
  /// Creates a baseline input delegate.
  const BasicInputDelegate();

  @override
  Widget root(InputContext context) {
    return BasicTextInputBody(
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
      pointer: context.pointer,
      multiline: context.multiline,
      maxLines: context.multiline ? null : 1,
      error: context.error != null,
      withErrorStyles: context.withErrorStyles,
    );
  }
}

/// Baseline [InputWrapperDelegate]: label, description, input, error.
class BasicInputWrapperDelegate extends InputWrapperDelegate {
  /// Creates a baseline wrapper delegate.
  const BasicInputWrapperDelegate();

  @override
  Widget root(InputWrapperContext context) {
    return BasicInputWrapper(
      size: context.size,
      label: context.label,
      description: context.description,
      error: context.error,
      required: context.required,
      withAsterisk: context.withAsterisk,
      child: context.child,
    );
  }
}
