import 'package:flutter/widgets.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [BoxDelegate]: padding, margin, fill, radius, and size.
class BasicBoxDelegate extends BoxDelegate {
  /// Creates a baseline box delegate.
  const BasicBoxDelegate();

  @override
  Widget root(BoxContext context) {
    var child = context.child ?? const SizedBox.shrink();
    if (context.padding != null) {
      child = Padding(padding: context.padding!, child: child);
    }
    if (context.color != null || context.radius != null) {
      child = DecoratedBox(
        decoration: BoxDecoration(
          color: context.color,
          borderRadius: context.radius,
        ),
        child: child,
      );
    }
    if (context.width != null || context.height != null) {
      child = SizedBox(
        width: context.width,
        height: context.height,
        child: child,
      );
    }
    if (context.margin != null) {
      child = Padding(padding: context.margin!, child: child);
    }
    return child;
  }
}
