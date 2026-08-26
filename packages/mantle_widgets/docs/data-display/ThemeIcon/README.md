# ThemeIcon

A colored square wrapping an icon.

Inspired by Mantine [`ThemeIcon`](https://mantine.dev/core/theme-icon/).

## Constructors

- `ThemeIcon(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `size` | `String?` | `'md'` |
| `color` | `String?` | `null` |
| `appearance` | `String?` | `'filled'` |
| `radius` | `BorderRadiusGeometry` | `dataDisplayDefaultRadius` |
| `autoContrast` | `bool?` | `false` |

## Example

```dart
ThemeIcon(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` ThemeIcon](/basic/data-display/ThemeIcon/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
