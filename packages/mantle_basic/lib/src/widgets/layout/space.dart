import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [SpaceDelegate]: a [SizedBox] from pixels or spacing tokens.
class BasicSpaceDelegate extends SpaceDelegate {
  /// Creates a baseline space delegate.
  const BasicSpaceDelegate();

  @override
  Widget root(SpaceContext context) {
    final theme = MantleTheme.of(context.context);
    return SizedBox(
      width: context.width ?? tryResolveSpacing(theme, context.w),
      height: context.height ?? tryResolveSpacing(theme, context.h),
    );
  }
}
