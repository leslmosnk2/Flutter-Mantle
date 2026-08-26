import 'package:flutter/widgets.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [VisuallyHiddenDelegate]: 1×1 clip that keeps semantics.
class BasicVisuallyHiddenDelegate extends VisuallyHiddenDelegate {
  /// Creates a baseline visually-hidden delegate.
  const BasicVisuallyHiddenDelegate();

  @override
  Widget root(VisuallyHiddenContext context) {
    return SizedBox(
      width: 1,
      height: 1,
      child: ClipRect(
        child: OverflowBox(
          alignment: Alignment.topLeft,
          maxWidth: 1,
          maxHeight: 1,
          child: IgnorePointer(child: context.child),
        ),
      ),
    );
  }
}
