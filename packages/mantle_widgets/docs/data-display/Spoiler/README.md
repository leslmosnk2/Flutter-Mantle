# Spoiler

Clamped height with show more/less.

Inspired by Mantine [`Spoiler`](https://mantine.dev/core/spoiler/).

## Constructors

- `Spoiler(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `maxHeight` | `double?` | `100` |
| `showLabel` | `Widget` | required |
| `hideLabel` | `Widget` | required |
| `expanded` | `bool?` | `null` |
| `initialState` | `bool?` | `false` |
| `onExpandedChange` | `SpoilerOnExpandedChange?` | `null` |

## Example

```dart
Spoiler(
  child: const Text('Label'),
  showLabel: /* … */,
  hideLabel: /* … */,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Spoiler](/basic/data-display/Spoiler/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
