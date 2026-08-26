import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/inputs/input_field.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_widgets/inputs.dart';

/// Baseline [PasswordInputDelegate].
class BasicPasswordInputDelegate extends PasswordInputDelegate {
  /// Creates a baseline password delegate.
  const BasicPasswordInputDelegate();

  /// Key on the visibility toggle.
  static const Key visibilityToggleKey = ValueKey<String>(
    'mantle.password.visibility',
  );

  @override
  Widget root(PasswordInputContext context) {
    return _PasswordInputRoot(context: context);
  }
}

class _PasswordInputRoot extends StatefulWidget {
  const _PasswordInputRoot({required this.context});

  final PasswordInputContext context;

  @override
  State<_PasswordInputRoot> createState() => _PasswordInputRootState();
}

class _PasswordInputRootState extends State<_PasswordInputRoot> {
  bool? _visible;

  bool get _revealed {
    return widget.context.visible ?? _visible ?? widget.context.defaultVisible;
  }

  @override
  Widget build(BuildContext context) {
    final ctx = widget.context;
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
        value: ctx.value,
        defaultValue: ctx.defaultValue,
        onChanged: ctx.onChanged,
        placeholder: ctx.placeholder,
        leftSection: ctx.leftSection,
        disabled: ctx.disabled,
        readOnly: ctx.readOnly,
        error: ctx.error != null,
        obscureText: !_revealed,
        rightSection: GestureDetector(
          key: BasicPasswordInputDelegate.visibilityToggleKey,
          onTap: ctx.disabled
              ? null
              : () {
                  final next = !_revealed;
                  setState(() => _visible = next);
                  ctx.onVisibilityChange?.call(next);
                },
          child: Text(_revealed ? 'Hide' : 'Show'),
        ),
      ),
    );
  }
}
