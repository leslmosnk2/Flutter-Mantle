# DataList

Label-value description list.

Inspired by Mantine [`DataList`](https://mantine.dev/core/data-list/).

## Constructors

- `DataList(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `size` | `String?` | `'sm'` |
| `gap` | `String?` | `'sm'` |
| `orientation` | `DataListOrientation?` | `DataListOrientation.horizontal` |
| `withDivider` | `bool?` | `false` |
| `labelWidth` | `double?` | `120` |

## Example

```dart
DataList(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` DataList](/basic/data-display/DataList/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [DataListItem](/widgets/data-display/DataListItem/)
- [DataListItemLabel](/widgets/data-display/DataListItemLabel/)
- [DataListItemValue](/widgets/data-display/DataListItemValue/)
