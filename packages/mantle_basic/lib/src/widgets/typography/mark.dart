import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/typography/tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [MarkDelegate]: yellow (or themed) highlight fill.
class BasicMarkDelegate extends MarkDelegate {
  /// Creates a baseline mark delegate.
  const BasicMarkDelegate();

  @override
  Widget root(MarkContext context) {
    final dark = isDarkScheme(context.context);
    final background = paletteColor(
      context.context,
      context.color,
      shade: dark ? 5 : 2,
    );
    return DecoratedBox(
      decoration: BoxDecoration(color: background),
      child: DefaultTextStyle.merge(
        style: TextStyle(color: MantleTheme.of(context.context).black),
        child: context.child,
      ),
    );
  }
}
