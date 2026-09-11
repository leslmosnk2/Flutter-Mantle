import 'package:flutter/widgets.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [SpoilerDelegate]: clip + show more/less.
class BasicSpoilerDelegate extends SpoilerDelegate {
  /// Creates a baseline spoiler delegate.
  const BasicSpoilerDelegate();

  /// Key on the toggle control.
  static const Key controlKey = ValueKey<String>('mantle.spoiler.control');

  @override
  Widget root(SpoilerContext context) {
    return _SpoilerRoot(spoilerContext: context);
  }
}

class _SpoilerRoot extends StatefulWidget {
  const _SpoilerRoot({required this.spoilerContext});

  final SpoilerContext spoilerContext;

  @override
  State<_SpoilerRoot> createState() => _SpoilerRootState();
}

class _SpoilerRootState extends State<_SpoilerRoot> {
  final GlobalKey _contentKey = GlobalKey();
  bool? _uncontrolled;
  double _contentHeight = 0;

  bool get _expanded {
    return widget.spoilerContext.expanded ??
        _uncontrolled ??
        widget.spoilerContext.initialState;
  }

  bool get _needsToggle => _contentHeight > widget.spoilerContext.maxHeight;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) => _measure());
  }

  @override
  void didUpdateWidget(covariant _SpoilerRoot oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((_) => _measure());
  }

  void _measure() {
    final box = _contentKey.currentContext?.findRenderObject() as RenderBox?;
    if (box == null || !box.hasSize) {
      return;
    }
    final height = box.size.height;
    if (height != _contentHeight) {
      setState(() => _contentHeight = height);
    }
  }

  void _toggle() {
    final next = !_expanded;
    if (widget.spoilerContext.expanded == null) {
      setState(() => _uncontrolled = next);
    }
    widget.spoilerContext.onExpandedChange?.call(next);
  }

  @override
  Widget build(BuildContext context) {
    final ctx = widget.spoilerContext;
    final theme = MantleTheme.of(ctx.context);
    final expanded = _expanded;
    final factor = !_needsToggle || expanded
        ? 1.0
        : ctx.maxHeight / _contentHeight;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRect(
          child: AnimatedAlign(
            duration: theme.respectReducedMotion
                ? Duration.zero
                : const Duration(milliseconds: 200),
            alignment: Alignment.topCenter,
            heightFactor: factor.clamp(0.0, 1.0),
            child: KeyedSubtree(
              key: _contentKey,
              child: ctx.child,
            ),
          ),
        ),
        if (_needsToggle)
          GestureDetector(
            key: BasicSpoilerDelegate.controlKey,
            onTap: _toggle,
            child: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: DefaultTextStyle.merge(
                style: TextStyle(
                  color: MantleTheme.of(ctx.context).primaryShadeColor(
                    MantleProvider.colorSchemeOf(ctx.context),
                  ),
                  fontWeight: FontWeight.w600,
                ),
                child: expanded ? ctx.hideLabel : ctx.showLabel,
              ),
            ),
          ),
      ],
    );
  }
}
