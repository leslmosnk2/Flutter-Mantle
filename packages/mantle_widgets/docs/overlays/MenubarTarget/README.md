# MenubarTarget

`MenubarTarget` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`MenubarTarget`](https://mantine.dev/core/menubar-target/).

## Constructors

- `MenubarTarget(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |

## Example

```dart
MenubarTarget(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MenubarTarget](/basic/overlays/MenubarTarget/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Menubar](/widgets/overlays/Menubar/)
- [MenubarMenu](/widgets/overlays/MenubarMenu/)
- [MenubarDropdown](/widgets/overlays/MenubarDropdown/)
