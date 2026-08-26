# DataListItemValue

`DataListItemValue` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`DataListItemValue`](https://mantine.dev/core/data-list-item-value/).

## Constructors

- `DataListItemValue(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |

## Example

```dart
DataListItemValue(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` DataListItemValue](/basic/data-display/DataListItemValue/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [DataList](/widgets/data-display/DataList/)
- [DataListItem](/widgets/data-display/DataListItem/)
- [DataListItemLabel](/widgets/data-display/DataListItemLabel/)
