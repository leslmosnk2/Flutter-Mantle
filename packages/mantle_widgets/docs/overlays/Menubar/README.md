# Menubar

A horizontal row of menus.

Inspired by Mantine [`Menubar`](https://mantine.dev/core/menubar/).

## Constructors

- `Menubar(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `openIndex` | `int?` | `null` |
| `trigger` | `MenubarTrigger?` | `MenubarTrigger.click` |

## Example

```dart
Menubar(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Menubar](/basic/overlays/Menubar/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [MenubarMenu](/widgets/overlays/MenubarMenu/)
- [MenubarTarget](/widgets/overlays/MenubarTarget/)
- [MenubarDropdown](/widgets/overlays/MenubarDropdown/)
