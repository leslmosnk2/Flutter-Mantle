import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(
  name: 'Textarea usage',
  wrapper: wrapMantlePreview,
  size: Size(360, 160),
)
@Preview(
  name: 'Textarea usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// textareaUsagePreview gallery.
Widget textareaUsagePreview() {
  return const SizedBox(
    width: 280,
    child: Textarea(placeholder: 'Your comment', minRows: 4),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Textarea catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Textarea catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// textareaCatalogPreview gallery.
Widget textareaCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: textareaUsagePreview()),
    ],
  );
}
