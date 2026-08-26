# Autocomplete

Free-text with suggestions.

Inspired by Mantine [`Autocomplete`](https://mantine.dev/core/autocomplete/).

## Constructors

- `Autocomplete(...)` (unnamed / `default`)

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
Autocomplete(
  data: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Autocomplete](/basic/combobox/Autocomplete/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
