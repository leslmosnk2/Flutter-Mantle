import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(
  name: 'Accordion usage',
  wrapper: wrapMantlePreview,
  size: Size(400, 220),
)
@Preview(
  name: 'Accordion usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// accordionUsagePreview gallery.
Widget accordionUsagePreview() {
  return const SizedBox(
    width: 360,
    child: Accordion(
      children: [
        AccordionItem(
          value: 'flex',
          label: Text('Flexibility'),
          child: Text(
            'Configure appearance and behavior with settings '
            'or overwrite any part of component styles',
          ),
        ),
        AccordionItem(
          value: 'focus',
          label: Text('No annoying focus ring'),
          child: Text(
            'Focus ring appears only when the user navigates '
            'with the keyboard',
          ),
        ),
      ],
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Accordion catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Accordion catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// accordionCatalogPreview gallery.
Widget accordionCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: accordionUsagePreview()),
    ],
  );
}
