import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(
  name: 'TextInput usage',
  wrapper: wrapMantlePreview,
  size: Size(360, 200),
)
@Preview(
  name: 'TextInput usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// textInputUsagePreview gallery.
Widget textInputUsagePreview() {
  return const SizedBox(
    width: 280,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextInput(label: Text('Email'), placeholder: 'you@mantine.dev'),
        SizedBox(height: 8),
        TextInput.filled(label: Text('Filled'), placeholder: 'Name'),
        SizedBox(height: 8),
        TextInput(disabled: true, placeholder: 'Disabled'),
      ],
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'TextInput catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'TextInput catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// textInputCatalogPreview gallery.
Widget textInputCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: textInputUsagePreview()),
    ],
  );
}
