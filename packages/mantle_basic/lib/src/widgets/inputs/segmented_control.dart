import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/inputs.dart';

/// Baseline [SegmentedControlDelegate].
class BasicSegmentedControlDelegate extends SegmentedControlDelegate {
  /// Creates a baseline segmented control delegate.
  const BasicSegmentedControlDelegate();

  @override
  Widget root(SegmentedControlContext context) {
    return _SegmentedRoot(context: context);
  }
}

class _SegmentedRoot extends StatefulWidget {
  const _SegmentedRoot({required this.context});

  final SegmentedControlContext context;

  @override
  State<_SegmentedRoot> createState() => _SegmentedRootState();
}

class _SegmentedRootState extends State<_SegmentedRoot> {
  String? _uncontrolled;

  String get _value {
    final ctx = widget.context;
    return ctx.value ??
        _uncontrolled ??
        ctx.defaultValue ??
        (ctx.data.isEmpty ? '' : ctx.data.first.value);
  }

  @override
  Widget build(BuildContext context) {
    final ctx = widget.context;
    final theme = MantleTheme.of(context);
    final scheme = MantleProvider.colorSchemeOf(context);
    final height = inputSizeToken(inputHeights, ctx.size) * theme.scale;
    final selectedColor = ctx.color != null
        ? resolveThemeColor(theme, scheme, ctx.color)
        : (scheme == MantleColorScheme.dark ? theme.white : theme.white);
    final track = scheme == MantleColorScheme.dark
        ? theme.colors['dark'][6]
        : theme.colors['gray'][1];
    final indicator = ctx.color != null
        ? selectedColor
        : (scheme == MantleColorScheme.dark
              ? theme.colors['dark'][4]
              : theme.white);

    final children = [
      for (final item in ctx.data)
        Expanded(
          child: GestureDetector(
            onTap: ctx.disabled || ctx.readOnly || item.disabled
                ? null
                : () {
                    if (ctx.value == null) {
                      setState(() => _uncontrolled = item.value);
                    }
                    ctx.onChanged?.call(item.value);
                  },
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: item.value == _value
                    ? indicator
                    : const Color(0x00000000),
                borderRadius: ctx.radius,
              ),
              child: SizedBox(
                height: height - 8,
                child: Center(
                  child: DefaultTextStyle.merge(
                    style: TextStyle(
                      fontSize: 14 * theme.scale,
                      fontWeight: FontWeight.w500,
                      color: item.disabled
                          ? theme.colors['gray'][5]
                          : (scheme == MantleColorScheme.dark
                                ? theme.white
                                : theme.black),
                    ),
                    child: item.label,
                  ),
                ),
              ),
            ),
          ),
        ),
    ];

    return DecoratedBox(
      decoration: BoxDecoration(
        color: track,
        borderRadius: ctx.radius,
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: ctx.fullWidth
            ? (ctx.orientation == Axis.vertical
                  ? Column(children: children)
                  : Row(children: children))
            : IntrinsicHeight(
                child: ctx.orientation == Axis.vertical
                    ? Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          for (final item in ctx.data) _loose(item, ctx, theme),
                        ],
                      )
                    : Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          for (final item in ctx.data) _loose(item, ctx, theme),
                        ],
                      ),
              ),
      ),
    );
  }

  Widget _loose(
    SegmentedControlItem item,
    SegmentedControlContext ctx,
    MantleTheme theme,
  ) {
    final scheme = MantleProvider.colorSchemeOf(ctx.context);
    final selected = item.value == _value;
    final indicator = ctx.color != null
        ? resolveThemeColor(theme, scheme, ctx.color)
        : (scheme == MantleColorScheme.dark
              ? theme.colors['dark'][4]
              : theme.white);
    return GestureDetector(
      onTap: ctx.disabled || ctx.readOnly || item.disabled
          ? null
          : () {
              if (ctx.value == null) {
                setState(() => _uncontrolled = item.value);
              }
              ctx.onChanged?.call(item.value);
            },
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: selected ? indicator : const Color(0x00000000),
          borderRadius: ctx.radius,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          child: DefaultTextStyle.merge(
            style: TextStyle(
              fontSize: 14 * theme.scale,
              fontWeight: FontWeight.w500,
              color: scheme == MantleColorScheme.dark
                  ? theme.white
                  : theme.black,
            ),
            child: item.label,
          ),
        ),
      ),
    );
  }
}
