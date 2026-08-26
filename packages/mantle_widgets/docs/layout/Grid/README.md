# Grid

A 12-column flex grid.

Inspired by Mantine [`Grid`](https://mantine.dev/core/grid/).

## Constructors

- `Grid(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `gutter` | `String?` | `'md'` |
| `grow` | `bool?` | `false` |
| `justify` | `MainAxisAlignment?` | `MainAxisAlignment.start` |
| `align` | `CrossAxisAlignment?` | `CrossAxisAlignment.stretch` |
| `columns` | `int?` | `12` |

## Example

```dart
Grid(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Grid](/basic/layout/Grid/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [GridCol](/widgets/layout/GridCol/)
