import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'RollingNumber usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'RollingNumber usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// rollingNumberUsagePreview gallery.
Widget rollingNumberUsagePreview() {
  return const RollingNumber(
    value: 1234,
    prefix: r'$ ',
    thousandSeparator: ',',
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'RollingNumber catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'RollingNumber catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// rollingNumberCatalogPreview gallery.
Widget rollingNumberCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: rollingNumberUsagePreview()),
    ],
  );
}
