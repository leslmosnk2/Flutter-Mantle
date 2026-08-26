# SplitterPane

`SplitterPane` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`SplitterPane`](https://mantine.dev/core/split/).

## Constructors

- `SplitterPane(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `defaultSize` | `double?` | `50` |
| `min` | `double?` | `null` |
| `max` | `double?` | `null` |
| `collapsible` | `bool?` | `false` |

## Example

```dart
SplitterPane(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` SplitterPane](/basic/layout/SplitterPane/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Splitter](/widgets/layout/Splitter/)
