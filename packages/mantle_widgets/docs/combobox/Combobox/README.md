# Combobox

Overlay/list primitive. Mantine `Combobox.Target`, `Dropdown`, `Options`, `Option`, `Group`, `Empty`, `Search`, and `Chevron` are sibling widgets.

Inspired by Mantine [`Combobox`](https://mantine.dev/core/combobox/).

## Constructors

- `Combobox(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `dropdownOpened` | `bool?` | `null` |
| `onDropdownOpen` | `VoidCallback?` | `null` |
| `onDropdownClose` | `VoidCallback?` | `null` |
| `onOptionSubmit` | `ComboboxOptionSubmit?` | `null` |
| `size` | `String?` | `'sm'` |
| `dropdownPadding` | `double?` | `4.0` |
| `readOnly` | `bool?` | `false` |
| `resetSelectionOnOptionHover` | `bool?` | `false` |
| `maxDropdownHeight` | `double?` | `250.0` |
| `withScrollArea` | `bool?` | `true` |

## Example

```dart
Combobox(
  onOptionSubmit: (value) {},
  children: const [
    ComboboxTarget(child: Text('Open')),
    ComboboxDropdown(
      child: ComboboxOptions(
        children: [
          ComboboxOption(value: 'apple', child: Text('Apple')),
        ],
      ),
    ),
  ],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Combobox](/basic/combobox/Combobox/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [ComboboxTarget](/widgets/combobox/ComboboxTarget/)
- [ComboboxDropdown](/widgets/combobox/ComboboxDropdown/)
- [ComboboxOptions](/widgets/combobox/ComboboxOptions/)
- [ComboboxOption](/widgets/combobox/ComboboxOption/)
- [ComboboxGroup](/widgets/combobox/ComboboxGroup/)
- [ComboboxEmpty](/widgets/combobox/ComboboxEmpty/)
- [ComboboxSearch](/widgets/combobox/ComboboxSearch/)
- [ComboboxChevron](/widgets/combobox/ComboboxChevron/)
- [ComboboxHeader](/widgets/combobox/ComboboxHeader/)
- [ComboboxFooter](/widgets/combobox/ComboboxFooter/)
