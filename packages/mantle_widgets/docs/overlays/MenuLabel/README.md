# MenuLabel

`MenuLabel` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`MenuLabel`](https://mantine.dev/core/menu-label/).

## Constructors

- `MenuLabel(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |

## Example

```dart
MenuLabel(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MenuLabel](/basic/overlays/MenuLabel/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Menu](/widgets/overlays/Menu/)
- [MenuTarget](/widgets/overlays/MenuTarget/)
- [MenuDropdown](/widgets/overlays/MenuDropdown/)
- [MenuItem](/widgets/overlays/MenuItem/)
- [MenuDivider](/widgets/overlays/MenuDivider/)
