import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/inputs/input_field.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/inputs.dart';

/// Baseline [RadioDelegate].
class BasicRadioDelegate extends RadioDelegate {
  /// Creates a baseline radio delegate.
  const BasicRadioDelegate();

  @override
  Widget root(RadioContext context) {
    return _RadioRoot(context: context);
  }
}

class _RadioRoot extends StatefulWidget {
  const _RadioRoot({required this.context});

  final RadioContext context;

  @override
  State<_RadioRoot> createState() => _RadioRootState();
}

class _RadioRootState extends State<_RadioRoot> {
  bool? _uncontrolled;

  @override
  Widget build(BuildContext context) {
    final ctx = widget.context;
    final group = RadioGroupScope.maybeOf(context);
    final checked = group != null
        ? group.value == ctx.value
        : (ctx.checked ?? _uncontrolled ?? false);
    final disabled = ctx.disabled || (group?.disabled ?? false);
    final theme = MantleTheme.of(context);
    final scheme = MantleProvider.colorSchemeOf(context);
    final size = inputSizeToken(checkboxSizes, ctx.size) * theme.scale;
    final color = resolveThemeColor(theme, scheme, ctx.color);
    final outline = ctx.variant == RadioVariant.outline;
    final border = checked
        ? color
        : (scheme == MantleColorScheme.dark
              ? theme.colors['dark'][4]
              : theme.colors['gray'][4]);
    final iconColor = ctx.iconColor != null
        ? resolveThemeColor(theme, scheme, ctx.iconColor)
        : color;

    return BasicInlineInput(
      labelPosition: ctx.labelPosition,
      label: ctx.label,
      description: ctx.description,
      error: ctx.error,
      onTap: disabled
          ? null
          : () {
              if (group?.readOnly ?? false) {
                return;
              }
              if (group != null) {
                group.onChanged?.call(ctx.value);
              } else {
                if (ctx.checked == null) {
                  setState(() => _uncontrolled = true);
                }
                ctx.onChanged?.call(true);
              }
            },
      control: SizedBox(
        width: size,
        height: size,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: checked && !outline ? color : const Color(0x00000000),
            shape: BoxShape.circle,
            border: Border.all(color: border),
          ),
          child: checked
              ? Center(
                  child: SizedBox(
                    width: size * 0.4,
                    height: size * 0.4,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: outline ? iconColor : theme.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                )
              : null,
        ),
      ),
    );
  }
}

/// Baseline [RadioGroupDelegate].
class BasicRadioGroupDelegate extends RadioGroupDelegate {
  /// Creates a baseline radio group delegate.
  const BasicRadioGroupDelegate();

  @override
  Widget root(RadioGroupContext context) {
    return _RadioGroupRoot(context: context);
  }
}

class _RadioGroupRoot extends StatefulWidget {
  const _RadioGroupRoot({required this.context});

  final RadioGroupContext context;

  @override
  State<_RadioGroupRoot> createState() => _RadioGroupRootState();
}

class _RadioGroupRootState extends State<_RadioGroupRoot> {
  String? _uncontrolled;

  String? get _value =>
      widget.context.value ?? _uncontrolled ?? widget.context.defaultValue;

  @override
  Widget build(BuildContext context) {
    final ctx = widget.context;
    return BasicInputWrapper(
      size: ctx.size,
      label: ctx.label,
      description: ctx.description,
      error: ctx.error,
      child: RadioGroupScope(
        value: _value,
        disabled: ctx.disabled,
        readOnly: ctx.readOnly,
        size: ctx.size,
        onChanged: (next) {
          if (ctx.value == null) {
            setState(() => _uncontrolled = next);
          }
          ctx.onChanged?.call(next);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: ctx.children,
        ),
      ),
    );
  }
}
