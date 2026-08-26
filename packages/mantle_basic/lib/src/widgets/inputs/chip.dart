import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/inputs.dart';

/// Baseline [ChipDelegate].
class BasicChipDelegate extends ChipDelegate {
  /// Creates a baseline chip delegate.
  const BasicChipDelegate();

  @override
  Widget root(ChipContext context) {
    return _ChipRoot(context: context);
  }
}

class _ChipRoot extends StatefulWidget {
  const _ChipRoot({required this.context});

  final ChipContext context;

  @override
  State<_ChipRoot> createState() => _ChipRootState();
}

class _ChipRootState extends State<_ChipRoot> {
  bool? _uncontrolled;

  @override
  Widget build(BuildContext context) {
    final ctx = widget.context;
    final group = ChipGroupScope.maybeOf(context);
    final inGroup = group != null && ctx.value != null;
    final checked = inGroup
        ? group.value.contains(ctx.value)
        : (ctx.checked ?? _uncontrolled ?? ctx.defaultChecked);
    final theme = MantleTheme.of(context);
    final scheme = MantleProvider.colorSchemeOf(context);
    final scale = theme.scale;
    final height = inputSizeToken(chipHeights, ctx.size) * scale;
    final colors = theme.variantColorResolver(
      VariantColorsInput(
        theme: theme,
        variant: _chipVariant(ctx.variant, checked),
        colorScheme: scheme,
        color: ctx.color,
      ),
    );
    final background = checked
        ? (colors.background ?? theme.primary[6])
        : (scheme == MantleColorScheme.dark
              ? theme.colors['dark'][6]
              : theme.white);
    final foreground = checked
        ? (colors.color ?? theme.white)
        : (scheme == MantleColorScheme.dark ? theme.white : theme.black);
    final border = checked
        ? (colors.border ?? const Color(0x00000000))
        : (scheme == MantleColorScheme.dark
              ? theme.colors['dark'][4]
              : theme.colors['gray'][4]);

    return GestureDetector(
      onTap: ctx.disabled
          ? null
          : () {
              if (inGroup) {
                final current = [...group.value];
                if (group.multiple) {
                  if (current.contains(ctx.value)) {
                    current.remove(ctx.value);
                  } else {
                    current.add(ctx.value!);
                  }
                  group.onChanged?.call(current);
                } else {
                  group.onChanged?.call([ctx.value!]);
                }
              } else {
                final next = !checked;
                if (ctx.checked == null) {
                  setState(() => _uncontrolled = next);
                }
                ctx.onChanged?.call(next);
              }
            },
      child: Opacity(
        opacity: ctx.disabled ? 0.6 : 1,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: background,
            borderRadius: ctx.radius,
            border: Border.all(color: border),
          ),
          child: SizedBox(
            height: height,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: height * 0.55),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (checked) ...[
                    ctx.icon ??
                        CustomPaint(
                          size: Size.square(height * 0.35),
                          painter: _ChipCheckPainter(color: foreground),
                        ),
                    SizedBox(width: theme.spacing.all('xs').left * scale / 2),
                  ],
                  DefaultTextStyle.merge(
                    style: TextStyle(
                      fontSize: 14 * scale,
                      color: foreground,
                    ),
                    child: ctx.child,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String _chipVariant(ChipVariant variant, bool checked) {
    if (!checked) {
      return 'outline';
    }
    return switch (variant) {
      ChipVariant.filled => 'filled',
      ChipVariant.light => 'light',
      ChipVariant.outline || ChipVariant.defaults => 'outline',
    };
  }
}

class _ChipCheckPainter extends CustomPainter {
  _ChipCheckPainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.6
      ..strokeCap = StrokeCap.round;
    final path = Path()
      ..moveTo(size.width * 0.15, size.height * 0.55)
      ..lineTo(size.width * 0.4, size.height * 0.8)
      ..lineTo(size.width * 0.85, size.height * 0.2);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _ChipCheckPainter oldDelegate) {
    return oldDelegate.color != color;
  }
}

/// Baseline [ChipGroupDelegate].
class BasicChipGroupDelegate extends ChipGroupDelegate {
  /// Creates a baseline chip group delegate.
  const BasicChipGroupDelegate();

  @override
  Widget root(ChipGroupContext context) {
    return _ChipGroupRoot(context: context);
  }
}

class _ChipGroupRoot extends StatefulWidget {
  const _ChipGroupRoot({required this.context});

  final ChipGroupContext context;

  @override
  State<_ChipGroupRoot> createState() => _ChipGroupRootState();
}

class _ChipGroupRootState extends State<_ChipGroupRoot> {
  List<String>? _uncontrolled;

  List<String> get _value =>
      widget.context.value ??
      _uncontrolled ??
      widget.context.defaultValue ??
      const [];

  @override
  Widget build(BuildContext context) {
    final ctx = widget.context;
    return ChipGroupScope(
      value: _value,
      multiple: ctx.multiple,
      onChanged: (next) {
        if (ctx.value == null) {
          setState(() => _uncontrolled = next);
        }
        ctx.onChanged?.call(next);
      },
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: ctx.children,
      ),
    );
  }
}
