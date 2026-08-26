import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/overlays/overlay_chrome.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [AffixDelegate]: [Stack] + [Positioned] in the parent.
class BasicAffixDelegate extends AffixDelegate {
  /// Creates a baseline affix delegate.
  const BasicAffixDelegate();

  @override
  Widget root(AffixContext context) {
    final edges = resolveCorner(
      top: context.top,
      left: context.left,
      bottom: context.bottom,
      right: context.right,
    );
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          top: edges.top,
          left: edges.left,
          bottom: edges.bottom,
          right: edges.right,
          child: context.child,
        ),
      ],
    );
  }
}
