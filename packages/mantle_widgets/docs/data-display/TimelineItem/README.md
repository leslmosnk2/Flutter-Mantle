# TimelineItem

`TimelineItem` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`TimelineItem`](https://mantine.dev/core/timeline-item/).

## Constructors

- `TimelineItem(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `title` | `Widget?` | `null` |
| `child` | `Widget?` | `null` |
| `bullet` | `Widget?` | `null` |
| `color` | `String?` | `null` |
| `lineVariant` | `TimelineLineVariant?` | `TimelineLineVariant.solid` |
| `index` | `int?` | `null` |

## Example

```dart
TimelineItem(
  title: const Text('Label'),
  child: const Text('Label'),
  bullet: /* … */,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` TimelineItem](/basic/data-display/TimelineItem/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Timeline](/widgets/data-display/Timeline/)
