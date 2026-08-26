# RangeSlider

`RangeSlider` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`RangeSlider`](https://mantine.dev/core/range-slider/).

## Constructors

- `RangeSlider(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `RangeSliderValue?` | `null` |
| `defaultValue` | `RangeSliderValue?` | `null` |
| `onChanged` | `void Function(RangeSliderValue)?` | `null` |
| `onChangeEnd` | `void Function(RangeSliderValue)?` | `null` |
| `min` | `double?` | `0.0` |
| `max` | `double?` | `100.0` |
| `step` | `double?` | `1.0` |
| `minRange` | `double?` | `0.0` |
| `marks` | `List<SliderMark>?` | `null` |
| `disabled` | `bool?` | `false` |
| `labelAlwaysOn` | `bool?` | `false` |
| `color` | `String?` | `null` |
| `size` | `String?` | `'md'` |
| `radius` | `BorderRadiusGeometry` | `inputPillRadius` |

## Example

```dart
RangeSlider(
  value: /* … */,
  defaultValue: /* … */,
  onChanged: () {},
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` RangeSlider](/basic/inputs/RangeSlider/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Slider](/widgets/inputs/Slider/)
