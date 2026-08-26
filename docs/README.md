# Mantle

Flutter theming architecture where the **theme owns more than colors** — it
owns design tokens and the structure of every widget.

Inspired by [Mantine](https://mantine.dev).

- **Gallery:** [mantle.leslmosnk.com](https://mantle.leslmosnk.com)
- **Source:** [github.com/leslmosnk2/Flutter-Mantle](https://github.com/leslmosnk2/Flutter-Mantle)

Packages:

| Package | Role |
|---|---|
| [mantle_core](/core/) | Tokens, `MantleTheme`, `MantleProvider` |
| [mantle_widgets](/widgets/) | Component contracts and generated widgets |
| [mantle_basic](/basic/) | Baseline Mantine-like theme and delegates |
| [mantle_annotations](/annotations/) | `@MantleToken`, `@MantleComponent` |
| [mantle_gen](/gen/) | `build_runner` generators |

## Quick start

```yaml
dependencies:
  mantle_widgets: ^1.0.0
  mantle_basic: ^1.0.0
```

`mantle_widgets` re-exports the public `mantle_core` API. Depend on
`mantle_core` directly only if you use tokens without widgets.

```dart
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

void main() {
  runApp(
    MantleProvider(
      theme: BasicTheme(),
      child: const Directionality(
        textDirection: TextDirection.ltr,
        child: Center(
          child: Button.filled(
            onPressed: _noop,
            child: Text('Save'),
          ),
        ),
      ),
    ),
  );
}

void _noop() {}
```

Continue in [Getting started](/getting-started) or
[Architecture](/architecture).

## License

MIT.
