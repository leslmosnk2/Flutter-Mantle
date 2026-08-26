# FloatingWindow

A positioned, optionally draggable panel.

Inspired by Mantine [`FloatingWindow`](https://mantine.dev/core/floating-window/).

## Constructors

- `FloatingWindow(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `title` | `Widget?` | `null` |
| `left` | `double?` | `20` |
| `top` | `double?` | `20` |
| `width` | `double?` | `null` |
| `height` | `double?` | `null` |
| `enabled` | `bool?` | `true` |
| `constrainToViewport` | `bool?` | `true` |
| `withBorder` | `bool?` | `true` |
| `axis` | `FloatingWindowAxis?` | `FloatingWindowAxis.both` |
| `onClose` | `VoidCallback?` | `null` |

## Example

```dart
FloatingWindow(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` FloatingWindow](/basic/overlays/FloatingWindow/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
