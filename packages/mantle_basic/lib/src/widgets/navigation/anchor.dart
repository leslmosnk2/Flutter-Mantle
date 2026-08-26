import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/navigation/tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/navigation.dart';

/// Baseline [AnchorDelegate]: an inline tappable text link.
class BasicAnchorDelegate extends AnchorDelegate {
  /// Creates a baseline anchor delegate.
  const BasicAnchorDelegate();

  @override
  Widget root(AnchorContext context) {
    return _AnchorRoot(anchor: context);
  }
}

class _AnchorRoot extends StatefulWidget {
  const _AnchorRoot({required this.anchor});

  final AnchorContext anchor;

  @override
  State<_AnchorRoot> createState() => _AnchorRootState();
}

class _AnchorRootState extends State<_AnchorRoot> {
  var _hovered = false;

  @override
  Widget build(BuildContext context) {
    final anchor = widget.anchor;
    final theme = MantleTheme.of(context);
    final color = resolveNamedColor(context, anchor.color);
    final fontSize = resolveFontSize(theme, anchor.size);
    final underlined = switch (anchor.underline) {
      AnchorUnderline.always => true,
      AnchorUnderline.never => false,
      AnchorUnderline.hover => _hovered,
      AnchorUnderline.notHover => !_hovered,
    };

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: anchor.onPressed,
        child: Semantics(
          link: true,
          onTap: anchor.onPressed,
          child: DefaultTextStyle.merge(
            style: TextStyle(
              color: color,
              fontSize: fontSize,
              decoration: underlined
                  ? TextDecoration.underline
                  : TextDecoration.none,
              decorationColor: color,
            ),
            child: anchor.child,
          ),
        ),
      ),
    );
  }
}
