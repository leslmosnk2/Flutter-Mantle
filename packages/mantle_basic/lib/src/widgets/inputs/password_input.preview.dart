import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(
  name: 'PasswordInput usage',
  wrapper: wrapMantlePreview,
  size: Size(360, 80),
)
@Preview(
  name: 'PasswordInput usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// passwordInputUsagePreview gallery.
Widget passwordInputUsagePreview() {
  return const SizedBox(
    width: 280,
    child: PasswordInput(label: Text('Password'), defaultValue: 'secret'),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'PasswordInput catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'PasswordInput catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// passwordInputCatalogPreview gallery.
Widget passwordInputCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: passwordInputUsagePreview()),
    ],
  );
}
