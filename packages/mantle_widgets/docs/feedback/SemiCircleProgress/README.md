# SemiCircleProgress

A half-ring with a label.

Inspired by Mantine [`SemiCircleProgress`](https://mantine.dev/core/semi-circle-progress/).

## Constructors

- `SemiCircleProgress(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `double` | required |
| `label` | `Widget?` | `null` |
| `fillDirection` | `SemiCircleFillDirection?` | `SemiCircleFillDirection.leftToRight` |
| `orientation` | `SemiCircleOrientation?` | `SemiCircleOrientation.up` |
| `labelPosition` | `SemiCircleLabelPosition?` | `SemiCircleLabelPosition.bottom` |
| `size` | `double?` | `200` |
| `thickness` | `double?` | `12` |
| `filledSegmentColor` | `String?` | `null` |
| `emptySegmentColor` | `String?` | `null` |

## Example

```dart
SemiCircleProgress(
  value: 0,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` SemiCircleProgress](/basic/feedback/SemiCircleProgress/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
