import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_basic/src/widgets/navigation/tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/navigation.dart';

/// Baseline [TabsDelegate]: publishes [TabsScope] and lays out children.
class BasicTabsDelegate extends TabsDelegate {
  /// Creates a baseline tabs delegate.
  const BasicTabsDelegate();

  @override
  Widget root(TabsContext context) {
    final vertical = context.orientation == Axis.vertical;
    var children = context.children;
    if (!vertical && context.inverted) {
      children = children.reversed.toList(growable: false);
    }

    final body = vertical
        ? Flex(
            direction: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: context.placement == TabsPlacement.right
                ? children.reversed.toList(growable: false)
                : children,
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: children,
          );

    return TabsScope(
      value: context.value,
      onChange: context.onChange,
      orientation: context.orientation,
      placement: context.placement,
      inverted: context.inverted,
      keepMounted: context.keepMounted,
      color: context.color,
      child: body,
    );
  }
}

/// Baseline [TabsListDelegate]: a tablist row or column with an underline.
class BasicTabsListDelegate extends TabsListDelegate {
  /// Creates a baseline tabs-list delegate.
  const BasicTabsListDelegate();

  @override
  Widget root(TabsListContext context) {
    final scope = TabsScope.maybeOf(context.context);
    final orientation = scope?.orientation ?? Axis.horizontal;
    final inverted = scope?.inverted ?? false;
    final borderColor = schemeBorder(context.context);
    final side = BorderSide(color: borderColor, width: 2);
    final border = orientation == Axis.vertical
        ? (scope?.placement == TabsPlacement.right
              ? Border(left: side)
              : Border(right: side))
        : (inverted ? Border(top: side) : Border(bottom: side));

    var tabs = context.children;
    if (context.grow) {
      tabs = [
        for (final tab in tabs) Expanded(child: tab),
      ];
    }

    return DecoratedBox(
      decoration: BoxDecoration(border: border),
      child: Flex(
        direction: orientation,
        mainAxisAlignment: context.justify,
        mainAxisSize: MainAxisSize.min,
        children: tabs,
      ),
    );
  }
}

/// Baseline [TabsTabDelegate]: a tab control with an active indicator.
class BasicTabsTabDelegate extends TabsTabDelegate {
  /// Creates a baseline tabs-tab delegate.
  const BasicTabsTabDelegate();

  @override
  Widget root(TabsTabContext context) {
    final scope = TabsScope.maybeOf(context.context);
    final theme = MantleTheme.of(context.context);
    final active = scope?.value == context.value;
    final disabled = context.disabled;
    final indicator = resolveNamedColor(context.context, scope?.color);
    final orientation = scope?.orientation ?? Axis.horizontal;
    final inverted = scope?.inverted ?? false;
    final padV = resolveSpacing(theme, 'xs');
    final padH = resolveSpacing(theme, 'md');
    final gap = resolveSpacing(theme, 'xs');

    final Border border;
    if (orientation == Axis.vertical) {
      final side = BorderSide(
        color: active ? indicator : const Color(0x00000000),
        width: 2,
      );
      border = scope?.placement == TabsPlacement.right
          ? Border(left: side)
          : Border(right: side);
    } else {
      final side = BorderSide(
        color: active ? indicator : const Color(0x00000000),
        width: 2,
      );
      border = inverted ? Border(top: side) : Border(bottom: side);
    }

    void select() {
      if (disabled) {
        return;
      }
      scope?.onChange?.call(context.value);
    }

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: disabled ? null : select,
      child: Opacity(
        opacity: disabled ? 0.5 : 1,
        child: DecoratedBox(
          decoration: BoxDecoration(border: border),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: padV, horizontal: padH),
            child: DefaultTextStyle.merge(
              style: TextStyle(
                fontSize: resolveFontSize(theme, 'sm'),
                color: active ? indicator : schemeForeground(context.context),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (context.leftSection != null) ...[
                    context.leftSection!,
                    SizedBox(width: gap),
                  ],
                  if (context.child != null) context.child!,
                  if (context.rightSection != null) ...[
                    SizedBox(width: gap),
                    context.rightSection!,
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Baseline [TabsPanelDelegate]: shows content when the tab is active.
class BasicTabsPanelDelegate extends TabsPanelDelegate {
  /// Creates a baseline tabs-panel delegate.
  const BasicTabsPanelDelegate();

  @override
  Widget root(TabsPanelContext context) {
    final scope = TabsScope.maybeOf(context.context);
    final active = scope?.value == context.value;
    final keepMounted = context.keepMounted ?? scope?.keepMounted ?? true;
    if (!active && !keepMounted) {
      return const SizedBox.shrink();
    }
    if (!active) {
      return Offstage(child: context.child);
    }
    final vertical = scope?.orientation == Axis.vertical;
    if (vertical) {
      return Expanded(child: context.child);
    }
    return context.child;
  }
}
