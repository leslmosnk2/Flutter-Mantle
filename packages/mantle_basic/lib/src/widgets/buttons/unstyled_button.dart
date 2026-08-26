import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Mantine-like [UnstyledButtonDelegate]: button semantics, no chrome.
class BasicUnstyledButtonDelegate extends UnstyledButtonDelegate {
  /// Creates a baseline unstyled-button delegate.
  const BasicUnstyledButtonDelegate();

  @override
  Widget root(UnstyledButtonContext context) {
    return _BasicUnstyledButtonRoot(buttonContext: context);
  }
}

class _BasicUnstyledButtonRoot extends StatefulWidget {
  const _BasicUnstyledButtonRoot({required this.buttonContext});

  final UnstyledButtonContext buttonContext;

  @override
  State<_BasicUnstyledButtonRoot> createState() =>
      _BasicUnstyledButtonRootState();
}

class _BasicUnstyledButtonRootState extends State<_BasicUnstyledButtonRoot> {
  var _pressed = false;

  @override
  Widget build(BuildContext context) {
    final ctx = widget.buttonContext;
    final canInteract = !ctx.disabled;
    final theme = MantleTheme.of(ctx.context);
    final fontSize = theme.typography.fontSize.getOrNull('md') ?? 16;

    return MouseRegion(
      cursor: canInteract
          ? SystemMouseCursors.click
          : SystemMouseCursors.forbidden,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: canInteract ? ctx.onPressed : null,
        onTapDown: canInteract ? (_) => setState(() => _pressed = true) : null,
        onTapUp: (_) => setState(() => _pressed = false),
        onTapCancel: () => setState(() => _pressed = false),
        child: Semantics(
          button: true,
          enabled: canInteract,
          label: ctx.semanticLabel,
          child: Transform.translate(
            offset: Offset(0, _pressed && canInteract ? 1 : 0),
            child: DefaultTextStyle.merge(
              style: TextStyle(
                fontSize: fontSize * theme.scale,
                decoration: TextDecoration.none,
              ),
              child: ctx.child,
            ),
          ),
        ),
      ),
    );
  }
}
