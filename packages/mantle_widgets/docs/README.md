# mantle_widgets

Component **contracts** and generated widgets. Each widget is a
`StatelessWidget` whose look comes from a theme delegate — this package
defines the public API, not the paint.

Pair it with [`mantle_basic`](/basic/) for a Mantine-like baseline, or
register your own delegates on [`MantleTheme`](/core/theme).

This library re-exports `package:mantle_core/mantle_core.dart`, so you do
not need a separate core import to use `MantleProvider` or tokens.

## Install

```yaml
dependencies:
  mantle_widgets: ^1.0.0
  mantle_basic: ^1.0.0
```

```dart
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

MantleProvider(
  theme: BasicTheme(),
  child: Button.filled(
    onPressed: () {},
    child: const Text('Save'),
  ),
)
```

## How a widget is split

```
@MantleComponent contract   →  this package (API + slots)
generated Button widget     →  this package (*.g.dart)
ButtonDelegate impl         →  theme package (mantle_basic, or yours)
```

[Getting started](/widgets/getting-started) covers import, variants, and sizes.
[Architecture](/widgets/architecture) covers contracts, slots, and swapping
delegates.

## Components

- [Buttons](/widgets/buttons/)
- [Combobox](/widgets/combobox/)
- [Data display](/widgets/data-display/)
- [Feedback](/widgets/feedback/)
- [Inputs](/widgets/inputs/)
- [Layout](/widgets/layout/)
- [Miscellaneous](/widgets/miscellaneous/)
- [Navigation](/widgets/navigation/)
- [Overlays](/widgets/overlays/)
- [Typography](/widgets/typography/)
