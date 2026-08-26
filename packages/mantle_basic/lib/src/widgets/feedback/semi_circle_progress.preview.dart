import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'SemiCircleProgress usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'SemiCircleProgress usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// semiCircleProgressUsagePreview gallery.
Widget semiCircleProgressUsagePreview() {
  return const SemiCircleProgress(value: 40, label: Text('40%'));
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'SemiCircleProgress catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'SemiCircleProgress catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// semiCircleProgressCatalogPreview gallery.
Widget semiCircleProgressCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: semiCircleProgressUsagePreview()),
    ],
  );
}
