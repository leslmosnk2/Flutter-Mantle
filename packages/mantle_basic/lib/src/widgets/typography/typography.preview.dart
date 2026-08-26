import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart' hide Table;
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Theme-aware body text sizes (Mantine Text).
@Preview(name: 'MText sizes', wrapper: wrapMantlePreview)
@Preview(
  name: 'MText sizes (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget mTextSizesPreview() {
  return const Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      MText(size: 'xs', child: Text('xs text')),
      MText(size: 'sm', child: Text('sm text')),
      MText(size: 'md', child: Text('md text')),
      MText(size: 'lg', child: Text('lg text')),
      MText(size: 'xl', child: Text('xl text')),
    ],
  );
}

/// Weight and color.
@Preview(name: 'MText style', wrapper: wrapMantlePreview)
@Preview(
  name: 'MText style (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget mTextStylePreview() {
  return const Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      MText(fw: FontWeight.w700, child: Text('Bold')),
      MText(color: 'blue', child: Text('Blue')),
      MText(color: 'gray', child: Text('Gray')),
    ],
  );
}

/// Catalog of MText displays.
@Preview(name: 'MText catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'MText catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget mTextCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Sizes', child: mTextSizesPreview()),
      PreviewSection(title: 'Style', child: mTextStylePreview()),
    ],
  );
}

/// Title orders 1–6 (Mantine Title).
@Preview(name: 'Title orders', wrapper: wrapMantlePreview)
@Preview(
  name: 'Title orders (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget titleOrdersPreview() {
  return const Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      MTitle(order: 1, child: Text('Heading 1')),
      MTitle(order: 2, child: Text('Heading 2')),
      MTitle(order: 3, child: Text('Heading 3')),
      MTitle(order: 4, child: Text('Heading 4')),
    ],
  );
}

/// Catalog of Title displays.
@Preview(name: 'Title catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Title catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget titleCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Orders', child: titleOrdersPreview()),
    ],
  );
}

/// Inline and block Code.
@Preview(name: 'Code usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'Code usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget codeUsagePreview() {
  return const Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Code(child: Text('React.createElement()')),
      SizedBox(height: 8),
      Code(block: true, child: Text('npm install @mantine/core')),
    ],
  );
}

/// Catalog of Code displays.
@Preview(name: 'Code catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Code catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget codeCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: codeUsagePreview()),
    ],
  );
}

/// Highlighted Mark fragments.
@Preview(name: 'Mark usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'Mark usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget markUsagePreview() {
  return const Wrap(
    spacing: 8,
    children: [
      Mark(child: Text('Default')),
      Mark(color: 'teal', child: Text('Teal')),
    ],
  );
}

/// Catalog of Mark displays.
@Preview(name: 'Mark catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Mark catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget markCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: markUsagePreview()),
    ],
  );
}

/// Highlight matching substrings.
@Preview(name: 'Highlight usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'Highlight usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget highlightUsagePreview() {
  return const Highlight(
    text: 'Highlight this, that and also this',
    highlight: ['this', 'that'],
  );
}

/// Catalog of Highlight displays.
@Preview(name: 'Highlight catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Highlight catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget highlightCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: highlightUsagePreview()),
    ],
  );
}

/// Blockquote with cite.
@Preview(name: 'Blockquote usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'Blockquote usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget blockquoteUsagePreview() {
  return const Blockquote(
    cite: Text('– Forrest Gump'),
    child: Text(
      'Life is like an npm install – you never know what you are going to get.',
    ),
  );
}

/// Catalog of Blockquote displays.
@Preview(name: 'Blockquote catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Blockquote catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget blockquoteCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: blockquoteUsagePreview()),
    ],
  );
}

/// Unordered and ordered lists.
@Preview(name: 'MList usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'MList usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget mListUsagePreview() {
  return const Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      MList(
        spacing: 'xs',
        children: [
          ListItem(child: Text('Clone or download repository from GitHub')),
          ListItem(child: Text('Install dependencies with yarn')),
        ],
      ),
      SizedBox(height: 12),
      MList(
        type: ListType.ordered,
        withPadding: true,
        children: [
          ListItem(child: Text('First')),
          ListItem(child: Text('Second')),
        ],
      ),
    ],
  );
}

/// Catalog of MList displays.
@Preview(name: 'MList catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'MList catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget mListCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: mListUsagePreview()),
    ],
  );
}

/// Typography styles wrapper.
@Preview(name: 'Typography usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'Typography usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget typographyUsagePreview() {
  return const Typography(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MTitle(order: 3, child: Text('Article title')),
        MText(child: Text('Body copy under Typography scope.')),
      ],
    ),
  );
}

/// Catalog of Typography displays.
@Preview(name: 'Typography catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Typography catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget typographyCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: typographyUsagePreview()),
    ],
  );
}

/// Simple table (Mantine Table).
@Preview(name: 'MTable usage', wrapper: wrapMantlePreview)
@Preview(
  name: 'MTable usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget mTableUsagePreview() {
  return const MTable(
    withTableBorder: true,
    highlightOnHover: true,
    children: [
      TableThead(
        children: [
          TableTr(
            children: [
              TableTh(child: Text('Element')),
              TableTh(child: Text('Position')),
            ],
          ),
        ],
      ),
      TableTbody(
        children: [
          TableTr(
            children: [
              TableTd(child: Text('Carbon')),
              TableTd(child: Text('14')),
            ],
          ),
          TableTr(
            children: [
              TableTd(child: Text('Nitrogen')),
              TableTd(child: Text('15')),
            ],
          ),
        ],
      ),
    ],
  );
}

/// Wide table inside TableScrollContainer.
@Preview(name: 'MTable scroll', wrapper: wrapMantlePreview)
@Preview(
  name: 'MTable scroll (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget mTableScrollPreview() {
  return const SizedBox(
    width: 280,
    height: 160,
    child: TableScrollContainer(
      minWidth: 480,
      child: MTable(
        withTableBorder: true,
        children: [
          TableCaption(child: Text('Elements')),
          TableThead(
            children: [
              TableTr(
                children: [
                  TableTh(child: Text('Element')),
                  TableTh(child: Text('Position')),
                  TableTh(child: Text('Mass')),
                ],
              ),
            ],
          ),
          TableTbody(
            children: [
              TableTr(
                children: [
                  TableTd(child: Text('Carbon')),
                  TableTd(child: Text('14')),
                  TableTd(child: Text('12.011')),
                ],
              ),
            ],
          ),
          TableTfoot(
            children: [
              TableTr(
                children: [
                  TableTd(child: Text('Footer')),
                  TableTd(child: Text('')),
                  TableTd(child: Text('')),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

/// Catalog of MTable displays.
@Preview(name: 'MTable catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'MTable catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget mTableCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: mTableUsagePreview()),
      PreviewSection(
        title: 'Scroll container',
        child: mTableScrollPreview(),
      ),
    ],
  );
}
