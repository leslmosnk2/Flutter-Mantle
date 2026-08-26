# Avatar

Image, initials, or placeholder.

Inspired by Mantine [`Avatar`](https://mantine.dev/core/avatar/).

## Constructors

- `Avatar(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `src` | `String?` | `null` |
| `name` | `String?` | `null` |
| `child` | `Widget?` | `null` |
| `size` | `String?` | `'md'` |
| `color` | `String?` | `'gray'` |
| `appearance` | `String?` | `'light'` |
| `radius` | `BorderRadiusGeometry` | `dataDisplayPillRadius` |
| `alt` | `String?` | `null` |
| `autoContrast` | `bool?` | `false` |

## Example

```dart
Avatar(
  src: 'value',
  name: 'value',
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Avatar](/basic/data-display/Avatar/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [AvatarGroup](/widgets/data-display/AvatarGroup/)
