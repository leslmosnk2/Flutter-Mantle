# DataListItem

`DataListItem` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`DataListItem`](https://mantine.dev/core/data-list-item/).

## Constructors

- `DataListItem(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |

## Example

```dart
DataListItem(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` DataListItem](/basic/data-display/DataListItem/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [DataList](/widgets/data-display/DataList/)
- [DataListItemLabel](/widgets/data-display/DataListItemLabel/)
- [DataListItemValue](/widgets/data-display/DataListItemValue/)
