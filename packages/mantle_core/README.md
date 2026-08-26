# mantle_core

> **Weave your own widgets.** Mantle is a Flutter theming architecture where the
> theme owns more than colors — it owns the design tokens (and, across the Mantle
> packages, the structure of every widget).

`mantle_core` is the runtime foundation: token primitives, `MantleTheme`,
`MantleProvider`, and root-theme access via the `Mantle` facade.

Inspired by [Mantine](https://mantine.dev). Sister packages (`mantle_widgets`,
`mantle_basic`, codegen, …) build on this core.

- **Gallery:** [mantle.leslmosnk.com](https://mantle.leslmosnk.com)
- **Docs:** [docs.mantle.leslmosnk.com/core](https://docs.mantle.leslmosnk.com/#/core/)

## Install

```yaml
dependencies:
  mantle_core: ^1.0.0
```

## Quick start

Provide a theme at the root of your app (above `WidgetsApp` so overlays still
find it):

```dart
import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';

void main() {
  runApp(
    MantleProvider(
      theme: myTheme, // a MantleTheme with your tokens
      child: WidgetsApp(
        color: const Color(0xFF228BE6),
        builder: (context, child) => const HomePage(),
      ),
    ),
  );
}
```

Read tokens from context (rebuilds when that aspect of the theme changes):

```dart
@override
Widget build(BuildContext context) {
  final mantle = MantleTheme.of(context);
  return ColoredBox(
    color: mantle.colors['gray'][0],
    child: Padding(
      padding: mantle.spacing.all('md'),
      child: Text('Hello', style: mantle.typography.body),
    ),
  );
}
```

Or via the root-theme facade (no `BuildContext`, no rebuild subscription —
fine outside `build`, or when the root theme is stable):

```dart
final color = Mantle.theme.colors['red'][6];
```

## What's included

| Area | Highlights |
|---|---|
| **Tokens** | `MantleColor` (10-shade scales), `MantleColors`, icons, typography, spacing, radius, shadows, breakpoints, size scales |
| **Theme** | `MantleTheme` bundling token groups with `mergeWith` / `lerpWith` |
| **Provider** | `MantleProvider` with aspect-scoped `InheritedModel` lookup and optional theme animation |
| **Facade** | `Mantle.theme` / `Mantle.attach` for root-theme static access |
| **Widgets** | `MantleIcon`, `BreakpointBuilder` |

## License

MIT. See [LICENSE](LICENSE).
