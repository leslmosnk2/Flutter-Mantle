import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(
  name: 'Dialog opened',
  wrapper: wrapMantlePreview,
  size: Size(420, 260),
)
@Preview(
  name: 'Dialog opened (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// dialogOpenedPreview gallery.
Widget dialogOpenedPreview() {
  return const SizedBox(
    width: 380,
    height: 220,
    child: Dialog(opened: true, child: Text('Subscribe to newsletter')),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Dialog catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Dialog catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// dialogCatalogPreview gallery.
Widget dialogCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Opened', child: dialogOpenedPreview()),
    ],
  );
}
