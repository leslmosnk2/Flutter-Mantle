import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/data_display/tokens.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [AccordionDelegate]: publishes [AccordionScope].
class BasicAccordionDelegate extends AccordionDelegate {
  /// Creates a baseline accordion delegate.
  const BasicAccordionDelegate();

  @override
  Widget root(AccordionContext context) {
    return _AccordionRoot(accordionContext: context);
  }
}

class _AccordionRoot extends StatefulWidget {
  const _AccordionRoot({required this.accordionContext});

  final AccordionContext accordionContext;

  @override
  State<_AccordionRoot> createState() => _AccordionRootState();
}

class _AccordionRootState extends State<_AccordionRoot> {
  List<String>? _uncontrolled;

  List<String> get _open {
    final ctx = widget.accordionContext;
    return ctx.value ?? _uncontrolled ?? ctx.defaultValue ?? const [];
  }

  void _toggle(String item) {
    final ctx = widget.accordionContext;
    final current = List<String>.from(_open);
    final List<String> next;
    if (ctx.multiple) {
      if (current.contains(item)) {
        current.remove(item);
        next = current;
      } else {
        next = [...current, item];
      }
    } else {
      next = current.contains(item) ? <String>[] : [item];
    }
    if (ctx.value == null) {
      setState(() => _uncontrolled = next);
    }
    ctx.onChange?.call(next);
  }

  @override
  Widget build(BuildContext context) {
    final ctx = widget.accordionContext;
    return AccordionScope(
      value: _open,
      multiple: ctx.multiple,
      onToggle: _toggle,
      chevronPosition: ctx.chevronPosition,
      disableChevronRotation: ctx.disableChevronRotation,
      chevron: ctx.chevron,
      appearance: ctx.appearance,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: ctx.children,
      ),
    );
  }
}

/// Baseline [AccordionItemDelegate]: control + panel.
class BasicAccordionItemDelegate extends AccordionItemDelegate {
  /// Creates a baseline accordion-item delegate.
  const BasicAccordionItemDelegate();

  /// Key on the chevron.
  static const Key chevronKey = ValueKey<String>('mantle.accordion.chevron');

  @override
  Widget root(AccordionItemContext context) {
    final scope = AccordionScope.of(context.context);
    final theme = MantleTheme.of(context.context);
    final open = scope.isOpen(context.value);
    final padding = resolveSpacing(theme, 'md');
    final appearance = scope.appearance;
    final radius = BorderRadius.all(theme.resolvedDefaultRadius);

    final chevron =
        scope.chevron ??
        CustomPaint(
          key: chevronKey,
          size: const Size.square(16),
          painter: _ChevronPainter(color: textColor(context.context)),
        );

    final control = GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: context.disabled ? null : () => scope.onToggle(context.value),
      child: Opacity(
        opacity: context.disabled ? 0.4 : 1,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: padding),
          child: Row(
            children: [
              if (scope.chevronPosition == AccordionChevronPosition.left) ...[
                _rotate(scope, open, chevron, theme),
                SizedBox(width: padding),
              ],
              if (context.icon != null) ...[
                context.icon!,
                SizedBox(width: resolveSpacing(theme, 'sm')),
              ],
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: resolveSpacing(theme, 'sm'),
                  ),
                  child: DefaultTextStyle.merge(
                    style: TextStyle(color: textColor(context.context)),
                    child: context.label,
                  ),
                ),
              ),
              if (scope.chevronPosition == AccordionChevronPosition.right)
                _rotate(scope, open, chevron, theme),
            ],
          ),
        ),
      ),
    );

    return DecoratedBox(
      decoration: _itemDecoration(
        context.context,
        appearance,
        open: open,
        radius: radius,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          control,
          ClipRect(
            child: AnimatedAlign(
              duration: theme.respectReducedMotion
                  ? Duration.zero
                  : const Duration(milliseconds: 200),
              alignment: Alignment.topCenter,
              heightFactor: open ? 1 : 0,
              child: Padding(
                padding: EdgeInsets.fromLTRB(
                  padding,
                  resolveSpacing(theme, 'xs') / 2,
                  padding,
                  padding,
                ),
                child: context.child,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _rotate(
    AccordionScope scope,
    bool open,
    Widget chevron,
    MantleTheme theme,
  ) {
    final turns = !scope.disableChevronRotation && open ? 0.5 : 0.0;
    return AnimatedRotation(
      turns: turns,
      duration: theme.respectReducedMotion
          ? Duration.zero
          : const Duration(milliseconds: 200),
      child: chevron,
    );
  }

  BoxDecoration _itemDecoration(
    BuildContext context,
    String appearance, {
    required bool open,
    required BorderRadius radius,
  }) {
    final border = hairlineColor(context);
    return switch (appearance) {
      'contained' => BoxDecoration(
        border: Border.all(color: border),
        color: open ? filledSurface(context) : null,
      ),
      'filled' => BoxDecoration(
        borderRadius: radius,
        color: open ? filledSurface(context) : null,
      ),
      'separated' => BoxDecoration(
        borderRadius: radius,
        color: open ? bodyColor(context) : filledSurface(context),
        border: Border.all(color: open ? border : const Color(0x00000000)),
      ),
      _ => BoxDecoration(
        border: Border(bottom: BorderSide(color: border)),
      ),
    };
  }
}

class _ChevronPainter extends CustomPainter {
  _ChevronPainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.5
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    final path = Path()
      ..moveTo(size.width * 0.2, size.height * 0.35)
      ..lineTo(size.width * 0.5, size.height * 0.65)
      ..lineTo(size.width * 0.8, size.height * 0.35);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant _ChevronPainter oldDelegate) {
    return oldDelegate.color != color;
  }
}
