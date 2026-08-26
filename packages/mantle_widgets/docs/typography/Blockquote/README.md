# Blockquote

Bordered quote with cite and icon.

Inspired by Mantine [`Blockquote`](https://mantine.dev/core/blockquote/).

## Constructors

- `Blockquote(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `cite` | `Widget?` | `null` |
| `icon` | `Widget?` | `null` |
| `iconSize` | `double?` | `48` |
| `color` | `String?` | `null` |
| `radius` | `BorderRadiusGeometry` | `typographyDefaultRadius` |

## Example

```dart
Blockquote(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Blockquote](/basic/typography/Blockquote/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
