# Anchor

An inline text link.

Inspired by Mantine [`Anchor`](https://mantine.dev/core/anchor/).

## Constructors

- `Anchor(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `onPressed` | `AnchorOnPressed?` | `null` |
| `href` | `String?` | `null` |
| `underline` | `AnchorUnderline?` | `AnchorUnderline.hover` |
| `size` | `String?` | `'sm'` |
| `color` | `String?` | `null` |

## Example

```dart
Anchor(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Anchor](/basic/navigation/Anchor/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
