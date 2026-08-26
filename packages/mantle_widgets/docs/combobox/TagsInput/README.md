# TagsInput

Free-form tags with suggestions.

Inspired by Mantine [`TagsInput`](https://mantine.dev/core/tags-input/).

## Constructors

- `TagsInput(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `data` | `List<ComboboxItem>?` | `null` |
| `value` | `List<String>?` | `null` |
| `onChange` | `MultiSelectChanged?` | `null` |
| `onRemove` | `ComboboxOptionSubmit?` | `null` |
| `placeholder` | `String?` | `null` |
| `label` | `String?` | `null` |
| `description` | `String?` | `null` |
| `error` | `String?` | `null` |
| `searchValue` | `String?` | `null` |
| `onSearchChange` | `ComboboxSearchChanged?` | `null` |
| `maxTags` | `int?` | `null` |
| `allowDuplicates` | `bool?` | `false` |
| `splitChars` | `String?` | `','` |
| `acceptValueOnBlur` | `bool?` | `true` |
| `clearable` | `bool?` | `false` |
| `disabled` | `bool?` | `false` |
| `readOnly` | `bool?` | `false` |
| `dropdownOpened` | `bool?` | `null` |
| `onDropdownOpen` | `VoidCallback?` | `null` |
| `onDropdownClose` | `VoidCallback?` | `null` |
| `nothingFoundMessage` | `String?` | `null` |
| `limit` | `int?` | `null` |
| `maxDropdownHeight` | `double?` | `250.0` |
| `size` | `String?` | `'sm'` |
| `radius` | `BorderRadiusGeometry` | `defaultComboboxRadius` |

## Example

```dart
TagsInput(
  data: const [],
  value: const [],
  onChange: /* … */,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` TagsInput](/basic/combobox/TagsInput/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
