import 'package:flutter/widgets.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Mantine-like [FileButtonDelegate]: injects a press handler into `builder`.
///
/// Does not open a platform file picker. Apps should perform picking inside
/// [FileButtonContext.onPressed], using [FileButtonContext.accept] and
/// [FileButtonContext.multiple] as hints.
class BasicFileButtonDelegate extends FileButtonDelegate {
  /// Creates a baseline file-button delegate.
  const BasicFileButtonDelegate();

  @override
  Widget root(FileButtonContext context) {
    void handlePressed() {
      if (!context.disabled) {
        context.onPressed();
      }
    }

    return context.builder(handlePressed);
  }
}
