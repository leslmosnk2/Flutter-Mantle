# RingProgress

A circular track with sections and an optional hole label.

Inspired by Mantine [`RingProgress`](https://mantine.dev/core/ring-progress/).

## Constructors

- `RingProgress(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `sections` | `List<RingProgressSection>?` | `null` |
| `value` | `double?` | `null` |
| `color` | `String?` | `null` |
| `label` | `Widget?` | `null` |
| `size` | `double?` | `120` |
| `thickness` | `double?` | `12` |
| `roundCaps` | `bool?` | `false` |
| `rootColor` | `String?` | `null` |

## Example

```dart
RingProgress(
  sections: const [],
  value: 0,
  color: 'value',
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` RingProgress](/basic/feedback/RingProgress/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
