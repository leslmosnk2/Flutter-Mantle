import 'package:flutter/widgets.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [FocusTrapDelegate]: a [FocusScope] that autofocuses when active.
class BasicFocusTrapDelegate extends FocusTrapDelegate {
  /// Creates a baseline focus-trap delegate.
  const BasicFocusTrapDelegate();

  @override
  Widget root(FocusTrapContext context) {
    if (!context.active) {
      return context.child;
    }
    return FocusScope(
      autofocus: true,
      child: context.child,
    );
  }
}
