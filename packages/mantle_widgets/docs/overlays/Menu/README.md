# Menu

Target + list of actions.

Inspired by Mantine [`Menu`](https://mantine.dev/core/menu/).

## Constructors

- `Menu(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `opened` | `bool?` | `false` |
| `onClose` | `VoidCallback?` | `null` |
| `onOpen` | `VoidCallback?` | `null` |
| `closeOnItemClick` | `bool?` | `true` |
| `trigger` | `MenuTrigger?` | `MenuTrigger.click` |

## Example

```dart
Menu(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Menu](/basic/overlays/Menu/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [MenuTarget](/widgets/overlays/MenuTarget/)
- [MenuDropdown](/widgets/overlays/MenuDropdown/)
- [MenuItem](/widgets/overlays/MenuItem/)
- [MenuLabel](/widgets/overlays/MenuLabel/)
- [MenuDivider](/widgets/overlays/MenuDivider/)
