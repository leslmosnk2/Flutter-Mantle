import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Centers its child on both axes (Mantine Center).
@Preview(
  name: 'MCenter usage',
  wrapper: wrapMantlePreview,
  size: Size(360, 140),
)
@Preview(
  name: 'MCenter usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mCenterUsagePreview gallery.
Widget mCenterUsagePreview() {
  return const SizedBox(
    width: 320,
    height: 100,
    child: ColoredBox(
      color: Color(0xFFF1F3F5),
      child: MCenter(
        child: ColoredBox(
          color: Color(0xFFE7F5FF),
          child: Padding(
            padding: EdgeInsets.all(8),
            child: Text('All elements inside Center are centered'),
          ),
        ),
      ),
    ),
  );
}

/// `inline: true` shrink-wraps (CSS inline-flex).
@Preview(name: 'MCenter inline', wrapper: wrapMantlePreview)
@Preview(
  name: 'MCenter inline (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mCenterInlinePreview gallery.
Widget mCenterInlinePreview() {
  return const MCenter(
    inline: true,
    child: Text('inline Center'),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'MCenter catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'MCenter catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mcenterCatalogPreview gallery.
Widget mcenterCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: mCenterUsagePreview()),
      PreviewSection(title: 'Inline', child: mCenterInlinePreview()),
    ],
  );
}
