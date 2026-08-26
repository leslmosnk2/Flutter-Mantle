# ComboboxFooter

`ComboboxFooter` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`ComboboxFooter`](https://mantine.dev/core/combobox/).

## Constructors

- `ComboboxFooter(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |

## Example

```dart
ComboboxFooter(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` ComboboxFooter](/basic/combobox/ComboboxFooter/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Combobox](/widgets/combobox/Combobox/)
- [ComboboxTarget](/widgets/combobox/ComboboxTarget/)
- [ComboboxDropdown](/widgets/combobox/ComboboxDropdown/)
- [ComboboxOptions](/widgets/combobox/ComboboxOptions/)
- [ComboboxOption](/widgets/combobox/ComboboxOption/)
- [ComboboxGroup](/widgets/combobox/ComboboxGroup/)
- [ComboboxEmpty](/widgets/combobox/ComboboxEmpty/)
- [ComboboxSearch](/widgets/combobox/ComboboxSearch/)
- [ComboboxChevron](/widgets/combobox/ComboboxChevron/)
- [ComboboxHeader](/widgets/combobox/ComboboxHeader/)
