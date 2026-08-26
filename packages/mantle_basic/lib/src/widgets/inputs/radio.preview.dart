import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart' hide RadioGroup;
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'Radio variants', wrapper: wrapMantlePreview)
@Preview(
  name: 'Radio variants (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// radioVariantsPreview gallery.
Widget radioVariantsPreview() {
  return const Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Radio(value: 'a', label: Text('Default')),
      Radio.filled(value: 'b', label: Text('Filled')),
      Radio.outline(value: 'c', label: Text('Outline')),
    ],
  );
}

@Preview(name: 'RadioGroup usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'RadioGroup usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// radioGroupUsagePreview gallery.
Widget radioGroupUsagePreview() {
  return const RadioGroup(
    defaultValue: 'react',
    children: [
      Radio(value: 'react', label: Text('React')),
      Radio(value: 'svelte', label: Text('Svelte')),
      Radio(value: 'ng', label: Text('Angular')),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Radio catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Radio catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// radioCatalogPreview gallery.
Widget radioCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Variants', child: radioVariantsPreview()),
      PreviewSection(title: 'Group', child: radioGroupUsagePreview()),
    ],
  );
}
