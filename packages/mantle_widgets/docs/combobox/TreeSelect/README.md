# TreeSelect

Values from a tree.

Inspired by Mantine [`TreeSelect`](https://mantine.dev/core/tree-select/).

## Constructors

- `TreeSelect(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `data` | `List<TreeNodeData>` | required |
| `value` | `List<String>?` | `null` |
| `onChange` | `TreeSelectChanged?` | `null` |
| `mode` | `TreeSelectMode?` | `TreeSelectMode.single` |
| `placeholder` | `String?` | `null` |
| `label` | `String?` | `null` |
| `description` | `String?` | `null` |
| `error` | `String?` | `null` |
| `searchable` | `bool?` | `false` |
| `searchValue` | `String?` | `null` |
| `onSearchChange` | `ComboboxSearchChanged?` | `null` |
| `defaultExpandAll` | `bool?` | `false` |
| `expandedValues` | `List<String>?` | `null` |
| `onExpandedChange` | `TreeExpandedChanged?` | `null` |
| `withLines` | `bool?` | `false` |
| `allowDeselect` | `bool?` | `true` |
| `clearable` | `bool?` | `false` |
| `maxValues` | `int?` | `null` |
| `onRemove` | `ComboboxOptionSubmit?` | `null` |
| `disabled` | `bool?` | `false` |
| `dropdownOpened` | `bool?` | `null` |
| `onDropdownOpen` | `VoidCallback?` | `null` |
| `onDropdownClose` | `VoidCallback?` | `null` |
| `nothingFoundMessage` | `String?` | `null` |
| `maxDropdownHeight` | `double?` | `250.0` |
| `size` | `String?` | `'sm'` |
| `radius` | `BorderRadiusGeometry` | `defaultComboboxRadius` |

## Example

```dart
TreeSelect(
  data: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` TreeSelect](/basic/combobox/TreeSelect/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
