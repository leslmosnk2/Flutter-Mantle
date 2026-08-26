import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Hosts Mantle widgets inside Flutter's widget previewer.
Widget wrapMantlePreview(Widget child) {
  return _MantlePreviewHost(child: child);
}

void _noop() {}

class _MantlePreviewHost extends StatelessWidget {
  const _MantlePreviewHost({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final brightness =
        MediaQuery.maybePlatformBrightnessOf(context) ?? Brightness.light;
    final dark = brightness == Brightness.dark;
    return MantleProvider(
      theme: BasicTheme(),
      forceColorScheme: dark ? MantleColorScheme.dark : MantleColorScheme.light,
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: ColoredBox(
          color: dark ? const Color(0xFF242424) : const Color(0xFFFFFFFF),
          child: Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}

class _Section extends StatelessWidget {
  const _Section({required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          child,
        ],
      ),
    );
  }
}

/// Every variant, matching Mantine's Button variants.
@Preview(name: 'Variants', wrapper: wrapMantlePreview)
@Preview(
  name: 'Variants (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget buttonVariantsPreview() {
  const label = Text('Button');
  return const Wrap(
    spacing: 8,
    runSpacing: 8,
    children: [
      Button(onPressed: _noop, child: label),
      Button.filled(onPressed: _noop, child: label),
      Button.light(onPressed: _noop, child: label),
      Button.outline(onPressed: _noop, child: label),
      Button.subtle(onPressed: _noop, child: label),
      Button.transparent(onPressed: _noop, child: label),
      ColoredBox(
        color: Color(0xFF228BE6),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Button.white(onPressed: _noop, child: label),
        ),
      ),
    ],
  );
}

/// Regular sizes xs–xl (default is sm).
@Preview(name: 'Sizes', wrapper: wrapMantlePreview)
@Preview(
  name: 'Sizes (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget buttonSizesPreview() {
  return Wrap(
    spacing: 8,
    runSpacing: 8,
    crossAxisAlignment: WrapCrossAlignment.center,
    children: [
      for (final size in ['xs', 'sm', 'md', 'lg', 'xl'])
        Button.filled(
          size: size,
          onPressed: _noop,
          child: Text(size),
        ),
    ],
  );
}

/// Compact sizes, matching Mantine `compact-xs` … `compact-xl`.
@Preview(name: 'Compact', wrapper: wrapMantlePreview)
@Preview(
  name: 'Compact (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget buttonCompactPreview() {
  return Wrap(
    spacing: 8,
    runSpacing: 8,
    crossAxisAlignment: WrapCrossAlignment.center,
    children: [
      for (final size in [
        'compact-xs',
        'compact-sm',
        'compact-md',
        'compact-lg',
        'compact-xl',
      ])
        Button.filled(
          size: size,
          onPressed: _noop,
          child: Text(size.replaceFirst('compact-', '')),
        ),
    ],
  );
}

/// Loading and disabled, including both at once.
@Preview(name: 'States', wrapper: wrapMantlePreview)
@Preview(
  name: 'States (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget buttonStatesPreview() {
  const label = Text('Button');
  return const Wrap(
    spacing: 8,
    runSpacing: 8,
    children: [
      Button.filled(onPressed: _noop, child: label),
      Button.filled(loading: true, onPressed: _noop, child: label),
      Button.filled(disabled: true, onPressed: _noop, child: label),
      Button.filled(
        loading: true,
        disabled: true,
        onPressed: _noop,
        child: label,
      ),
      Button.outline(disabled: true, onPressed: _noop, child: label),
    ],
  );
}

/// Left and right sections (Mantine leftSection / rightSection).
@Preview(name: 'Sections', wrapper: wrapMantlePreview)
@Preview(
  name: 'Sections (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget buttonSectionsPreview() {
  return const Wrap(
    spacing: 8,
    runSpacing: 8,
    children: [
      Button.filled(
        prefix: Text('+'),
        onPressed: _noop,
        child: Text('Prefix'),
      ),
      Button.filled(
        suffix: Text('→'),
        onPressed: _noop,
        child: Text('Suffix'),
      ),
      Button.outline(
        prefix: Text('←'),
        suffix: Text('→'),
        onPressed: _noop,
        child: Text('Both'),
      ),
    ],
  );
}

/// `grow: true` fills the parent width (Mantine fullWidth).
@Preview(name: 'Grow', wrapper: wrapMantlePreview, size: Size(360, 80))
Widget buttonGrowPreview() {
  return const SizedBox(
    width: 320,
    child: Button.filled(
      grow: true,
      onPressed: _noop,
      child: Text('Full width'),
    ),
  );
}

/// Filled + explicit gradient (Mantine variant="gradient").
@Preview(name: 'Gradient', wrapper: wrapMantlePreview)
Widget buttonGradientPreview() {
  return const Button.filled(
    onPressed: _noop,
    gradient: LinearGradient(
      colors: [Color(0xFF228BE6), Color(0xFF15AABF)],
    ),
    child: Text('Gradient'),
  );
}

/// Radius override and autoContrast on a light primary.
@Preview(name: 'Radius and autoContrast', wrapper: wrapMantlePreview)
Widget buttonRadiusAutoContrastPreview() {
  return Wrap(
    spacing: 8,
    runSpacing: 8,
    children: [
      Button.filled(
        radius: BorderRadius.circular(0),
        onPressed: _noop,
        child: const Text('Sharp'),
      ),
      Button.filled(
        radius: BorderRadius.circular(20),
        onPressed: _noop,
        child: const Text('Pill'),
      ),
      MantleProvider(
        theme: BasicTheme(primaryColor: 'yellow'),
        child: const Button.filled(
          autoContrast: true,
          onPressed: _noop,
          child: Text('autoContrast'),
        ),
      ),
    ],
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(
  name: 'Catalog',
  wrapper: wrapMantlePreview,
)
@Preview(
  name: 'Catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
Widget buttonCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      _Section(title: 'Variants', child: buttonVariantsPreview()),
      _Section(title: 'Sizes', child: buttonSizesPreview()),
      _Section(title: 'Compact', child: buttonCompactPreview()),
      _Section(title: 'States', child: buttonStatesPreview()),
      _Section(title: 'Sections', child: buttonSectionsPreview()),
      _Section(title: 'Grow', child: buttonGrowPreview()),
      _Section(title: 'Gradient', child: buttonGradientPreview()),
      _Section(
        title: 'Radius and autoContrast',
        child: buttonRadiusAutoContrastPreview(),
      ),
    ],
  );
}
