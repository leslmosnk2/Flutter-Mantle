# Cascader

Path from hierarchical columns.

Inspired by Mantine [`Cascader`](https://mantine.dev/core/cascader/).

## Constructors

- `Cascader(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `data` | `List<CascaderOption>` | required |
| `value` | `List<String>?` | `null` |
| `onChange` | `CascaderChanged?` | `null` |
| `placeholder` | `String?` | `null` |
| `label` | `String?` | `null` |
| `description` | `String?` | `null` |
| `error` | `String?` | `null` |
| `searchable` | `bool?` | `false` |
| `searchValue` | `String?` | `null` |
| `onSearchChange` | `ComboboxSearchChanged?` | `null` |
| `changeOnSelect` | `bool?` | `false` |
| `withColumns` | `bool?` | `true` |
| `expandTrigger` | `CascaderExpandTrigger?` | `CascaderExpandTrigger.click` |
| `allowDeselect` | `bool?` | `true` |
| `clearable` | `bool?` | `false` |
| `disabled` | `bool?` | `false` |
| `dropdownOpened` | `bool?` | `null` |
| `onDropdownOpen` | `VoidCallback?` | `null` |
| `onDropdownClose` | `VoidCallback?` | `null` |
| `nothingFoundMessage` | `String?` | `null` |
| `separator` | `String?` | `' / '` |
| `columnWidth` | `double?` | `200.0` |
| `maxDropdownHeight` | `double?` | `250.0` |
| `size` | `String?` | `'sm'` |
| `radius` | `BorderRadiusGeometry` | `defaultComboboxRadius` |

## Example

```dart
Cascader(
  data: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Cascader](/basic/combobox/Cascader/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
