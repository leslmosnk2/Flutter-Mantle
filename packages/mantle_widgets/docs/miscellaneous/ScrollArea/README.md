# ScrollArea

A scrollable viewport.

Inspired by Mantine [`ScrollArea`](https://mantine.dev/core/scroll-area/).

## Constructors

- `ScrollArea(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `type` | `ScrollAreaType?` | `ScrollAreaType.hover` |
| `scrollbars` | `ScrollAreaScrollbars?` | `ScrollAreaScrollbars.xy` |
| `onScrollPositionChange` | `ScrollAreaOnScrollPositionChange?` | `null` |

## Example

```dart
ScrollArea(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` ScrollArea](/basic/miscellaneous/ScrollArea/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
