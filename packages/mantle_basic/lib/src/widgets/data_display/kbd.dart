import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/data_display/tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [KbdDelegate]: monospace key chrome.
class BasicKbdDelegate extends KbdDelegate {
  /// Creates a baseline kbd delegate.
  const BasicKbdDelegate();

  @override
  Widget root(KbdContext context) {
    final theme = MantleTheme.of(context.context);
    final dark = isDarkScheme(context.context);
    final fontSize = kbdFontSize(context.size, theme.scale);
    return DecoratedBox(
      decoration: BoxDecoration(
        color: dark ? theme.colors['dark'][6] : theme.colors['gray'][0],
        borderRadius: theme.radius.border('sm'),
        border: Border(
          top: BorderSide(color: hairlineColor(context.context)),
          left: BorderSide(color: hairlineColor(context.context)),
          right: BorderSide(color: hairlineColor(context.context)),
          bottom: BorderSide(
            color: hairlineColor(context.context),
            width: 3,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 0.45 * fontSize,
          vertical: 0.12 * fontSize,
        ),
        child: DefaultTextStyle.merge(
          style: TextStyle(
            fontFamily: theme.typography.fontFamilyMono,
            fontWeight: FontWeight.w700,
            fontSize: fontSize,
            color: dark ? theme.colors['dark'][0] : theme.colors['gray'][7],
            height: 1.45,
          ),
          child: context.child,
        ),
      ),
    );
  }
}
