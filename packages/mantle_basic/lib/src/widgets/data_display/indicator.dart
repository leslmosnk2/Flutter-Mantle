import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/data_display/tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [IndicatorDelegate]: overlay marker on a child.
class BasicIndicatorDelegate extends IndicatorDelegate {
  /// Creates a baseline indicator delegate.
  const BasicIndicatorDelegate();

  /// Key on the overlay marker.
  static const Key markerKey = ValueKey<String>('mantle.indicator.marker');

  @override
  Widget root(IndicatorContext context) {
    final theme = MantleTheme.of(context.context);
    final alignment = _alignment(context.position);
    final fill = paletteColor(context.context, context.color);
    final radius = resolveRadius(context.radius, context.context);
    final hasLabel = context.label != null;
    final marker = context.disabled
        ? null
        : Align(
            alignment: alignment,
            child: Transform.translate(
              offset: _offset(context.position, context.offset),
              child: DecoratedBox(
                key: markerKey,
                decoration: BoxDecoration(
                  color: fill,
                  borderRadius: radius,
                  border: context.withBorder
                      ? Border.all(color: bodyColor(context.context), width: 2)
                      : null,
                ),
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: context.size,
                    minHeight: context.size,
                  ),
                  child: hasLabel
                      ? Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal:
                                theme.spacing.all('xs').left * theme.scale / 2,
                          ),
                          child: Center(
                            child: DefaultTextStyle.merge(
                              style: TextStyle(
                                color: theme.white,
                                fontSize: fontSizeToken(theme, 'xs'),
                                height: 1,
                                fontWeight: FontWeight.w600,
                              ),
                              child: context.label!,
                            ),
                          ),
                        )
                      : SizedBox(
                          width: context.size,
                          height: context.size,
                        ),
                ),
              ),
            ),
          );

    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        context.child,
        if (marker != null) Positioned.fill(child: marker),
      ],
    );
  }
}

AlignmentDirectional _alignment(IndicatorPosition position) {
  return switch (position) {
    IndicatorPosition.topStart => AlignmentDirectional.topStart,
    IndicatorPosition.topCenter => AlignmentDirectional.topCenter,
    IndicatorPosition.topEnd => AlignmentDirectional.topEnd,
    IndicatorPosition.middleStart => AlignmentDirectional.centerStart,
    IndicatorPosition.middleCenter => AlignmentDirectional.center,
    IndicatorPosition.middleEnd => AlignmentDirectional.centerEnd,
    IndicatorPosition.bottomStart => AlignmentDirectional.bottomStart,
    IndicatorPosition.bottomCenter => AlignmentDirectional.bottomCenter,
    IndicatorPosition.bottomEnd => AlignmentDirectional.bottomEnd,
  };
}

Offset _offset(IndicatorPosition position, double offset) {
  final y = switch (position) {
    IndicatorPosition.topStart ||
    IndicatorPosition.topCenter ||
    IndicatorPosition.topEnd => -0.5,
    IndicatorPosition.bottomStart ||
    IndicatorPosition.bottomCenter ||
    IndicatorPosition.bottomEnd => 0.5,
    _ => 0.0,
  };
  final x = switch (position) {
    IndicatorPosition.topStart ||
    IndicatorPosition.middleStart ||
    IndicatorPosition.bottomStart => -0.5,
    IndicatorPosition.topEnd ||
    IndicatorPosition.middleEnd ||
    IndicatorPosition.bottomEnd => 0.5,
    _ => 0.0,
  };
  return Offset(x * 10 + (x.sign * offset), y * 10 + (y.sign * offset));
}
