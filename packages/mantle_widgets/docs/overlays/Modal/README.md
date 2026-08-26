# Modal

Centered overlay dialog with a barrier.

Inspired by Mantine [`Modal`](https://mantine.dev/core/modal/).

## Constructors

- `Modal(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `opened` | `bool?` | `false` |
| `child` | `Widget` | required |
| `title` | `Widget?` | `null` |
| `onClose` | `VoidCallback?` | `null` |
| `withCloseButton` | `bool?` | `true` |
| `withOverlay` | `bool?` | `true` |
| `centered` | `bool?` | `false` |
| `fullScreen` | `bool?` | `false` |

## Example

```dart
Modal(
  opened: opened,
  onClose: close,
  title: const Text('Confirm'),
  child: const Text('Remove this item?'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Modal](/basic/overlays/Modal/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
