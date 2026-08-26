# RollingNumber

Animated numeric text.

Inspired by Mantine [`RollingNumber`](https://mantine.dev/core/rolling-number/).

## Constructors

- `RollingNumber(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `num` | required |
| `prefix` | `String?` | `''` |
| `suffix` | `String?` | `''` |
| `decimalScale` | `int?` | `null` |
| `fixedDecimalScale` | `bool?` | `false` |
| `thousandSeparator` | `String?` | `null` |
| `decimalSeparator` | `String?` | `'.'` |
| `animationDuration` | `int?` | `600` |
| `fontSize` | `double?` | `null` |

## Example

```dart
RollingNumber(
  value: /* … */,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` RollingNumber](/basic/data-display/RollingNumber/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
