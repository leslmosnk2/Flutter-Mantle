import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'MCard usage', wrapper: wrapMantlePreview, size: Size(360, 180))
@Preview(
  name: 'MCard usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mCardUsagePreview gallery.
Widget mCardUsagePreview() {
  return const SizedBox(
    width: 280,
    child: MCard(
      withBorder: true,
      children: [
        CardSection(
          child: ColoredBox(
            color: Color(0xFFE7F5FF),
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Text('hero'),
            ),
          ),
        ),
        Text('Norway Fjord Adventures'),
      ],
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'MCard catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'MCard catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// mcardCatalogPreview gallery.
Widget mcardCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: mCardUsagePreview()),
    ],
  );
}
