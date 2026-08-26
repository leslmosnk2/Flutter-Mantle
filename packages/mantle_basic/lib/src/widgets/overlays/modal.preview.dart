import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'Modal opened', wrapper: wrapMantlePreview, size: Size(480, 280))
@Preview(
  name: 'Modal opened (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// modalOpenedPreview gallery.
Widget modalOpenedPreview() {
  return const SizedBox(
    width: 440,
    height: 240,
    child: Modal(
      opened: true,
      title: Text('Edit profile'),
      child: Text('Modal body'),
    ),
  );
}

@Preview(
  name: 'ModalRoot opened',
  wrapper: wrapMantlePreview,
  size: Size(420, 220),
)
@Preview(
  name: 'ModalRoot opened (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// modalRootOpenedPreview gallery.
Widget modalRootOpenedPreview() {
  return const SizedBox(
    width: 380,
    height: 180,
    child: ModalRoot(opened: true, child: Text('Raw overlay')),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Modal catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Modal catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// modalCatalogPreview gallery.
Widget modalCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Opened', child: modalOpenedPreview()),
      PreviewSection(title: 'ModalRoot', child: modalRootOpenedPreview()),
    ],
  );
}
