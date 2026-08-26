# Progress

A single horizontal bar (`0–100`).

Inspired by Mantine [`Progress`](https://mantine.dev/core/progress/).

## Constructors

- `Progress(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `double` | required |
| `color` | `String?` | `null` |
| `striped` | `bool?` | `false` |
| `animated` | `bool?` | `false` |
| `size` | `String?` | `'md'` |
| `radius` | `BorderRadiusGeometry` | `feedbackDefaultRadius` |

## Example

```dart
Progress(
  value: 0,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Progress](/basic/feedback/Progress/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
