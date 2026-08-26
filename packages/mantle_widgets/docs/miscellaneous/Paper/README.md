# Paper

An elevated surface.

Inspired by Mantine [`Paper`](https://mantine.dev/core/paper/).

## Constructors

- `Paper(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget?` | `null` |
| `radius` | `BorderRadiusGeometry` | `miscellaneousDefaultRadius` |
| `shadow` | `String?` | `null` |
| `withBorder` | `bool?` | `false` |
| `padding` | `String?` | `null` |

## Example

```dart
Paper(
  child: const Text('Label'),
  radius: /* … */,
  shadow: 'value',
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Paper](/basic/miscellaneous/Paper/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
