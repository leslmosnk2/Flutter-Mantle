# MenubarMenu

`MenubarMenu` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`MenubarMenu`](https://mantine.dev/core/menubar-menu/).

## Constructors

- `MenubarMenu(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |

## Example

```dart
MenubarMenu(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MenubarMenu](/basic/overlays/MenubarMenu/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Menubar](/widgets/overlays/Menubar/)
- [MenubarTarget](/widgets/overlays/MenubarTarget/)
- [MenubarDropdown](/widgets/overlays/MenubarDropdown/)
