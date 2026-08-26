# Timeline

Vertical line with item bullets.

Inspired by Mantine [`Timeline`](https://mantine.dev/core/timeline/).

## Constructors

- `Timeline(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `active` | `int?` | `-1` |
| `color` | `String?` | `null` |
| `bulletSize` | `double?` | `20` |
| `lineWidth` | `double?` | `4` |
| `align` | `TimelineAlign?` | `TimelineAlign.left` |
| `reverseActive` | `bool?` | `false` |
| `radius` | `BorderRadiusGeometry` | `dataDisplayPillRadius` |
| `autoContrast` | `bool?` | `false` |

## Example

```dart
Timeline(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Timeline](/basic/data-display/Timeline/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [TimelineItem](/widgets/data-display/TimelineItem/)
