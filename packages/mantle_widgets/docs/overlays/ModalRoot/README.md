# ModalRoot

`ModalRoot` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`ModalRoot`](https://mantine.dev/core/modal-root/).

## Constructors

- `ModalRoot(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `opened` | `bool?` | `false` |
| `child` | `Widget` | required |
| `onClose` | `VoidCallback?` | `null` |
| `withOverlay` | `bool?` | `true` |

## Example

```dart
ModalRoot(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` ModalRoot](/basic/overlays/ModalRoot/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
