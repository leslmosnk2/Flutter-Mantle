import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'Skeleton shapes', wrapper: wrapMantlePreview)
@Preview(
  name: 'Skeleton shapes (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// skeletonShapesPreview gallery.
Widget skeletonShapesPreview() {
  return const Wrap(
    spacing: 12,
    runSpacing: 12,
    crossAxisAlignment: WrapCrossAlignment.center,
    children: [
      Skeleton(width: 120, height: 8),
      Skeleton(
        width: 80,
        height: 16,
        radius: BorderRadius.all(Radius.circular(4)),
      ),
      Skeleton(circle: true, height: 40),
    ],
  );
}

@Preview(name: 'Skeleton visible', wrapper: wrapMantlePreview)
@Preview(
  name: 'Skeleton visible (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// skeletonVisiblePreview gallery.
Widget skeletonVisiblePreview() {
  return const Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Skeleton(width: 160, height: 12),
      SizedBox(height: 8),
      Skeleton(visible: false, child: Text('Ready')),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Skeleton catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Skeleton catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// skeletonCatalogPreview gallery.
Widget skeletonCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Shapes', child: skeletonShapesPreview()),
      PreviewSection(title: 'Visible', child: skeletonVisiblePreview()),
    ],
  );
}
