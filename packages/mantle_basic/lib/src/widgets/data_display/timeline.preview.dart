import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'Timeline usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'Timeline usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// timelineUsagePreview gallery.
Widget timelineUsagePreview() {
  return const Timeline(
    active: 1,
    children: [
      TimelineItem(
        title: Text('New branch'),
        child: Text('You created a new branch'),
      ),
      TimelineItem(
        title: Text('Commits'),
        child: Text('You pushed 23 commits'),
      ),
      TimelineItem(
        title: Text('Pull request'),
        child: Text('You submitted a pull request'),
      ),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Timeline catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Timeline catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// timelineCatalogPreview gallery.
Widget timelineCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: timelineUsagePreview()),
    ],
  );
}
