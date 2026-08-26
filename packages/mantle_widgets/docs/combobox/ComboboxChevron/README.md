# ComboboxChevron

`ComboboxChevron` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`ComboboxChevron`](https://mantine.dev/core/combobox/).

## Constructors

- `ComboboxChevron(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `size` | `String?` | `null` |
| `error` | `bool?` | `false` |

## Example

```dart
ComboboxChevron(
  size: 'md',
  error: false,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` ComboboxChevron](/basic/combobox/ComboboxChevron/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Combobox](/widgets/combobox/Combobox/)
- [ComboboxTarget](/widgets/combobox/ComboboxTarget/)
- [ComboboxDropdown](/widgets/combobox/ComboboxDropdown/)
- [ComboboxOptions](/widgets/combobox/ComboboxOptions/)
- [ComboboxOption](/widgets/combobox/ComboboxOption/)
- [ComboboxGroup](/widgets/combobox/ComboboxGroup/)
- [ComboboxEmpty](/widgets/combobox/ComboboxEmpty/)
- [ComboboxSearch](/widgets/combobox/ComboboxSearch/)
- [ComboboxHeader](/widgets/combobox/ComboboxHeader/)
- [ComboboxFooter](/widgets/combobox/ComboboxFooter/)
