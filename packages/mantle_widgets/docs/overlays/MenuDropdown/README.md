# MenuDropdown

`MenuDropdown` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`MenuDropdown`](https://mantine.dev/core/menu-dropdown/).

## Constructors

- `MenuDropdown(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |

## Example

```dart
MenuDropdown(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MenuDropdown](/basic/overlays/MenuDropdown/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Menu](/widgets/overlays/Menu/)
- [MenuTarget](/widgets/overlays/MenuTarget/)
- [MenuItem](/widgets/overlays/MenuItem/)
- [MenuLabel](/widgets/overlays/MenuLabel/)
- [MenuDivider](/widgets/overlays/MenuDivider/)
