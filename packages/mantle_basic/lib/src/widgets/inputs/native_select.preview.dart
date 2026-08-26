import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(
  name: 'NativeSelect usage',
  wrapper: wrapMantlePreview,
  size: Size(360, 80),
)
@Preview(
  name: 'NativeSelect usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// nativeSelectUsagePreview gallery.
Widget nativeSelectUsagePreview() {
  return const SizedBox(
    width: 240,
    child: NativeSelect(
      placeholder: 'Choose',
      data: [
        NativeSelectItem(value: 'react', label: 'React'),
        NativeSelectItem(value: 'ng', label: 'Angular'),
        NativeSelectItem(value: 'vue', label: 'Vue'),
      ],
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'NativeSelect catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'NativeSelect catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// nativeSelectCatalogPreview gallery.
Widget nativeSelectCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: nativeSelectUsagePreview()),
    ],
  );
}
