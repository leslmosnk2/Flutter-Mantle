# PopoverDropdown

`PopoverDropdown` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`PopoverDropdown`](https://mantine.dev/core/popover-dropdown/).

## Constructors

- `PopoverDropdown(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |

## Example

```dart
PopoverDropdown(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` PopoverDropdown](/basic/overlays/PopoverDropdown/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Popover](/widgets/overlays/Popover/)
- [PopoverTarget](/widgets/overlays/PopoverTarget/)
