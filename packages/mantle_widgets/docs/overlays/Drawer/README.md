# Drawer

A side panel over a barrier.

Inspired by Mantine [`Drawer`](https://mantine.dev/core/drawer/).

## Constructors

- `Drawer(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `opened` | `bool?` | `false` |
| `child` | `Widget` | required |
| `title` | `Widget?` | `null` |
| `onClose` | `VoidCallback?` | `null` |
| `position` | `DrawerPosition?` | `DrawerPosition.left` |
| `withOverlay` | `bool?` | `true` |
| `withCloseButton` | `bool?` | `true` |
| `size` | `double?` | `null` |

## Example

```dart
Drawer(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Drawer](/basic/overlays/Drawer/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
