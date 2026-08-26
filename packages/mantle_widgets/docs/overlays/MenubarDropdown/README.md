# MenubarDropdown

`MenubarDropdown` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`MenubarDropdown`](https://mantine.dev/core/menubar-dropdown/).

## Constructors

- `MenubarDropdown(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |

## Example

```dart
MenubarDropdown(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MenubarDropdown](/basic/overlays/MenubarDropdown/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Menubar](/widgets/overlays/Menubar/)
- [MenubarMenu](/widgets/overlays/MenubarMenu/)
- [MenubarTarget](/widgets/overlays/MenubarTarget/)
