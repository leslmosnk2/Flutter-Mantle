import 'package:flutter/widgets.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [MCenterDelegate]: aligns `child` to the center of the parent.
class BasicMCenterDelegate extends MCenterDelegate {
  /// Creates a baseline center delegate.
  const BasicMCenterDelegate();

  @override
  Widget root(MCenterContext context) {
    return Align(
      widthFactor: context.inline ? 1 : null,
      heightFactor: context.inline ? 1 : null,
      child: context.child,
    );
  }
}
