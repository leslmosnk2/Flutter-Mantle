import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(
  name: 'TagsInput usage',
  wrapper: wrapMantlePreview,
  size: Size(320, 80),
)
@Preview(
  name: 'TagsInput usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// tagsInputUsagePreview gallery.
Widget tagsInputUsagePreview() {
  return const SizedBox(
    width: 280,
    child: TagsInput(value: ['react', 'ng'], placeholder: 'Enter tag'),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'TagsInput catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'TagsInput catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// tagsInputCatalogPreview gallery.
Widget tagsInputCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: tagsInputUsagePreview()),
    ],
  );
}
