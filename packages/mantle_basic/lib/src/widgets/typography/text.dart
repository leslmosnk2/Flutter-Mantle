import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/typography/tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [MTextDelegate]: size, weight, color, truncation.
class BasicMTextDelegate extends MTextDelegate {
  /// Creates a baseline text delegate.
  const BasicMTextDelegate();

  @override
  Widget root(MTextContext context) {
    final theme = MantleTheme.of(context.context);
    final scope = TypographyScope.maybeOf(context.context);
    final family = theme.typography.fontFamily;

    TextStyle style;
    if (context.inherit) {
      style = TextStyle(
        color: context.color == null
            ? null
            : paletteColor(context.context, context.color),
        overflow: _overflow(context),
      );
    } else {
      style = TextStyle(
        fontFamily: family.isEmpty ? null : family,
        fontSize: fontSizeToken(theme, context.size),
        height: context.inline ? 1 : lineHeightToken(theme, context.size),
        fontWeight: context.fw,
        color: context.color == null
            ? (scope?.textStyle.color ?? textColor(context.context))
            : paletteColor(context.context, context.color),
        overflow: _overflow(context),
      );
    }

    return DefaultTextStyle.merge(
      style: style,
      textAlign: context.align,
      maxLines: _maxLines(context),
      overflow: _overflow(context) ?? TextOverflow.clip,
      child: context.child,
    );
  }
}

int? _maxLines(MTextContext context) {
  if (context.lineClamp != null) {
    return context.lineClamp;
  }
  if (context.truncate != null) {
    return 1;
  }
  return null;
}

TextOverflow? _overflow(MTextContext context) {
  if (context.lineClamp != null || context.truncate != null) {
    return TextOverflow.ellipsis;
  }
  return null;
}
