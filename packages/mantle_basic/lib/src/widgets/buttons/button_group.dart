import 'package:flutter/widgets.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Mantine-like [ButtonGroupDelegate]: a tight row or column of buttons.
///
/// Adjacent border-radius collapsing is a v1 gap; children are laid out
/// with no gap. [ButtonGroupContext.borderWidth] is stored for themes that
/// implement joined borders.
class BasicButtonGroupDelegate extends ButtonGroupDelegate {
  /// Creates a baseline button-group delegate.
  const BasicButtonGroupDelegate();

  @override
  Widget root(ButtonGroupContext context) {
    return Semantics(
      container: true,
      explicitChildNodes: true,
      child: context.orientation == Axis.horizontal
          ? Row(mainAxisSize: MainAxisSize.min, children: context.children)
          : Column(mainAxisSize: MainAxisSize.min, children: context.children),
    );
  }
}
