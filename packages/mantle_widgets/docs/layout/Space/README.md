# Space

A standalone width/height spacer.

Inspired by Mantine [`Space`](https://mantine.dev/core/space/).

## Constructors

- `Space(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `width` | `double?` | `null` |
| `height` | `double?` | `null` |
| `w` | `String?` | `null` |
| `h` | `String?` | `null` |

## Example

```dart
Space(
  width: 0,
  height: 0,
  w: 'value',
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Space](/basic/layout/Space/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
