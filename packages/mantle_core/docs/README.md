# mantle_core

Runtime foundation for Mantle: design tokens, `MantleTheme`, `MantleProvider`,
and root-theme access via the `Mantle` facade.

The theme owns more than colors. It owns token groups, component delegates,
and (with [`mantle_widgets`](/widgets/)) the structure of every widget.

## Install

```yaml
dependencies:
  mantle_core: ^1.0.0
```

## Provide a theme

Wrap the app **above** `WidgetsApp` so overlays still find the theme:

```dart
import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';

void main() {
  runApp(
    MantleProvider(
      theme: myTheme,
      child: WidgetsApp(
        color: const Color(0xFF228BE6),
        builder: (context, child) => const HomePage(),
      ),
    ),
  );
}
```

Apps that use the baseline Mantine-like look typically pass
[`BasicTheme`](/basic/) from `mantle_basic`.

## Read tokens

Subscribe to a slice of the theme (rebuilds only when that aspect changes):

```dart
@override
Widget build(BuildContext context) {
  final mantle = MantleTheme.of(context, aspect: MantleAspect.colors);
  return ColoredBox(
    color: mantle.colors['gray'][0],
    child: Padding(
      padding: MantleTheme.of(context, aspect: MantleAspect.spacing)
          .spacing
          .all('md'),
      child: Text(
        'Hello',
        style: MantleTheme.of(context, aspect: MantleAspect.typography)
            .typography
            .body,
      ),
    ),
  );
}
```

Or read the **root** theme with no `BuildContext` (no rebuild subscription):

```dart
final color = Mantle.theme.colors['red'][6];
```

## What's in this package

| Area | Start here |
|---|---|
| Tokens | [Design tokens](/core/tokens) |
| Theme + provider | [MantleTheme](/core/theme), [MantleProvider](/core/provider) |
| Component runtime | [Delegates and defaults](/core/components) |
| Built-in widgets | [Widgets](/core/widgets) |
| Tests | [Getting started](/core/getting-started) |

Inspired by [Mantine](https://mantine.dev).
