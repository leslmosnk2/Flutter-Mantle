# Badge

A compact label chip.

Inspired by Mantine [`Badge`](https://mantine.dev/core/badge/).

## Constructors

- `Badge(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `size` | `String?` | `'md'` |
| `color` | `String?` | `null` |
| `appearance` | `String?` | `'filled'` |
| `radius` | `BorderRadiusGeometry` | `dataDisplayPillRadius` |
| `circle` | `bool?` | `false` |
| `fullWidth` | `bool?` | `false` |
| `autoContrast` | `bool?` | `false` |
| `leftSection` | `Widget?` | `null` |
| `rightSection` | `Widget?` | `null` |

## Example

```dart
Badge(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Badge](/basic/data-display/Badge/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
