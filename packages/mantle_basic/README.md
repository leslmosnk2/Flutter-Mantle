# mantle_basic

Baseline Mantine-like **theme** for [Mantle](https://mantle.leslmosnk.com):
default tokens and a delegate for every contract in
[`mantle_widgets`](https://pub.dev/packages/mantle_widgets).

Apps wrap with `MantleProvider(theme: BasicTheme(), child: …)` so every
widget has a terminal implementation.

- **Gallery:** [mantle.leslmosnk.com](https://mantle.leslmosnk.com)
- **Docs:** [leslmosnk2.github.io/Flutter-Mantle/#/basic](https://leslmosnk2.github.io/Flutter-Mantle/#/basic/)

## Install

```yaml
dependencies:
  mantle_widgets: ^1.1.0
  mantle_basic: ^1.1.0
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

| Piece | Role |
|---|---|
| `BasicTheme` | Default tokens + a delegate for every widget contract |
| Delegates | How each widget is painted in the baseline theme |

A live gallery of every widget is at
[mantle.leslmosnk.com](https://mantle.leslmosnk.com). To run it locally:

```bash
cd packages/mantle_basic/example
flutter run -d linux
```

## License

MIT. See [LICENSE](LICENSE).
