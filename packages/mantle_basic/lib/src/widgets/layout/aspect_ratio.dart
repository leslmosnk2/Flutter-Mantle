import 'package:flutter/widgets.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [MAspectRatioDelegate]: forwards to Flutter's [AspectRatio].
class BasicMAspectRatioDelegate extends MAspectRatioDelegate {
  /// Creates a baseline aspect-ratio delegate.
  const BasicMAspectRatioDelegate();

  @override
  Widget root(MAspectRatioContext context) {
    return AspectRatio(
      aspectRatio: context.ratio,
      child: context.child,
    );
  }
}
