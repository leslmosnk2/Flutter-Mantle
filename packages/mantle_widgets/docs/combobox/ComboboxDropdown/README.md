# ComboboxDropdown

`ComboboxDropdown` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`ComboboxDropdown`](https://mantine.dev/core/combobox/).

## Constructors

- `ComboboxDropdown(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `hidden` | `bool?` | `false` |

## Example

```dart
ComboboxDropdown(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` ComboboxDropdown](/basic/combobox/ComboboxDropdown/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Combobox](/widgets/combobox/Combobox/)
- [ComboboxTarget](/widgets/combobox/ComboboxTarget/)
- [ComboboxOptions](/widgets/combobox/ComboboxOptions/)
- [ComboboxOption](/widgets/combobox/ComboboxOption/)
- [ComboboxGroup](/widgets/combobox/ComboboxGroup/)
- [ComboboxEmpty](/widgets/combobox/ComboboxEmpty/)
- [ComboboxSearch](/widgets/combobox/ComboboxSearch/)
- [ComboboxChevron](/widgets/combobox/ComboboxChevron/)
- [ComboboxHeader](/widgets/combobox/ComboboxHeader/)
- [ComboboxFooter](/widgets/combobox/ComboboxFooter/)
