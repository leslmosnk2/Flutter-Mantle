# ComboboxPopover

Dropdown on any target. Mantine `ComboboxPopover.Target` is `ComboboxPopoverTarget`.

Inspired by Mantine [`ComboboxPopover`](https://mantine.dev/core/combobox-popover/).

## Constructors

- `ComboboxPopover(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `data` | `List<ComboboxItem>` | required |
| `value` | `List<String>?` | `null` |
| `onChange` | `MultiSelectChanged?` | `null` |
| `multiple` | `bool?` | `false` |
| `searchable` | `bool?` | `false` |
| `searchValue` | `String?` | `null` |
| `onSearchChange` | `ComboboxSearchChanged?` | `null` |
| `nothingFoundMessage` | `String?` | `null` |
| `allowDeselect` | `bool?` | `true` |
| `withCheckIcon` | `bool?` | `true` |
| `checkIconPosition` | `ComboboxCheckIconPosition?` | `ComboboxCheckIconPosition.left` |
| `dropdownOpened` | `bool?` | `null` |
| `onDropdownOpen` | `VoidCallback?` | `null` |
| `onDropdownClose` | `VoidCallback?` | `null` |
| `limit` | `int?` | `null` |
| `maxDropdownHeight` | `double?` | `250.0` |
| `size` | `String?` | `'sm'` |

## Example

```dart
ComboboxPopover(
  child: const Text('Label'),
  data: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` ComboboxPopover](/basic/combobox/ComboboxPopover/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [ComboboxPopoverTarget](/widgets/combobox/ComboboxPopoverTarget/)
