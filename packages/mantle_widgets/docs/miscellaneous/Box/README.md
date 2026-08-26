# Box

A passthrough padded/colored container.

Inspired by Mantine [`Box`](https://mantine.dev/core/box/).

## Constructors

- `Box(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget?` | `null` |
| `padding` | `EdgeInsetsGeometry?` | `null` |
| `margin` | `EdgeInsetsGeometry?` | `null` |
| `color` | `Color?` | `null` |
| `radius` | `BorderRadiusGeometry?` | `null` |
| `width` | `double?` | `null` |
| `height` | `double?` | `null` |

## Example

```dart
Box(
  child: const Text('Label'),
  padding: /* … */,
  margin: /* … */,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Box](/basic/miscellaneous/Box/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
