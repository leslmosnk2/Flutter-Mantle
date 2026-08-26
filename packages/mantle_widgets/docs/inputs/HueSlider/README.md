# HueSlider

`HueSlider` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`HueSlider`](https://mantine.dev/core/hue-slider/).

## Constructors

- `HueSlider(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `double` | required |
| `onChanged` | `void Function(double)?` | `null` |
| `onChangeEnd` | `void Function(double)?` | `null` |
| `size` | `String?` | `'md'` |

## Example

```dart
HueSlider(
  value: 0,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` HueSlider](/basic/inputs/HueSlider/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [ColorPicker](/widgets/inputs/ColorPicker/)
- [ColorInput](/widgets/inputs/ColorInput/)
- [AlphaSlider](/widgets/inputs/AlphaSlider/)
