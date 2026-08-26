import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(
  name: 'Input variants',
  wrapper: wrapMantlePreview,
  size: Size(360, 180),
)
@Preview(
  name: 'Input variants (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// inputVariantsPreview gallery.
Widget inputVariantsPreview() {
  return const SizedBox(
    width: 280,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Input(placeholder: 'Default'),
        SizedBox(height: 8),
        Input.filled(placeholder: 'Filled'),
        SizedBox(height: 8),
        Input.unstyled(placeholder: 'Unstyled'),
      ],
    ),
  );
}

@Preview(name: 'Input sizes', wrapper: wrapMantlePreview, size: Size(360, 220))
@Preview(
  name: 'Input sizes (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// inputSizesPreview gallery.
Widget inputSizesPreview() {
  return SizedBox(
    width: 280,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (final size in ['xs', 'sm', 'md', 'lg', 'xl'])
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Input(placeholder: size, size: size),
          ),
      ],
    ),
  );
}

@Preview(
  name: 'InputWrapper usage',
  wrapper: wrapMantlePreview,
  size: Size(360, 120),
)
@Preview(
  name: 'InputWrapper usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// inputWrapperUsagePreview gallery.
Widget inputWrapperUsagePreview() {
  return const SizedBox(
    width: 280,
    child: InputWrapper(
      label: Text('Name'),
      description: Text('Your public display name'),
      error: Text('Required'),
      required: true,
      child: Input(placeholder: 'Jane'),
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Input catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Input catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// inputCatalogPreview gallery.
Widget inputCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Variants', child: inputVariantsPreview()),
      PreviewSection(title: 'Sizes', child: inputSizesPreview()),
      PreviewSection(title: 'Wrapper', child: inputWrapperUsagePreview()),
    ],
  );
}
