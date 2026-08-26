# BackgroundImage

Image behind a child.

Inspired by Mantine [`BackgroundImage`](https://mantine.dev/core/background-image/).

## Constructors

- `BackgroundImage(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `src` | `String?` | `null` |
| `image` | `MantleImageProvider?` | `null` |
| `child` | `Widget` | required |
| `fit` | `BoxFit?` | `BoxFit.cover` |
| `radius` | `BorderRadiusGeometry` | `_zeroRadius` |

## Example

```dart
BackgroundImage(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` BackgroundImage](/basic/data-display/BackgroundImage/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
