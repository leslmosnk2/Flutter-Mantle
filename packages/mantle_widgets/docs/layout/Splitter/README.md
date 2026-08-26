# Splitter

Resizable split panes.

Inspired by Mantine [`Splitter`](https://mantine.dev/core/splitter/).

## Constructors

- `Splitter(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `orientation` | `Axis?` | `Axis.horizontal` |
| `sizes` | `List<double>?` | `null` |
| `onSizeChange` | `SplitterOnSizeChange?` | `null` |
| `withHandle` | `bool?` | `true` |
| `lineSize` | `double?` | `2` |

## Example

```dart
Splitter(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Splitter](/basic/layout/Splitter/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [SplitterPane](/widgets/layout/SplitterPane/)
