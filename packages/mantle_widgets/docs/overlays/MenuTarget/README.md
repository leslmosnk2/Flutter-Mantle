# MenuTarget

`MenuTarget` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`MenuTarget`](https://mantine.dev/core/menu-target/).

## Constructors

- `MenuTarget(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |

## Example

```dart
MenuTarget(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MenuTarget](/basic/overlays/MenuTarget/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Menu](/widgets/overlays/Menu/)
- [MenuDropdown](/widgets/overlays/MenuDropdown/)
- [MenuItem](/widgets/overlays/MenuItem/)
- [MenuLabel](/widgets/overlays/MenuLabel/)
- [MenuDivider](/widgets/overlays/MenuDivider/)
