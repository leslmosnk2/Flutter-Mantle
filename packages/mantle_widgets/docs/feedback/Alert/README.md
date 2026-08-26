# Alert

Inline feedback with optional icon, title, body, and close control.

Inspired by Mantine [`Alert`](https://mantine.dev/core/alert/).

## Constructors

- `Alert(...)` (unnamed / `default`)
- `Alert.filled(...)` (filled) — extra: `autoContrast`
- `Alert.light(...)` (light)
- `Alert.outline(...)` (outline)
- `Alert.transparent(...)` (transparent)
- `Alert.white(...)` (white)

## Properties

| Prop | Type | Default |
|---|---|---|
| `title` | `Widget?` | `null` |
| `child` | `Widget?` | `null` |
| `color` | `String?` | `null` |
| `icon` | `Widget?` | `null` |
| `withCloseButton` | `bool?` | `false` |
| `onClose` | `VoidCallback?` | `null` |
| `closeButtonLabel` | `String?` | `null` |
| `radius` | `BorderRadiusGeometry` | `feedbackDefaultRadius` |

Variant-only:

| Variant | Prop | Type | Default |
|---|---|---|---|
| `filled` | `autoContrast` | `bool` | `false` |

## Example

```dart
Alert(
  title: const Text('Heads up'),
  child: const Text('Your session expires in 5 minutes.'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Alert](/basic/feedback/Alert/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
