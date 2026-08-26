# ComboboxGroup

`ComboboxGroup` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`ComboboxGroup`](https://mantine.dev/core/combobox/).

## Constructors

- `ComboboxGroup(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `label` | `String?` | `null` |

## Example

```dart
ComboboxGroup(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` ComboboxGroup](/basic/combobox/ComboboxGroup/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Combobox](/widgets/combobox/Combobox/)
- [ComboboxTarget](/widgets/combobox/ComboboxTarget/)
- [ComboboxDropdown](/widgets/combobox/ComboboxDropdown/)
- [ComboboxOptions](/widgets/combobox/ComboboxOptions/)
- [ComboboxOption](/widgets/combobox/ComboboxOption/)
- [ComboboxEmpty](/widgets/combobox/ComboboxEmpty/)
- [ComboboxSearch](/widgets/combobox/ComboboxSearch/)
- [ComboboxChevron](/widgets/combobox/ComboboxChevron/)
- [ComboboxHeader](/widgets/combobox/ComboboxHeader/)
- [ComboboxFooter](/widgets/combobox/ComboboxFooter/)
