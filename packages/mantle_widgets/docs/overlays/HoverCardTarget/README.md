# HoverCardTarget

`HoverCardTarget` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`HoverCardTarget`](https://mantine.dev/core/hover-card-target/).

## Constructors

- `HoverCardTarget(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |

## Example

```dart
HoverCardTarget(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` HoverCardTarget](/basic/overlays/HoverCardTarget/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [HoverCard](/widgets/overlays/HoverCard/)
- [HoverCardDropdown](/widgets/overlays/HoverCardDropdown/)
