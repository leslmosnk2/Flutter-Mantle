import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(
  name: 'MNotification usage',
  wrapper: wrapMantlePreview,
  size: Size(400, 160),
)
@Preview(
  name: 'MNotification usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mNotificationUsagePreview gallery.
Widget mNotificationUsagePreview() {
  return const SizedBox(
    width: 360,
    child: MNotification(
      title: Text('We notify you that'),
      message: Text('Give a star to Mantine'),
    ),
  );
}

@Preview(
  name: 'MNotification states',
  wrapper: wrapMantlePreview,
  size: Size(400, 120),
)
@Preview(
  name: 'MNotification states (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mNotificationStatesPreview gallery.
Widget mNotificationStatesPreview() {
  return const SizedBox(
    width: 360,
    child: MNotification(
      message: Text('Hi'),
      withClose: false,
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'MNotification catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'MNotification catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mnotificationCatalogPreview gallery.
Widget mnotificationCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: mNotificationUsagePreview()),
      PreviewSection(title: 'States', child: mNotificationStatesPreview()),
    ],
  );
}
