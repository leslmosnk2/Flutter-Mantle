# Pagination

A controlled page-number control.

Inspired by Mantine [`Pagination`](https://mantine.dev/core/pagination/).

## Constructors

- `Pagination(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `total` | `int` | required |
| `value` | `int?` | `1` |
| `onChange` | `PaginationOnChange?` | `null` |
| `siblings` | `int?` | `1` |
| `boundaries` | `int?` | `1` |
| `withControls` | `bool?` | `true` |
| `withEdges` | `bool?` | `false` |
| `withPages` | `bool?` | `true` |
| `hideWithOnePage` | `bool?` | `false` |
| `disabled` | `bool?` | `false` |
| `size` | `String?` | `'md'` |
| `color` | `String?` | `null` |
| `gap` | `double?` | `8` |

## Example

```dart
Pagination(
  total: 0,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Pagination](/basic/navigation/Pagination/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [PaginationControl](/widgets/navigation/PaginationControl/)
