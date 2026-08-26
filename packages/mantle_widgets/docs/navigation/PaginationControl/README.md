# PaginationControl

`PaginationControl` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`PaginationControl`](https://mantine.dev/core/pagination-control/).

## Constructors

- `PaginationControl(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `onPressed` | `VoidCallback?` | `null` |
| `active` | `bool?` | `false` |
| `disabled` | `bool?` | `false` |
| `withPadding` | `bool?` | `true` |

## Example

```dart
PaginationControl(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` PaginationControl](/basic/navigation/PaginationControl/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Pagination](/widgets/navigation/Pagination/)
