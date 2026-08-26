import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Two panes with a handle (Mantine Splitter / Splitter.Pane).
@Preview(
  name: 'Splitter usage',
  wrapper: wrapMantlePreview,
  size: Size(420, 160),
)
@Preview(
  name: 'Splitter usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// splitterUsagePreview gallery.
Widget splitterUsagePreview() {
  return const SizedBox(
    width: 380,
    height: 120,
    child: Splitter(
      children: [
        SplitterPane(
          child: ColoredBox(
            color: Color(0xFFE7F5FF),
            child: MCenter(child: Text('Left')),
          ),
        ),
        SplitterPane(
          child: ColoredBox(
            color: Color(0xFFFFF3BF),
            child: MCenter(child: Text('Right')),
          ),
        ),
      ],
    ),
  );
}

/// Vertical orientation.
@Preview(
  name: 'Splitter vertical',
  wrapper: wrapMantlePreview,
  size: Size(320, 220),
)
@Preview(
  name: 'Splitter vertical (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// splitterVerticalPreview gallery.
Widget splitterVerticalPreview() {
  return const SizedBox(
    width: 280,
    height: 180,
    child: Splitter(
      orientation: Axis.vertical,
      children: [
        SplitterPane(
          child: ColoredBox(
            color: Color(0xFFE7F5FF),
            child: MCenter(child: Text('Top')),
          ),
        ),
        SplitterPane(
          child: ColoredBox(
            color: Color(0xFFFFF3BF),
            child: MCenter(child: Text('Bottom')),
          ),
        ),
      ],
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Splitter catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Splitter catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// splitterCatalogPreview gallery.
Widget splitterCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: splitterUsagePreview()),
      PreviewSection(title: 'Vertical', child: splitterVerticalPreview()),
    ],
  );
}
