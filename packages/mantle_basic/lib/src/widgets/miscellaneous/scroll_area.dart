import 'package:flutter/widgets.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [ScrollAreaDelegate]: nested scroll views plus [RawScrollbar].
class BasicScrollAreaDelegate extends ScrollAreaDelegate {
  /// Creates a baseline scroll-area delegate.
  const BasicScrollAreaDelegate();

  @override
  Widget root(ScrollAreaContext context) {
    return _ScrollAreaRoot(scrollAreaContext: context);
  }
}

class _ScrollAreaRoot extends StatefulWidget {
  const _ScrollAreaRoot({required this.scrollAreaContext});

  final ScrollAreaContext scrollAreaContext;

  @override
  State<_ScrollAreaRoot> createState() => _ScrollAreaRootState();
}

class _ScrollAreaRootState extends State<_ScrollAreaRoot> {
  final ScrollController _vertical = ScrollController();
  final ScrollController _horizontal = ScrollController();

  ScrollAreaContext get _ctx => widget.scrollAreaContext;

  @override
  void initState() {
    super.initState();
    _vertical.addListener(_notify);
    _horizontal.addListener(_notify);
  }

  @override
  void dispose() {
    _vertical
      ..removeListener(_notify)
      ..dispose();
    _horizontal
      ..removeListener(_notify)
      ..dispose();
    super.dispose();
  }

  void _notify() {
    _ctx.onScrollPositionChange?.call(
      Offset(
        _horizontal.hasClients ? _horizontal.offset : 0,
        _vertical.hasClients ? _vertical.offset : 0,
      ),
    );
  }

  Widget _scrollbar({
    required ScrollController controller,
    required Widget child,
  }) {
    if (_ctx.type == ScrollAreaType.never) {
      return child;
    }
    return RawScrollbar(
      controller: controller,
      thumbVisibility: _ctx.type == ScrollAreaType.always,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final scrollbars = _ctx.scrollbars;
    var child = _ctx.child;
    if (scrollbars == ScrollAreaScrollbars.x ||
        scrollbars == ScrollAreaScrollbars.xy) {
      child = _scrollbar(
        controller: _horizontal,
        child: SingleChildScrollView(
          controller: _horizontal,
          scrollDirection: Axis.horizontal,
          child: child,
        ),
      );
    }
    if (scrollbars == ScrollAreaScrollbars.y ||
        scrollbars == ScrollAreaScrollbars.xy) {
      child = _scrollbar(
        controller: _vertical,
        child: SingleChildScrollView(
          controller: _vertical,
          child: child,
        ),
      );
    }
    return child;
  }
}
