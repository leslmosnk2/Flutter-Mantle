import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(
  name: 'Fieldset variants',
  wrapper: wrapMantlePreview,
  size: Size(360, 220),
)
@Preview(
  name: 'Fieldset variants (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// fieldsetVariantsPreview gallery.
Widget fieldsetVariantsPreview() {
  return const SizedBox(
    width: 300,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Fieldset(legend: Text('Default'), children: [Text('body')]),
        SizedBox(height: 8),
        Fieldset.filled(legend: Text('Filled'), children: [Text('body')]),
        SizedBox(height: 8),
        Fieldset.unstyled(legend: Text('Unstyled'), children: [Text('body')]),
      ],
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Fieldset catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Fieldset catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// fieldsetCatalogPreview gallery.
Widget fieldsetCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Variants', child: fieldsetVariantsPreview()),
    ],
  );
}
