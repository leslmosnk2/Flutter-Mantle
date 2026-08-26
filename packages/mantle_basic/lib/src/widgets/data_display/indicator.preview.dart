import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'Indicator usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'Indicator usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// indicatorUsagePreview gallery.
Widget indicatorUsagePreview() {
  return const Wrap(
    spacing: 16,
    runSpacing: 16,
    children: [
      Indicator(
        label: Text('3'),
        child: SizedBox(
          width: 40,
          height: 40,
          child: ColoredBox(color: Color(0xFFE7F5FF)),
        ),
      ),
      Indicator(
        processing: true,
        child: SizedBox(
          width: 40,
          height: 40,
          child: ColoredBox(color: Color(0xFFE7F5FF)),
        ),
      ),
      Indicator(
        disabled: true,
        label: Text('3'),
        child: SizedBox(
          width: 40,
          height: 40,
          child: ColoredBox(color: Color(0xFFE7F5FF)),
        ),
      ),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Indicator catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Indicator catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// indicatorCatalogPreview gallery.
Widget indicatorCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: indicatorUsagePreview()),
    ],
  );
}
