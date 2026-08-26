# Rating

`Rating` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`Rating`](https://mantine.dev/core/rating/).

## Constructors

- `Rating(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `double?` | `null` |
| `defaultValue` | `double?` | `0.0` |
| `onChanged` | `void Function(double)?` | `null` |
| `count` | `int?` | `5` |
| `fractions` | `int?` | `1` |
| `readOnly` | `bool?` | `false` |
| `highlightSelectedOnly` | `bool?` | `false` |
| `color` | `String?` | `'yellow'` |
| `size` | `String?` | `'sm'` |

## Example

```dart
Rating(
  value: 0,
  defaultValue: 0,
  onChanged: () {},
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Rating](/basic/inputs/Rating/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
