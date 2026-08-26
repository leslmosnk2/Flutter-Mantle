import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'MImage fallback', wrapper: wrapMantlePreview)
@Preview(
  name: 'MImage fallback (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mImageFallbackPreview gallery.
Widget mImageFallbackPreview() {
  return const SizedBox(
    width: 120,
    height: 80,
    child: MImage(fallback: Text('broken')),
  );
}

@Preview(name: 'BackgroundImage usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'BackgroundImage usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// backgroundImageUsagePreview gallery.
Widget backgroundImageUsagePreview() {
  return const SizedBox(
    width: 180,
    height: 80,
    child: BackgroundImage(child: MCenter(child: Text('caption'))),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'MImage catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'MImage catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mimageCatalogPreview gallery.
Widget mimageCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Fallback', child: mImageFallbackPreview()),
      PreviewSection(
        title: 'BackgroundImage',
        child: backgroundImageUsagePreview(),
      ),
    ],
  );
}
