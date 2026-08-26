# mantle_widgets

Component **contracts** and generated widgets for [Mantle](https://mantle.leslmosnk.com).
Each widget is a `StatelessWidget` whose look comes from a theme delegate —
this package defines the public API, not the paint.

Pair it with [`mantle_basic`](https://pub.dev/packages/mantle_basic) for a
Mantine-like baseline, or register your own delegates on `MantleTheme`.

This library re-exports `package:mantle_core/mantle_core.dart`, so you do
not need a separate core import to use `MantleProvider` or tokens.

- **Gallery:** [mantle.leslmosnk.com](https://mantle.leslmosnk.com)
- **Docs:** [docs.mantle.leslmosnk.com/widgets](https://docs.mantle.leslmosnk.com/#/widgets/)

## Install

```yaml
dependencies:
  mantle_widgets: ^1.0.0
  mantle_basic: ^1.0.0
```

A runnable sample lives in [`example/`](example/). The full gallery is
[`mantle_basic/example`](https://github.com/leslmosnk2/Flutter-Mantle/tree/main/packages/mantle_basic/example)
and at [mantle.leslmosnk.com](https://mantle.leslmosnk.com).

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

## License

MIT. See [LICENSE](LICENSE).
