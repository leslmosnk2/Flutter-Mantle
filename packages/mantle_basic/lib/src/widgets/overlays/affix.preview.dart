import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'Affix usage', wrapper: wrapMantlePreview, size: Size(320, 200))
@Preview(
  name: 'Affix usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// affixUsagePreview gallery.
Widget affixUsagePreview() {
  return const SizedBox(
    width: 280,
    height: 160,
    child: ColoredBox(
      color: Color(0xFFF1F3F5),
      child: Affix(
        bottom: 8,
        right: 8,
        child: Button.filled(onPressed: previewNoop, child: Text('New')),
      ),
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Affix catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Affix catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// affixCatalogPreview gallery.
Widget affixCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: affixUsagePreview()),
    ],
  );
}
