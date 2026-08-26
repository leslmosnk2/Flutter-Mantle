import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'OverflowList usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'OverflowList usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// overflowListUsagePreview gallery.
Widget overflowListUsagePreview() {
  return OverflowList(
    maxVisibleItems: 2,
    renderOverflow: (n) => Text('+$n more'),
    children: const [
      Text('React'),
      Text('Vue'),
      Text('Svelte'),
      Text('Angular'),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'OverflowList catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'OverflowList catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// overflowListCatalogPreview gallery.
Widget overflowListCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: overflowListUsagePreview()),
    ],
  );
}
