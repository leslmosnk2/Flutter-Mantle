import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(
  name: 'PillsInput usage',
  wrapper: wrapMantlePreview,
  size: Size(360, 80),
)
@Preview(
  name: 'PillsInput usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// pillsInputUsagePreview gallery.
Widget pillsInputUsagePreview() {
  return const SizedBox(
    width: 280,
    child: PillsInput(
      children: [
        Pill(child: Text('React')),
        PillsInputField(placeholder: 'Enter tag'),
      ],
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'PillsInput catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'PillsInput catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// pillsInputCatalogPreview gallery.
Widget pillsInputCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: pillsInputUsagePreview()),
    ],
  );
}
