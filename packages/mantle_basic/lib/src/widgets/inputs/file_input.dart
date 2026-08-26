import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/inputs/input_field.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_widgets/inputs.dart';

/// Baseline [FileInputDelegate]: tap callback / display stub.
class BasicFileInputDelegate extends FileInputDelegate {
  /// Creates a baseline file input delegate.
  const BasicFileInputDelegate();

  @override
  Widget root(FileInputContext context) {
    final files = context.value ?? const <MantlePickedFile>[];
    final label = files.isEmpty
        ? (context.placeholder ?? 'Pick file')
        : files.map((file) => file.name).join(', ');
    return BasicInputWrapper(
      size: context.size,
      label: context.label,
      description: context.description,
      error: context.error,
      required: context.required,
      withAsterisk: context.withAsterisk,
      child: GestureDetector(
        onTap: context.disabled || context.readOnly ? null : context.onPick,
        child: BasicInputChrome(
          variant: inputVariantName(context.variant),
          size: context.size,
          radius: context.radius,
          disabled: context.disabled,
          pointer: true,
          error: context.error != null,
          rightSection: context.clearable && files.isNotEmpty
              ? GestureDetector(
                  onTap: context.disabled
                      ? null
                      : () => context.onChanged?.call(const []),
                  child: const Text('×'),
                )
              : null,
          child: Text(
            label,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
