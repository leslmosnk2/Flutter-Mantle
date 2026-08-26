import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Size tokens xs–xl (Mantine Container).
@Preview(
  name: 'MContainer sizes',
  wrapper: wrapMantlePreview,
  size: Size(400, 280),
)
@Preview(
  name: 'MContainer sizes (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mContainerSizesPreview gallery.
Widget mContainerSizesPreview() {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      for (final size in ['xs', 'sm', 'md'])
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: ColoredBox(
            color: const Color(0xFFF1F3F5),
            child: MContainer(
              size: size,
              child: Text(size),
            ),
          ),
        ),
    ],
  );
}

/// Fluid ignores size and fills the parent.
@Preview(
  name: 'MContainer fluid',
  wrapper: wrapMantlePreview,
  size: Size(400, 80),
)
@Preview(
  name: 'MContainer fluid (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mContainerFluidPreview gallery.
Widget mContainerFluidPreview() {
  return const ColoredBox(
    color: Color(0xFFF1F3F5),
    child: MContainer(
      fluid: true,
      child: Text('fluid'),
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'MContainer catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'MContainer catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mcontainerCatalogPreview gallery.
Widget mcontainerCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Sizes', child: mContainerSizesPreview()),
      PreviewSection(title: 'Fluid', child: mContainerFluidPreview()),
    ],
  );
}
