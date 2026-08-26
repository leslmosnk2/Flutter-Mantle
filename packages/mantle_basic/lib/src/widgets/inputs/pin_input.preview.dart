import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'PinInput usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'PinInput usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// pinInputUsagePreview gallery.
Widget pinInputUsagePreview() {
  return const Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      PinInput(length: 4),
      SizedBox(height: 12),
      PinInput.filled(length: 4),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'PinInput catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'PinInput catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// pinInputCatalogPreview gallery.
Widget pinInputCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: pinInputUsagePreview()),
    ],
  );
}
