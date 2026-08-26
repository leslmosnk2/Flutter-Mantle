# PopoverTarget

`PopoverTarget` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`PopoverTarget`](https://mantine.dev/core/popover-target/).

## Constructors

- `PopoverTarget(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |

## Example

```dart
PopoverTarget(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` PopoverTarget](/basic/overlays/PopoverTarget/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Popover](/widgets/overlays/Popover/)
- [PopoverDropdown](/widgets/overlays/PopoverDropdown/)
