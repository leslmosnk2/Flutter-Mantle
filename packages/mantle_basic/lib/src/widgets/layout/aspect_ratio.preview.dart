import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Common ratios (Mantine AspectRatio).
@Preview(
  name: 'MAspectRatio usage',
  wrapper: wrapMantlePreview,
  size: Size(400, 280),
)
@Preview(
  name: 'MAspectRatio usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mAspectRatioUsagePreview gallery.
Widget mAspectRatioUsagePreview() {
  return const Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      SizedBox(
        width: 160,
        child: MAspectRatio(
          ratio: 16 / 9,
          child: ColoredBox(
            color: Color(0xFFE7F5FF),
            child: MCenter(child: Text('16 / 9')),
          ),
        ),
      ),
      Space(h: 'md'),
      SizedBox(
        width: 160,
        child: MAspectRatio(
          ratio: 1,
          child: ColoredBox(
            color: Color(0xFFE7F5FF),
            child: MCenter(child: Text('1 / 1')),
          ),
        ),
      ),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'MAspectRatio catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'MAspectRatio catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// maspectRatioCatalogPreview gallery.
Widget maspectRatioCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: mAspectRatioUsagePreview()),
    ],
  );
}
