import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'NumberFormatter usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'NumberFormatter usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// numberFormatterUsagePreview gallery.
Widget numberFormatterUsagePreview() {
  return const Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      NumberFormatter(value: 1000000, prefix: r'$ ', thousandSeparator: ','),
      NumberFormatter(value: 42.5, suffix: '%'),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'NumberFormatter catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'NumberFormatter catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// numberFormatterCatalogPreview gallery.
Widget numberFormatterCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: numberFormatterUsagePreview()),
    ],
  );
}
