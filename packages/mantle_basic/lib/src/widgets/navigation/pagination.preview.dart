import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/navigation.dart';

@Preview(name: 'Pagination usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'Pagination usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// paginationUsagePreview gallery.
Widget paginationUsagePreview() {
  return const Pagination(total: 10, value: 3, onChange: _ignore);
}

void _ignore(int value) {}

@Preview(name: 'Pagination sizes', wrapper: wrapMantlePreview)
@Preview(
  name: 'Pagination sizes (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// paginationSizesPreview gallery.
Widget paginationSizesPreview() {
  return const Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      Pagination(total: 5, size: 'xs'),
      SizedBox(height: 8),
      Pagination(total: 5, size: 'sm'),
      SizedBox(height: 8),
      Pagination(total: 5, size: 'md'),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Pagination catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Pagination catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// paginationCatalogPreview gallery.
Widget paginationCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: paginationUsagePreview()),
      PreviewSection(title: 'Sizes', child: paginationSizesPreview()),
    ],
  );
}
