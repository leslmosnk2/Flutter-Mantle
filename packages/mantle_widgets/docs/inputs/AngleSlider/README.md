# AngleSlider

`AngleSlider` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`AngleSlider`](https://mantine.dev/core/angle-slider/).

## Constructors

- `AngleSlider(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `double?` | `null` |
| `defaultValue` | `double?` | `0.0` |
| `onChanged` | `void Function(double)?` | `null` |
| `onChangeEnd` | `void Function(double)?` | `null` |
| `step` | `double?` | `1.0` |
| `size` | `double?` | `60.0` |
| `thumbSize` | `double?` | `null` |
| `withLabel` | `bool?` | `true` |
| `disabled` | `bool?` | `false` |

## Example

```dart
AngleSlider(
  value: 0,
  defaultValue: 0,
  onChanged: () {},
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` AngleSlider](/basic/inputs/AngleSlider/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
