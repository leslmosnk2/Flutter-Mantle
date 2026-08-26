# AlphaSlider

`AlphaSlider` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`AlphaSlider`](https://mantine.dev/core/alpha-slider/).

## Constructors

- `AlphaSlider(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `double` | required |
| `color` | `String` | required |
| `onChanged` | `void Function(double)?` | `null` |
| `onChangeEnd` | `void Function(double)?` | `null` |
| `size` | `String?` | `'md'` |

## Example

```dart
AlphaSlider(
  value: 0,
  color: 'value',
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` AlphaSlider](/basic/inputs/AlphaSlider/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [ColorPicker](/widgets/inputs/ColorPicker/)
- [ColorInput](/widgets/inputs/ColorInput/)
- [HueSlider](/widgets/inputs/HueSlider/)
