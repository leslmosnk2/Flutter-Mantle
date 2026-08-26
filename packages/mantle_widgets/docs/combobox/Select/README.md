# Select

Single value from a list.

Inspired by Mantine [`Select`](https://mantine.dev/core/select/).

## Constructors

- `Select(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `data` | `List<ComboboxItem>` | required |
| `value` | `String?` | `null` |
| `onChange` | `SelectChanged?` | `null` |
| `placeholder` | `String?` | `null` |
| `label` | `String?` | `null` |
| `description` | `String?` | `null` |
| `error` | `String?` | `null` |
| `searchable` | `bool?` | `false` |
| `searchValue` | `String?` | `null` |
| `onSearchChange` | `ComboboxSearchChanged?` | `null` |
| `clearable` | `bool?` | `false` |
| `allowDeselect` | `bool?` | `true` |
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
Select(
  data: const [
    ComboboxItem(value: 'react', label: 'React'),
    ComboboxItem(value: 'flutter', label: 'Flutter'),
  ],
  placeholder: 'Pick one',
  onChange: (value) {},
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Select](/basic/combobox/Select/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
