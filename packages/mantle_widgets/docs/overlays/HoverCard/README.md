# HoverCard

Popover that opens on hover.

Inspired by Mantine [`HoverCard`](https://mantine.dev/core/hover-card/).

## Constructors

- `HoverCard(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `initiallyOpened` | `bool?` | `false` |

## Example

```dart
HoverCard(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` HoverCard](/basic/overlays/HoverCard/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [HoverCardTarget](/widgets/overlays/HoverCardTarget/)
- [HoverCardDropdown](/widgets/overlays/HoverCardDropdown/)
