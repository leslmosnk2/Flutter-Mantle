# SegmentedControl

`SegmentedControl` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`SegmentedControl`](https://mantine.dev/core/segmented-control/).

## Constructors

- `SegmentedControl(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `data` | `List<SegmentedControlItem>` | required |
| `value` | `String?` | `null` |
| `defaultValue` | `String?` | `null` |
| `onChanged` | `void Function(String)?` | `null` |
| `disabled` | `bool?` | `false` |
| `readOnly` | `bool?` | `false` |
| `fullWidth` | `bool?` | `false` |
| `withItemsBorders` | `bool?` | `true` |
| `orientation` | `Axis?` | `Axis.horizontal` |
| `color` | `String?` | `null` |
| `size` | `String?` | `'sm'` |
| `radius` | `BorderRadiusGeometry` | `inputDefaultRadius` |

## Example

```dart
SegmentedControl(
  data: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` SegmentedControl](/basic/inputs/SegmentedControl/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
