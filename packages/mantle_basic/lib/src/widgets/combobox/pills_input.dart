import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/combobox/combobox_chrome.dart';
import 'package:mantle_basic/src/widgets/inputs/input_field.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [PillsInputDelegate].
class BasicPillsInputDelegate extends PillsInputDelegate {
  /// Creates a baseline pills-input delegate.
  const BasicPillsInputDelegate();

  @override
  Widget root(PillsInputContext context) {
    return wrapComboboxField(
      size: context.size,
      label: context.label,
      description: context.description,
      error: context.error,
      child: PillGroupScope(
        size: context.size,
        disabled: context.disabled,
        child: BasicInputChrome(
          variant: 'default',
          size: context.size,
          radius: context.style.radius ?? context.radius,
          disabled: context.disabled,
          error: context.error != null,
          multiline: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 4),
            child: Wrap(
              spacing: pillGroupGaps[context.size] ?? 8,
              runSpacing: 4,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: context.children,
            ),
          ),
        ),
      ),
    );
  }
}

/// Baseline [PillsInputFieldDelegate].
class BasicPillsInputFieldDelegate extends PillsInputFieldDelegate {
  /// Creates a baseline pills-input-field delegate.
  const BasicPillsInputFieldDelegate();

  @override
  Widget root(PillsInputFieldContext context) {
    if (context.type == PillsInputFieldType.hidden) {
      return const SizedBox.shrink();
    }
    final theme = MantleTheme.of(context.context);
    final scheme = MantleProvider.colorSchemeOf(context.context);
    final group = PillGroupScope.maybeOf(context.context);
    final size = group?.size ?? 'sm';
    final fontSize =
        (theme.typography.fontSize.getOrNull(size) ?? 14) * theme.scale;
    final colors = resolveInputChrome(
      theme: theme,
      scheme: scheme,
      variant: 'default',
      hasError: false,
      withErrorStyles: true,
    );
    final field = ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 100),
      child: BasicEditableField(
        value: context.value,
        onChanged: context.onChanged,
        placeholder: context.placeholder,
        style: TextStyle(fontSize: fontSize, color: colors.foreground),
        placeholderStyle: TextStyle(
          fontSize: fontSize,
          color: colors.placeholder,
        ),
        cursorColor: colors.focusBorder,
        enabled: !context.disabled && !(group?.disabled ?? false),
        readOnly: context.pointer,
      ),
    );
    if (context.type == PillsInputFieldType.auto &&
        (context.type == PillsInputFieldType.auto && context.value.isEmpty)) {
      return SizedBox(width: 8, height: fontSize, child: field);
    }
    return field;
  }
}
