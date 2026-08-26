import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/inputs/input_field.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_widgets/inputs.dart';

/// Baseline [TextareaDelegate].
class BasicTextareaDelegate extends TextareaDelegate {
  /// Creates a baseline textarea delegate.
  const BasicTextareaDelegate();

  @override
  Widget root(TextareaContext context) {
    final minRows = context.minRows;
    final maxRows = context.maxRows;
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
        disabled: context.disabled,
        readOnly: context.readOnly,
        error: context.error != null,
        multiline: true,
        minLines: minRows,
        maxLines: context.autosize ? maxRows : minRows,
      ),
    );
  }
}
