import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [CollapseDelegate]: animated height (and optional opacity).
class BasicCollapseDelegate extends CollapseDelegate {
  /// Creates a baseline collapse delegate.
  const BasicCollapseDelegate();

  @override
  Widget root(CollapseContext context) {
    return _CollapseRoot(collapseContext: context);
  }
}

class _CollapseRoot extends StatefulWidget {
  const _CollapseRoot({required this.collapseContext});

  final CollapseContext collapseContext;

  @override
  State<_CollapseRoot> createState() => _CollapseRootState();
}

class _CollapseRootState extends State<_CollapseRoot> {
  late bool _present;

  CollapseContext get _ctx => widget.collapseContext;

  @override
  void initState() {
    super.initState();
    _present = _ctx.opened || _ctx.keepMounted;
  }

  @override
  void didUpdateWidget(covariant _CollapseRoot oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_ctx.opened || _ctx.keepMounted) {
      _present = true;
    }
  }

  Duration get _duration {
    final theme = MantleTheme.of(_ctx.context);
    if (theme.respectReducedMotion || _ctx.transitionDuration <= 0) {
      return Duration.zero;
    }
    return Duration(milliseconds: _ctx.transitionDuration);
  }

  void _onEnd() {
    _ctx.onTransitionEnd?.call();
    if (!_ctx.opened && !_ctx.keepMounted && _present) {
      setState(() => _present = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!_present) {
      return const SizedBox.shrink();
    }
    final duration = _duration;
    Widget child = ClipRect(
      child: AnimatedAlign(
        duration: duration,
        curve: Curves.ease,
        alignment: Alignment.topCenter,
        heightFactor: _ctx.opened ? 1 : 0,
        onEnd: _onEnd,
        child: _ctx.child,
      ),
    );
    if (_ctx.animateOpacity) {
      child = AnimatedOpacity(
        duration: duration,
        curve: Curves.ease,
        opacity: _ctx.opened ? 1 : 0,
        child: child,
      );
    }
    return child;
  }
}
