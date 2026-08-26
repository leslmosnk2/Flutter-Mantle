# MenuItem

`MenuItem` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`MenuItem`](https://mantine.dev/core/menu-item/).

## Constructors

- `MenuItem(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `onPressed` | `VoidCallback?` | `null` |
| `disabled` | `bool?` | `false` |
| `leftSection` | `Widget?` | `null` |
| `rightSection` | `Widget?` | `null` |

## Example

```dart
MenuItem(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MenuItem](/basic/overlays/MenuItem/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Menu](/widgets/overlays/Menu/)
- [MenuTarget](/widgets/overlays/MenuTarget/)
- [MenuDropdown](/widgets/overlays/MenuDropdown/)
- [MenuLabel](/widgets/overlays/MenuLabel/)
- [MenuDivider](/widgets/overlays/MenuDivider/)
