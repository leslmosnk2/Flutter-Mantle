import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(
  name: 'ColorPicker usage',
  wrapper: wrapMantlePreview,
  size: Size(280, 280),
)
@Preview(
  name: 'ColorPicker usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// colorPickerUsagePreview gallery.
Widget colorPickerUsagePreview() {
  return const ColorPicker(value: '#228be6');
}

@Preview(
  name: 'ColorInput usage',
  wrapper: wrapMantlePreview,
  size: Size(320, 80),
)
@Preview(
  name: 'ColorInput usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// colorInputUsagePreview gallery.
Widget colorInputUsagePreview() {
  return const SizedBox(
    width: 240,
    child: ColorInput(label: Text('Color'), value: '#228be6'),
  );
}

@Preview(
  name: 'Hue Alpha sliders',
  wrapper: wrapMantlePreview,
  size: Size(320, 80),
)
@Preview(
  name: 'Hue Alpha sliders (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// hueAlphaSlidersPreview gallery.
Widget hueAlphaSlidersPreview() {
  return const SizedBox(
    width: 240,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        HueSlider(value: 180),
        SizedBox(height: 8),
        AlphaSlider(value: 0.5, color: '#228be6'),
      ],
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'ColorPicker catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'ColorPicker catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// colorPickerCatalogPreview gallery.
Widget colorPickerCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Picker', child: colorPickerUsagePreview()),
      PreviewSection(title: 'Input', child: colorInputUsagePreview()),
      PreviewSection(title: 'Sliders', child: hueAlphaSlidersPreview()),
    ],
  );
}
