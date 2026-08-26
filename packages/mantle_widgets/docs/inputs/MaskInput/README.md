# MaskInput

Pattern-masked text field.

Inspired by Mantine [`MaskInput`](https://mantine.dev/core/mask-input/).

## Constructors

- `MaskInput(...)` (unnamed / `default`)
- `MaskInput.filled(...)` (filled)
- `MaskInput.unstyled(...)` (unstyled)

## Properties

| Prop | Type | Default |
|---|---|---|
| `mask` | `String` | required |
| `value` | `String?` | `null` |
| `defaultValue` | `String?` | `null` |
| `onChanged` | `void Function(String)?` | `null` |
| `placeholder` | `String?` | `null` |
| `slotChar` | `String?` | `'_'` |
| `label` | `Widget?` | `null` |
| `description` | `Widget?` | `null` |
| `error` | `Widget?` | `null` |
| `disabled` | `bool?` | `false` |
| `readOnly` | `bool?` | `false` |
| `required` | `bool?` | `false` |
| `withAsterisk` | `bool?` | `null` |
| `size` | `String?` | `'sm'` |
| `radius` | `BorderRadiusGeometry` | `inputDefaultRadius` |

## Example

```dart
MaskInput.filled(
  mask: 'value',
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MaskInput](/basic/inputs/MaskInput/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
