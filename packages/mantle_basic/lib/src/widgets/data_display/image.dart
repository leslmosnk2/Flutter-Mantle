import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/data_display/tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [MImageDelegate]: clipped image with fallback.
class BasicMImageDelegate extends MImageDelegate {
  /// Creates a baseline image delegate.
  const BasicMImageDelegate();

  @override
  Widget root(MImageContext context) {
    final provider =
        context.image ??
        (context.src != null && context.src!.isNotEmpty
            ? NetworkImage(context.src!)
            : null);
    final radius = resolveRadius(context.radius, context.context);
    final fallback = context.fallback ?? const SizedBox.shrink();
    if (provider == null) {
      return _box(context, radius, fallback);
    }
    return _box(
      context,
      radius,
      Image(
        image: provider,
        fit: context.fit,
        width: context.width,
        height: context.height,
        errorBuilder: (_, _, _) => fallback,
      ),
    );
  }

  Widget _box(
    MImageContext context,
    BorderRadius radius,
    Widget child,
  ) {
    return ClipRRect(
      borderRadius: radius,
      child: SizedBox(
        width: context.width,
        height: context.height,
        child: child,
      ),
    );
  }
}
