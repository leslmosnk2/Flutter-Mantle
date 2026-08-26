import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Every appearance, matching Mantine's Alert variants.
@Preview(name: 'Alert variants', wrapper: wrapMantlePreview)
@Preview(
  name: 'Alert variants (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// alertVariantsPreview gallery.
Widget alertVariantsPreview() {
  const title = Text('Bummer!');
  const body = Text('Something terrible happened');
  return const Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Alert(title: title, child: body),
      SizedBox(height: 8),
      Alert.filled(title: title, child: body),
      SizedBox(height: 8),
      Alert.light(title: title, child: body),
      SizedBox(height: 8),
      Alert.outline(title: title, child: body),
      SizedBox(height: 8),
      Alert.transparent(title: title, child: body),
    ],
  );
}

/// Close button and icon.
@Preview(name: 'Alert states', wrapper: wrapMantlePreview)
@Preview(
  name: 'Alert states (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// alertStatesPreview gallery.
Widget alertStatesPreview() {
  return const Alert(
    title: Text('Heads up'),
    withCloseButton: true,
    closeButtonLabel: 'Dismiss',
    icon: Text('!'),
    child: Text('You can dismiss this alert'),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Alert catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Alert catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// alertCatalogPreview gallery.
Widget alertCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Variants', child: alertVariantsPreview()),
      PreviewSection(title: 'States', child: alertStatesPreview()),
    ],
  );
}
