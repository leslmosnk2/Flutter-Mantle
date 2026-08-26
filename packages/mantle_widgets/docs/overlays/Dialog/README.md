# Dialog

A small corner panel without a barrier.

Inspired by Mantine [`Dialog`](https://mantine.dev/core/dialog/).

## Constructors

- `Dialog(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `opened` | `bool?` | `false` |
| `child` | `Widget` | required |
| `onClose` | `VoidCallback?` | `null` |
| `withCloseButton` | `bool?` | `true` |
| `top` | `double?` | `null` |
| `left` | `double?` | `null` |
| `bottom` | `double?` | `null` |
| `right` | `double?` | `null` |
| `width` | `double?` | `null` |

## Example

```dart
Dialog(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Dialog](/basic/overlays/Dialog/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
