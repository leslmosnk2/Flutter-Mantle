import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Polymorphic box with padding, color, and radius (Mantine Box).
@Preview(name: 'Box usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'Box usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget boxUsagePreview() {
  return const Box(
    padding: EdgeInsets.all(16),
    color: Color(0xFFE7F5FF),
    radius: BorderRadius.all(Radius.circular(8)),
    child: Text('Box'),
  );
}

/// Catalog of Box displays.
@Preview(name: 'Box catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Box catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget boxCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: boxUsagePreview()),
    ],
  );
}

/// Paper surface with and without a border.
@Preview(name: 'Paper usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'Paper usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget paperUsagePreview() {
  return const Wrap(
    spacing: 12,
    children: [
      Paper(
        withBorder: true,
        padding: 'md',
        child: Text('With border'),
      ),
      Paper(
        padding: 'md',
        child: Text('No border'),
      ),
    ],
  );
}

/// Catalog of Paper displays.
@Preview(name: 'Paper catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Paper catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget paperCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: paperUsagePreview()),
    ],
  );
}

/// Horizontal divider, with and without a label.
@Preview(name: 'Divider usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'Divider usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget dividerUsagePreview() {
  return const SizedBox(
    width: 280,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Above'),
        Divider(),
        Text('Below'),
        Divider(label: Text('OR')),
        Text('After label'),
      ],
    ),
  );
}

/// Catalog of Divider displays.
@Preview(name: 'Divider catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Divider catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget dividerCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: dividerUsagePreview()),
    ],
  );
}

/// Collapse opened vs closed.
@Preview(name: 'Collapse usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'Collapse usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget collapseUsagePreview() {
  return const Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Opened'),
      Collapse(opened: true, child: Text('Visible content')),
      SizedBox(height: 12),
      Text('Closed'),
      Collapse(opened: false, child: Text('Hidden content')),
    ],
  );
}

/// Catalog of Collapse displays.
@Preview(name: 'Collapse catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Collapse catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget collapseCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: collapseUsagePreview()),
    ],
  );
}

/// Visually hidden but present for semantics.
@Preview(name: 'VisuallyHidden usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'VisuallyHidden usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget visuallyHiddenUsagePreview() {
  return const Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Text('Visible'),
      VisuallyHidden(child: Text('Screen reader only')),
    ],
  );
}

/// Catalog of VisuallyHidden displays.
@Preview(name: 'VisuallyHidden catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'VisuallyHidden catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget visuallyHiddenCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: visuallyHiddenUsagePreview()),
    ],
  );
}

/// ScrollArea with overflow content.
@Preview(
  name: 'ScrollArea usage',
  wrapper: wrapMantlePreview,
  size: Size(280, 160),
)
@Preview(
  name: 'ScrollArea usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
  size: Size(280, 160),
)
Widget scrollAreaUsagePreview() {
  return const SizedBox(
    width: 240,
    height: 120,
    child: ScrollArea(
      child: SizedBox(
        height: 240,
        child: Text(
          'Long content that needs to scroll.\n'
          'Long content that needs to scroll.\n'
          'Long content that needs to scroll.\n'
          'Long content that needs to scroll.',
        ),
      ),
    ),
  );
}

/// Catalog of ScrollArea displays.
@Preview(name: 'ScrollArea catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'ScrollArea catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget scrollAreaCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: scrollAreaUsagePreview()),
    ],
  );
}

/// Marquee scrolling children.
@Preview(
  name: 'Marquee usage',
  wrapper: wrapMantlePreview,
  size: Size(320, 80),
)
@Preview(
  name: 'Marquee usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
  size: Size(320, 80),
)
Widget marqueeUsagePreview() {
  return const SizedBox(
    width: 280,
    height: 40,
    child: Marquee(
      children: [
        Text('Mantine'),
        Text('React'),
        Text('TypeScript'),
      ],
    ),
  );
}

/// Catalog of Marquee displays.
@Preview(name: 'Marquee catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Marquee catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget marqueeCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: marqueeUsagePreview()),
    ],
  );
}

/// FocusTrap around a field.
@Preview(name: 'FocusTrap usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'FocusTrap usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget focusTrapUsagePreview() {
  return const FocusTrap(
    child: Input(placeholder: 'Trapped focus'),
  );
}

/// Catalog of FocusTrap displays.
@Preview(name: 'FocusTrap catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'FocusTrap catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget focusTrapCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: focusTrapUsagePreview()),
    ],
  );
}

/// Portal paints its child into the nearest overlay.
@Preview(name: 'Portal usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'Portal usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget portalUsagePreview() {
  return const Portal(child: Text('Portaled'));
}

/// Catalog of Portal displays.
@Preview(name: 'Portal catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Portal catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget portalCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: portalUsagePreview()),
    ],
  );
}

/// Scroller with overflow children.
@Preview(
  name: 'Scroller usage',
  wrapper: wrapMantlePreview,
  size: Size(280, 80),
)
@Preview(
  name: 'Scroller usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
  size: Size(280, 80),
)
Widget scrollerUsagePreview() {
  return const SizedBox(
    width: 240,
    height: 48,
    child: Scroller(
      child: Row(
        children: [
          Text('One  '),
          Text('Two  '),
          Text('Three  '),
          Text('Four  '),
          Text('Five'),
        ],
      ),
    ),
  );
}

/// Catalog of Scroller displays.
@Preview(name: 'Scroller catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Scroller catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget scrollerCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: scrollerUsagePreview()),
    ],
  );
}

/// Transition mounted vs unmounted.
@Preview(name: 'Transition usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'Transition usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget transitionUsagePreview() {
  return const Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      MTransition(mounted: true, child: Text('Mounted')),
      MTransition(mounted: false, keepMounted: true, child: Text('Kept')),
    ],
  );
}

/// Catalog of Transition displays.
@Preview(name: 'Transition catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Transition catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget transitionCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: transitionUsagePreview()),
    ],
  );
}
