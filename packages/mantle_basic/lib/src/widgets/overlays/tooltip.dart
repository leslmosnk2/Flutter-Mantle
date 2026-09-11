import 'package:flutter/widgets.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline TooltipDelegate: shows `label` on hover or long-press.
class BasicTooltipDelegate extends TooltipDelegate {
  /// Creates a baseline tooltip delegate.
  const BasicTooltipDelegate();

  /// Key placed on the floating label.
  static const Key labelKey = ValueKey<String>('mantle.tooltip.label');

  @override
  Widget root(TooltipContext context) {
    return _BasicTooltip(tooltipContext: context);
  }
}

class _BasicTooltip extends StatefulWidget {
  const _BasicTooltip({required this.tooltipContext});

  final TooltipContext tooltipContext;

  @override
  State<_BasicTooltip> createState() => _BasicTooltipState();
}

class _BasicTooltipState extends State<_BasicTooltip> {
  bool _hovering = false;

  bool get _shown {
    final ctx = widget.tooltipContext;
    if (ctx.disabled) {
      return false;
    }
    if (ctx.opened != null) {
      return ctx.opened!;
    }
    return _hovering;
  }

  @override
  Widget build(BuildContext context) {
    final ctx = widget.tooltipContext;
    final label = _label(ctx);
    final child = MouseRegion(
      onEnter: (_) => setState(() => _hovering = true),
      onExit: (_) => setState(() => _hovering = false),
      child: GestureDetector(
        onLongPress: () => setState(() => _hovering = true),
        child: ctx.child,
      ),
    );

    if (!_shown) {
      return child;
    }

    return switch (ctx.position) {
      OverlayPlacement.top => Column(
        mainAxisSize: MainAxisSize.min,
        children: [label, const SizedBox(height: 4), child],
      ),
      OverlayPlacement.bottom => Column(
        mainAxisSize: MainAxisSize.min,
        children: [child, const SizedBox(height: 4), label],
      ),
      OverlayPlacement.left => Row(
        mainAxisSize: MainAxisSize.min,
        children: [label, const SizedBox(width: 4), child],
      ),
      OverlayPlacement.right => Row(
        mainAxisSize: MainAxisSize.min,
        children: [child, const SizedBox(width: 4), label],
      ),
    };
  }

  Widget _label(TooltipContext ctx) {
    final theme = MantleTheme.of(ctx.context);
    return DecoratedBox(
      key: BasicTooltipDelegate.labelKey,
      decoration: BoxDecoration(
        color: theme.colors['gray'][9],
        borderRadius: BorderRadius.all(theme.resolvedDefaultRadius),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Text(
          ctx.label,
          style: theme.typography.body.copyWith(
            color: theme.white,
            fontSize: theme.typography.fontSize['sm'],
          ),
        ),
      ),
    );
  }
}
