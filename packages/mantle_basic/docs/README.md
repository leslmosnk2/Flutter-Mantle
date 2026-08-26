# mantle_basic

Baseline Mantine-like **theme**: default tokens and a delegate for every
contract in [`mantle_widgets`](/widgets/).

Apps wrap with `MantleProvider(theme: BasicTheme(), child: …)` so every
widget has a terminal implementation.

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
  child: app,
)
```

## What's in this package

| Piece | Docs |
|---|---|
| `BasicTheme` | [Theme and tokens](/basic/theme) |
| How delegates plug in | [Delegates](/basic/delegates) |
| Per-widget paint | Categories below |

Each component page describes the **baseline delegate** for that contract.
The Flutter constructors live in [mantle_widgets](/widgets/).

A live gallery of every widget is at
[mantle.leslmosnk.com](https://mantle.leslmosnk.com). Source lives in
`packages/mantle_basic/example`:

```bash
cd packages/mantle_basic/example
flutter run -d linux
```

- [Buttons](/basic/buttons/)
- [Combobox](/basic/combobox/)
- [Data display](/basic/data-display/)
- [Feedback](/basic/feedback/)
- [Inputs](/basic/inputs/)
- [Layout](/basic/layout/)
- [Miscellaneous](/basic/miscellaneous/)
- [Navigation](/basic/navigation/)
- [Overlays](/basic/overlays/)
- [Typography](/basic/typography/)
