# ColorPicker

`ColorPicker` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`ColorPicker`](https://mantine.dev/core/color-picker/).

## Constructors

- `ColorPicker(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `String?` | `null` |
| `defaultValue` | `String?` | `null` |
| `onChanged` | `void Function(String)?` | `null` |
| `onChangeEnd` | `void Function(String)?` | `null` |
| `format` | `ColorFormat?` | `ColorFormat.hex` |
| `withPicker` | `bool?` | `true` |
| `fullWidth` | `bool?` | `false` |
| `swatches` | `List<String>?` | `null` |
| `swatchesPerRow` | `int?` | `7` |
| `size` | `String?` | `'md'` |

## Example

```dart
ColorPicker(
  value: 'value',
  defaultValue: 'value',
  onChanged: () {},
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` ColorPicker](/basic/inputs/ColorPicker/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [ColorInput](/widgets/inputs/ColorInput/)
- [HueSlider](/widgets/inputs/HueSlider/)
- [AlphaSlider](/widgets/inputs/AlphaSlider/)
