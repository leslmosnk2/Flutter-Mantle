import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Values and sizes (Mantine Progress).
@Preview(
  name: 'Progress values',
  wrapper: wrapMantlePreview,
  size: Size(360, 80),
)
@Preview(
  name: 'Progress values (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// progressValuesPreview gallery.
Widget progressValuesPreview() {
  return const SizedBox(
    width: 320,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Progress(value: 25),
        SizedBox(height: 8),
        Progress(value: 50),
        SizedBox(height: 8),
        Progress(value: 75, striped: true),
      ],
    ),
  );
}

@Preview(
  name: 'Progress sizes',
  wrapper: wrapMantlePreview,
  size: Size(360, 80),
)
@Preview(
  name: 'Progress sizes (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// progressSizesPreview gallery.
Widget progressSizesPreview() {
  return SizedBox(
    width: 320,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (final size in ['xs', 'sm', 'md', 'lg', 'xl'])
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Progress(value: 60, size: size),
          ),
      ],
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Progress catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Progress catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// progressCatalogPreview gallery.
Widget progressCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Values', child: progressValuesPreview()),
      PreviewSection(title: 'Sizes', child: progressSizesPreview()),
    ],
  );
}
