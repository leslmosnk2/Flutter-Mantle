import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// ActionIcon variants, matching Mantine's ActionIcon variants.
@Preview(name: 'ActionIcon variants', wrapper: wrapMantlePreview)
@Preview(
  name: 'ActionIcon variants (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// actionIconVariantsPreview gallery.
Widget actionIconVariantsPreview() {
  const icon = Text('★');
  return const Wrap(
    spacing: 8,
    runSpacing: 8,
    children: [
      ActionIcon(onPressed: previewNoop, child: icon),
      ActionIcon.filled(onPressed: previewNoop, child: icon),
      ActionIcon.light(onPressed: previewNoop, child: icon),
      ActionIcon.outline(onPressed: previewNoop, child: icon),
      ActionIcon.subtle(onPressed: previewNoop, child: icon),
      ActionIcon.transparent(onPressed: previewNoop, child: icon),
    ],
  );
}

/// Regular sizes xs–xl (default is md).
@Preview(name: 'ActionIcon sizes', wrapper: wrapMantlePreview)
@Preview(
  name: 'ActionIcon sizes (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// actionIconSizesPreview gallery.
Widget actionIconSizesPreview() {
  return Wrap(
    spacing: 8,
    runSpacing: 8,
    crossAxisAlignment: WrapCrossAlignment.center,
    children: [
      for (final size in ['xs', 'sm', 'md', 'lg', 'xl'])
        ActionIcon.filled(
          size: size,
          onPressed: previewNoop,
          child: Text(size),
        ),
    ],
  );
}

/// Loading and disabled.
@Preview(name: 'ActionIcon states', wrapper: wrapMantlePreview)
@Preview(
  name: 'ActionIcon states (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// actionIconStatesPreview gallery.
Widget actionIconStatesPreview() {
  const icon = Text('★');
  return const Wrap(
    spacing: 8,
    runSpacing: 8,
    children: [
      ActionIcon.filled(onPressed: previewNoop, child: icon),
      ActionIcon.filled(loading: true, onPressed: previewNoop, child: icon),
      ActionIcon.filled(disabled: true, onPressed: previewNoop, child: icon),
    ],
  );
}

/// Catalog of ActionIcon displays.
@Preview(name: 'ActionIcon catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'ActionIcon catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// actionIconCatalogPreview gallery.
Widget actionIconCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Variants', child: actionIconVariantsPreview()),
      PreviewSection(title: 'Sizes', child: actionIconSizesPreview()),
      PreviewSection(title: 'States', child: actionIconStatesPreview()),
    ],
  );
}

/// CloseButton sizes and variants.
@Preview(name: 'CloseButton', wrapper: wrapMantlePreview)
@Preview(
  name: 'CloseButton (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// closeButtonPreview gallery.
Widget closeButtonPreview() {
  return const Wrap(
    spacing: 8,
    runSpacing: 8,
    children: [
      CloseButton(onPressed: previewNoop),
      CloseButton.subtle(onPressed: previewNoop),
      CloseButton.transparent(onPressed: previewNoop),
      CloseButton(size: 'lg', onPressed: previewNoop),
    ],
  );
}

/// UnstyledButton, CopyButton, FileButton.
@Preview(name: 'Headless buttons', wrapper: wrapMantlePreview)
@Preview(
  name: 'Headless buttons (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// headlessButtonsPreview gallery.
Widget headlessButtonsPreview() {
  return Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const UnstyledButton(
        onPressed: previewNoop,
        child: Text('UnstyledButton'),
      ),
      const SizedBox(height: 12),
      CopyButton(
        value: 'https://mantine.dev',
        builder: (context, {required copied, required copy}) {
          return Button(
            onPressed: copy,
            child: Text(copied ? 'Copied' : 'Copy url'),
          );
        },
      ),
      const SizedBox(height: 12),
      FileButton(
        onPressed: previewNoop,
        builder: (onPressed) => Button(
          onPressed: onPressed,
          child: const Text('Upload image'),
        ),
      ),
    ],
  );
}

/// Button.Group / ActionIcon.Group.
@Preview(name: 'Groups', wrapper: wrapMantlePreview)
@Preview(
  name: 'Groups (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// buttonGroupsPreview gallery.
Widget buttonGroupsPreview() {
  return const Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ButtonGroup(
        children: [
          Button(onPressed: previewNoop, child: Text('First')),
          Button(onPressed: previewNoop, child: Text('Second')),
          Button(onPressed: previewNoop, child: Text('Third')),
        ],
      ),
      SizedBox(height: 12),
      ActionIconGroup(
        children: [
          ActionIcon(onPressed: previewNoop, child: Text('1')),
          ActionIcon(onPressed: previewNoop, child: Text('2')),
          ActionIcon(onPressed: previewNoop, child: Text('3')),
        ],
      ),
    ],
  );
}
