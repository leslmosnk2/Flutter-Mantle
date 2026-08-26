# PillsInput

Input chrome around pills. Mantine `PillsInput.Field` is `PillsInputField`.

Inspired by Mantine [`PillsInput`](https://mantine.dev/core/pills-input/).

## Constructors

- `PillsInput(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `label` | `String?` | `null` |
| `description` | `String?` | `null` |
| `error` | `String?` | `null` |
| `disabled` | `bool?` | `false` |
| `size` | `String?` | `'sm'` |
| `radius` | `BorderRadiusGeometry` | `defaultComboboxRadius` |

## Example

```dart
PillsInput(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` PillsInput](/basic/combobox/PillsInput/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [PillsInputField](/widgets/combobox/PillsInputField/)
