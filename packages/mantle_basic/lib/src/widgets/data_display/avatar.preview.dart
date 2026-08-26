import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'Avatar usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'Avatar usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// avatarUsagePreview gallery.
Widget avatarUsagePreview() {
  return const Wrap(
    spacing: 8,
    runSpacing: 8,
    children: [
      Avatar(name: 'Ada Lovelace'),
      Avatar(name: 'Grace Hopper'),
      Avatar(name: 'Alan Turing', color: 'grape'),
    ],
  );
}

@Preview(name: 'Avatar sizes', wrapper: wrapMantlePreview)
@Preview(
  name: 'Avatar sizes (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// avatarSizesPreview gallery.
Widget avatarSizesPreview() {
  return Wrap(
    spacing: 8,
    runSpacing: 8,
    crossAxisAlignment: WrapCrossAlignment.center,
    children: [
      for (final size in ['xs', 'sm', 'md', 'lg', 'xl'])
        Avatar(name: 'Ada Lovelace', size: size),
    ],
  );
}

@Preview(name: 'AvatarGroup usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'AvatarGroup usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// avatarGroupUsagePreview gallery.
Widget avatarGroupUsagePreview() {
  return const AvatarGroup(
    children: [
      Avatar(name: 'Ada Lovelace'),
      Avatar(name: 'Grace Hopper'),
      Avatar(name: 'Alan Turing'),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Avatar catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Avatar catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// avatarCatalogPreview gallery.
Widget avatarCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: avatarUsagePreview()),
      PreviewSection(title: 'Sizes', child: avatarSizesPreview()),
      PreviewSection(title: 'Group', child: avatarGroupUsagePreview()),
    ],
  );
}
