# HoverCardDropdown

`HoverCardDropdown` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`HoverCardDropdown`](https://mantine.dev/core/hover-card-dropdown/).

## Constructors

- `HoverCardDropdown(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |

## Example

```dart
HoverCardDropdown(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` HoverCardDropdown](/basic/overlays/HoverCardDropdown/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [HoverCard](/widgets/overlays/HoverCard/)
- [HoverCardTarget](/widgets/overlays/HoverCardTarget/)
