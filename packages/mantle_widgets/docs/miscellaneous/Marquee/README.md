# Marquee

A looping overflow strip.

Inspired by Mantine [`Marquee`](https://mantine.dev/core/marquee/).

## Constructors

- `Marquee(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `duration` | `int?` | `40000` |
| `gap` | `String?` | `'md'` |
| `orientation` | `Axis?` | `Axis.horizontal` |
| `reverse` | `bool?` | `false` |
| `pauseOnHover` | `bool?` | `false` |
| `repeat` | `int?` | `4` |
| `fadeEdges` | `bool?` | `true` |
| `fadeEdgeSize` | `double?` | `0.05` |

## Example

```dart
Marquee(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Marquee](/basic/miscellaneous/Marquee/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
