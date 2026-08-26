# ComboboxSearch

`ComboboxSearch` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`ComboboxSearch`](https://mantine.dev/core/combobox/).

## Constructors

- `ComboboxSearch(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `String?` | `''` |
| `onChanged` | `ComboboxSearchChanged?` | `null` |
| `placeholder` | `String?` | `null` |
| `disabled` | `bool?` | `false` |

## Example

```dart
ComboboxSearch(
  value: 'value',
  onChanged: /* … */,
  placeholder: '…',
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` ComboboxSearch](/basic/combobox/ComboboxSearch/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Combobox](/widgets/combobox/Combobox/)
- [ComboboxTarget](/widgets/combobox/ComboboxTarget/)
- [ComboboxDropdown](/widgets/combobox/ComboboxDropdown/)
- [ComboboxOptions](/widgets/combobox/ComboboxOptions/)
- [ComboboxOption](/widgets/combobox/ComboboxOption/)
- [ComboboxGroup](/widgets/combobox/ComboboxGroup/)
- [ComboboxEmpty](/widgets/combobox/ComboboxEmpty/)
- [ComboboxChevron](/widgets/combobox/ComboboxChevron/)
- [ComboboxHeader](/widgets/combobox/ComboboxHeader/)
- [ComboboxFooter](/widgets/combobox/ComboboxFooter/)
