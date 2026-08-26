import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/navigation.dart';

@Preview(name: 'Breadcrumbs usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'Breadcrumbs usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// breadcrumbsUsagePreview gallery.
Widget breadcrumbsUsagePreview() {
  return const Breadcrumbs(
    children: [Text('Mantine'), Text('Core'), Text('Button')],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Breadcrumbs catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Breadcrumbs catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// breadcrumbsCatalogPreview gallery.
Widget breadcrumbsCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: breadcrumbsUsagePreview()),
    ],
  );
}
