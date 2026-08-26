# MultiSelect

Several values as pills.

Inspired by Mantine [`MultiSelect`](https://mantine.dev/core/multi-select/).

## Constructors

- `MultiSelect(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `data` | `List<ComboboxItem>` | required |
| `value` | `List<String>?` | `null` |
| `onChange` | `MultiSelectChanged?` | `null` |
| `onRemove` | `ComboboxOptionSubmit?` | `null` |
| `placeholder` | `String?` | `null` |
| `label` | `String?` | `null` |
| `description` | `String?` | `null` |
| `error` | `String?` | `null` |
| `searchable` | `bool?` | `false` |
| `searchValue` | `String?` | `null` |
| `onSearchChange` | `ComboboxSearchChanged?` | `null` |
| `maxValues` | `int?` | `null` |
| `hidePickedOptions` | `bool?` | `false` |
| `clearable` | `bool?` | `false` |
| `disabled` | `bool?` | `false` |
| `readOnly` | `bool?` | `false` |
| `dropdownOpened` | `bool?` | `null` |
| `onDropdownOpen` | `VoidCallback?` | `null` |
| `onDropdownClose` | `VoidCallback?` | `null` |
| `nothingFoundMessage` | `String?` | `null` |
| `withCheckIcon` | `bool?` | `true` |
| `checkIconPosition` | `ComboboxCheckIconPosition?` | `ComboboxCheckIconPosition.left` |
| `limit` | `int?` | `null` |
| `maxDropdownHeight` | `double?` | `250.0` |
| `size` | `String?` | `'sm'` |
| `radius` | `BorderRadiusGeometry` | `defaultComboboxRadius` |

## Example

```dart
MultiSelect(
  data: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MultiSelect](/basic/combobox/MultiSelect/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
