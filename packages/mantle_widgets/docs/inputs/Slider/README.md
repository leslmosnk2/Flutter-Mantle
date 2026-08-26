# Slider

`Slider` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`Slider`](https://mantine.dev/core/slider/).

## Constructors

- `Slider(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `double?` | `null` |
| `defaultValue` | `double?` | `null` |
| `onChanged` | `void Function(double)?` | `null` |
| `onChangeEnd` | `void Function(double)?` | `null` |
| `min` | `double?` | `0.0` |
| `max` | `double?` | `100.0` |
| `step` | `double?` | `1.0` |
| `marks` | `List<SliderMark>?` | `null` |
| `disabled` | `bool?` | `false` |
| `labelAlwaysOn` | `bool?` | `false` |
| `color` | `String?` | `null` |
| `size` | `String?` | `'md'` |
| `radius` | `BorderRadiusGeometry` | `inputPillRadius` |

## Example

```dart
Slider(
  value: 0,
  defaultValue: 0,
  onChanged: () {},
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Slider](/basic/inputs/Slider/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [RangeSlider](/widgets/inputs/RangeSlider/)
