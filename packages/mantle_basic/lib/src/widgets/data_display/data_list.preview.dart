import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'DataList usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'DataList usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// dataListUsagePreview gallery.
Widget dataListUsagePreview() {
  return const DataList(
    children: [
      DataListItem(
        children: [
          DataListItemLabel(child: Text('Name')),
          DataListItemValue(child: Text('John Doe')),
        ],
      ),
      DataListItem(
        children: [
          DataListItemLabel(child: Text('Email')),
          DataListItemValue(child: Text('john@mantine.dev')),
        ],
      ),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'DataList catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'DataList catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// dataListCatalogPreview gallery.
Widget dataListCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: dataListUsagePreview()),
    ],
  );
}
