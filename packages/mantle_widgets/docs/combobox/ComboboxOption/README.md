# ComboboxOption

`ComboboxOption` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`ComboboxOption`](https://mantine.dev/core/combobox/).

## Constructors

- `ComboboxOption(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `String` | required |
| `child` | `Widget` | required |
| `selected` | `bool?` | `false` |
| `disabled` | `bool?` | `false` |
| `active` | `bool?` | `false` |

## Example

```dart
ComboboxOption(
  value: 'value',
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` ComboboxOption](/basic/combobox/ComboboxOption/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Combobox](/widgets/combobox/Combobox/)
- [ComboboxTarget](/widgets/combobox/ComboboxTarget/)
- [ComboboxDropdown](/widgets/combobox/ComboboxDropdown/)
- [ComboboxOptions](/widgets/combobox/ComboboxOptions/)
- [ComboboxGroup](/widgets/combobox/ComboboxGroup/)
- [ComboboxEmpty](/widgets/combobox/ComboboxEmpty/)
- [ComboboxSearch](/widgets/combobox/ComboboxSearch/)
- [ComboboxChevron](/widgets/combobox/ComboboxChevron/)
- [ComboboxHeader](/widgets/combobox/ComboboxHeader/)
- [ComboboxFooter](/widgets/combobox/ComboboxFooter/)
