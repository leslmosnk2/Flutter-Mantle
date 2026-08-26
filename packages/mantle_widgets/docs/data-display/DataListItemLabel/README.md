# DataListItemLabel

`DataListItemLabel` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`DataListItemLabel`](https://mantine.dev/core/data-list-item-label/).

## Constructors

- `DataListItemLabel(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |

## Example

```dart
DataListItemLabel(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` DataListItemLabel](/basic/data-display/DataListItemLabel/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [DataList](/widgets/data-display/DataList/)
- [DataListItem](/widgets/data-display/DataListItem/)
- [DataListItemValue](/widgets/data-display/DataListItemValue/)
