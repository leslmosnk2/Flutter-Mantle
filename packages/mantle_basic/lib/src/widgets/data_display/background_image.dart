import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/data_display/tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [BackgroundImageDelegate]: decoration image behind the child.
class BasicBackgroundImageDelegate extends BackgroundImageDelegate {
  /// Creates a baseline background-image delegate.
  const BasicBackgroundImageDelegate();

  @override
  Widget root(BackgroundImageContext context) {
    final provider =
        context.image ??
        (context.src != null && context.src!.isNotEmpty
            ? NetworkImage(context.src!)
            : null);
    final radius = resolveRadius(context.radius, context.context);
    return ClipRRect(
      borderRadius: radius,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: radius,
          image: provider == null
              ? null
              : DecorationImage(image: provider, fit: context.fit),
        ),
        child: context.child,
      ),
    );
  }
}
