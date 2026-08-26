import 'package:flutter/widgets.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Mantine-like [ActionIconGroupDelegate]: Mantine `ActionIcon.Group`.
///
/// Adjacent border-radius collapsing is a v1 gap; children are laid out
/// with no gap.
class BasicActionIconGroupDelegate extends ActionIconGroupDelegate {
  /// Creates a baseline action-icon-group delegate.
  const BasicActionIconGroupDelegate();

  @override
  Widget root(ActionIconGroupContext context) {
    return Semantics(
      container: true,
      explicitChildNodes: true,
      child: context.orientation == Axis.horizontal
          ? Row(mainAxisSize: MainAxisSize.min, children: context.children)
          : Column(mainAxisSize: MainAxisSize.min, children: context.children),
    );
  }
}
