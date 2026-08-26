# PillsInputField

`PillsInputField` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`PillsInputField`](https://mantine.dev/core/pills-input-field/).

## Constructors

- `PillsInputField(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `String?` | `''` |
| `onChanged` | `ComboboxSearchChanged?` | `null` |
| `placeholder` | `String?` | `null` |
| `disabled` | `bool?` | `false` |
| `type` | `PillsInputFieldType?` | `PillsInputFieldType.visible` |
| `pointer` | `bool?` | `false` |

## Example

```dart
PillsInputField(
  value: 'value',
  onChanged: /* … */,
  placeholder: '…',
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` PillsInputField](/basic/combobox/PillsInputField/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [PillsInput](/widgets/combobox/PillsInput/)
