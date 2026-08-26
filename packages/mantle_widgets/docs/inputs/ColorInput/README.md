# ColorInput

`ColorInput` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`ColorInput`](https://mantine.dev/core/color-input/).

## Constructors

- `ColorInput(...)` (unnamed / `default`)
- `ColorInput.filled(...)` (filled)
- `ColorInput.unstyled(...)` (unstyled)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `String?` | `null` |
| `defaultValue` | `String?` | `null` |
| `onChanged` | `void Function(String)?` | `null` |
| `placeholder` | `String?` | `null` |
| `label` | `Widget?` | `null` |
| `description` | `Widget?` | `null` |
| `error` | `Widget?` | `null` |
| `format` | `ColorFormat?` | `ColorFormat.hex` |
| `withPicker` | `bool?` | `true` |
| `withPreview` | `bool?` | `true` |
| `disallowInput` | `bool?` | `false` |
| `fixOnBlur` | `bool?` | `true` |
| `disabled` | `bool?` | `false` |
| `required` | `bool?` | `false` |
| `swatches` | `List<String>?` | `null` |
| `size` | `String?` | `'sm'` |
| `radius` | `BorderRadiusGeometry` | `inputDefaultRadius` |

## Example

```dart
ColorInput.filled(
  value: 'value',
  defaultValue: 'value',
  onChanged: () {},
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` ColorInput](/basic/inputs/ColorInput/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [ColorPicker](/widgets/inputs/ColorPicker/)
- [HueSlider](/widgets/inputs/HueSlider/)
- [AlphaSlider](/widgets/inputs/AlphaSlider/)
