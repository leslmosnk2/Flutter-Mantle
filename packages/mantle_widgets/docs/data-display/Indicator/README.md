# Indicator

A badge or dot overlay on a child.

Inspired by Mantine [`Indicator`](https://mantine.dev/core/indicator/).

## Constructors

- `Indicator(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `label` | `Widget?` | `null` |
| `position` | `IndicatorPosition?` | `IndicatorPosition.topEnd` |
| `offset` | `double?` | `0` |
| `size` | `double?` | `10` |
| `color` | `String?` | `null` |
| `radius` | `BorderRadiusGeometry` | `dataDisplayPillRadius` |
| `inline` | `bool?` | `false` |
| `withBorder` | `bool?` | `false` |
| `disabled` | `bool?` | `false` |
| `processing` | `bool?` | `false` |
| `autoContrast` | `bool?` | `false` |

## Example

```dart
Indicator(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Indicator](/basic/data-display/Indicator/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
