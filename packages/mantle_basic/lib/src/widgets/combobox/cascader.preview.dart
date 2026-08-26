import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

const _locations = [
  CascaderOption(
    value: 'asia',
    label: 'Asia',
    children: [
      CascaderOption(value: 'jp', label: 'Japan'),
      CascaderOption(value: 'cn', label: 'China'),
    ],
  ),
  CascaderOption(value: 'eu', label: 'Europe'),
];

@Preview(
  name: 'Cascader usage',
  wrapper: wrapMantlePreview,
  size: Size(320, 80),
)
@Preview(
  name: 'Cascader usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// cascaderUsagePreview gallery.
Widget cascaderUsagePreview() {
  return const SizedBox(
    width: 280,
    child: Cascader(data: _locations, placeholder: 'Location'),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Cascader catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Cascader catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// cascaderCatalogPreview gallery.
Widget cascaderCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: cascaderUsagePreview()),
    ],
  );
}
