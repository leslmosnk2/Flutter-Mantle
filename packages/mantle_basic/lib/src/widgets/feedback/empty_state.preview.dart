import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'EmptyState usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'EmptyState usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// emptyStateUsagePreview gallery.
Widget emptyStateUsagePreview() {
  return const EmptyState(
    icon: Text('∅'),
    title: Text('No results found'),
    description: Text('Try a different query'),
    action: Text('Reset filters'),
  );
}

@Preview(name: 'EmptyState variants', wrapper: wrapMantlePreview)
@Preview(
  name: 'EmptyState variants (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// emptyStateVariantsPreview gallery.
Widget emptyStateVariantsPreview() {
  return const Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      EmptyState.light(title: Text('Light'), description: Text('No data')),
      SizedBox(height: 12),
      EmptyState.filled(title: Text('Filled'), description: Text('No data')),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'EmptyState catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'EmptyState catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// emptyStateCatalogPreview gallery.
Widget emptyStateCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: emptyStateUsagePreview()),
      PreviewSection(title: 'Variants', child: emptyStateVariantsPreview()),
    ],
  );
}
