import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

@Preview(name: 'Switch usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'Switch usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// switchUsagePreview gallery.
Widget switchUsagePreview() {
  return const Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Switch(label: Text('On'), defaultChecked: true),
      Switch(label: Text('Off')),
      Switch(label: Text('Disabled'), disabled: true, defaultChecked: true),
    ],
  );
}

@Preview(name: 'Switch sizes', wrapper: wrapMantlePreview)
@Preview(
  name: 'Switch sizes (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// switchSizesPreview gallery.
Widget switchSizesPreview() {
  return Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      for (final size in ['xs', 'sm', 'md', 'lg', 'xl'])
        Switch(label: Text(size), size: size, defaultChecked: true),
    ],
  );
}

@Preview(name: 'SwitchGroup usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'SwitchGroup usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// switchGroupUsagePreview gallery.
Widget switchGroupUsagePreview() {
  return const SwitchGroup(
    label: Text('Notifications'),
    defaultValue: ['email'],
    children: [
      Switch(value: 'email', label: Text('Email')),
      Switch(value: 'push', label: Text('Push')),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Switch catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Switch catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// switchCatalogPreview gallery.
Widget switchCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: switchUsagePreview()),
      PreviewSection(title: 'Sizes', child: switchSizesPreview()),
      PreviewSection(title: 'Group', child: switchGroupUsagePreview()),
    ],
  );
}
