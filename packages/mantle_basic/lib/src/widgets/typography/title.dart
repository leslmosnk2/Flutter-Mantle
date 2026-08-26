import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/typography/tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [MTitleDelegate]: heading levels 1–6.
class BasicMTitleDelegate extends MTitleDelegate {
  /// Creates a baseline title delegate.
  const BasicMTitleDelegate();

  @override
  Widget root(MTitleContext context) {
    final theme = MantleTheme.of(context.context);
    final order = context.order.clamp(1, 6);
    var style = headingStyle(theme, order);
    final size = context.size;
    if (size != null && size.length == 2 && size.startsWith('h')) {
      final sizeOrder = int.tryParse(size.substring(1));
      if (sizeOrder != null && sizeOrder >= 1 && sizeOrder <= 6) {
        style = headingStyle(theme, sizeOrder);
      }
    } else if (size != null) {
      final fontSize = theme.typography.fontSize.getOrNull(size);
      if (fontSize != null) {
        style = style.copyWith(fontSize: fontSize);
      }
    }

    final family = theme.typography.fontFamily;
    style = style.copyWith(
      fontFamily: family.isEmpty ? null : family,
      fontSize: (style.fontSize ?? 16) * theme.scale,
      color: textColor(context.context),
    );

    return DefaultTextStyle.merge(
      style: style,
      maxLines: context.lineClamp,
      overflow: context.lineClamp == null
          ? TextOverflow.clip
          : TextOverflow.ellipsis,
      child: context.child,
    );
  }
}
