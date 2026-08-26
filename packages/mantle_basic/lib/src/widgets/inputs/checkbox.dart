import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/inputs/input_field.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/inputs.dart';

/// Baseline [CheckboxDelegate].
class BasicCheckboxDelegate extends CheckboxDelegate {
  /// Creates a baseline checkbox delegate.
  const BasicCheckboxDelegate();

  @override
  Widget root(CheckboxContext context) {
    return _CheckboxRoot(context: context);
  }
}

class _CheckboxRoot extends StatefulWidget {
  const _CheckboxRoot({required this.context});

  final CheckboxContext context;

  @override
  State<_CheckboxRoot> createState() => _CheckboxRootState();
}

class _CheckboxRootState extends State<_CheckboxRoot> {
  bool? _uncontrolled;

  @override
  Widget build(BuildContext context) {
    final ctx = widget.context;
    final group = CheckboxGroupScope.maybeOf(context);
    final inGroup = group != null && ctx.value != null;
    final checked = inGroup
        ? group.value.contains(ctx.value)
        : (ctx.checked ?? _uncontrolled ?? ctx.defaultChecked);
    final disabled = ctx.disabled || (group?.disabled ?? false);
    final theme = MantleTheme.of(context);
    final scheme = MantleProvider.colorSchemeOf(context);
    final size = inputSizeToken(checkboxSizes, ctx.size) * theme.scale;
    final color = resolveThemeColor(theme, scheme, ctx.color);
    final outline = ctx.variant == CheckboxVariant.outline;
    final fill = checked && !outline ? color : const Color(0x00000000);
    final border = ctx.indeterminate || checked
        ? color
        : (scheme == MantleColorScheme.dark
              ? theme.colors['dark'][4]
              : theme.colors['gray'][4]);
    final iconColor = ctx.iconColor != null
        ? resolveThemeColor(theme, scheme, ctx.iconColor)
        : (outline ? color : theme.white);

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
              if (inGroup) {
                final current = [...group.value];
                if (current.contains(ctx.value)) {
                  current.remove(ctx.value);
                } else {
                  current.add(ctx.value!);
                }
                group.onChanged?.call(current);
              } else {
                final next = !checked;
                if (ctx.checked == null) {
                  setState(() => _uncontrolled = next);
                }
                ctx.onChanged?.call(next);
              }
            },
      control: SizedBox(
        width: size,
        height: size,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: ctx.indeterminate ? color : fill,
            borderRadius: ctx.radius,
            border: Border.all(color: border),
          ),
          child: ctx.indeterminate
              ? Center(
                  child: SizedBox(
                    width: size * 0.5,
                    height: 2,
                    child: ColoredBox(color: iconColor),
                  ),
                )
              : checked
              ? Center(
                  child: CustomPaint(
                    size: Size.square(size * 0.55),
                    painter: _CheckPainter(color: iconColor),
                  ),
                )
              : null,
        ),
      ),
    );
  }
}

class _CheckPainter extends CustomPainter {
  _CheckPainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;
    final path = Path()
      ..moveTo(size.width * 0.15, size.height * 0.55)
      ..lineTo(size.width * 0.4, size.height * 0.8)
      ..lineTo(size.width * 0.85, size.height * 0.2);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _CheckPainter oldDelegate) {
    return oldDelegate.color != color;
  }
}

/// Baseline [CheckboxGroupDelegate].
class BasicCheckboxGroupDelegate extends CheckboxGroupDelegate {
  /// Creates a baseline checkbox group delegate.
  const BasicCheckboxGroupDelegate();

  @override
  Widget root(CheckboxGroupContext context) {
    return _CheckboxGroupRoot(context: context);
  }
}

class _CheckboxGroupRoot extends StatefulWidget {
  const _CheckboxGroupRoot({required this.context});

  final CheckboxGroupContext context;

  @override
  State<_CheckboxGroupRoot> createState() => _CheckboxGroupRootState();
}

class _CheckboxGroupRootState extends State<_CheckboxGroupRoot> {
  List<String>? _uncontrolled;

  List<String> get _value =>
      widget.context.value ??
      _uncontrolled ??
      widget.context.defaultValue ??
      const [];

  @override
  Widget build(BuildContext context) {
    final ctx = widget.context;
    return BasicInputWrapper(
      size: ctx.size,
      label: ctx.label,
      description: ctx.description,
      error: ctx.error,
      child: CheckboxGroupScope(
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
