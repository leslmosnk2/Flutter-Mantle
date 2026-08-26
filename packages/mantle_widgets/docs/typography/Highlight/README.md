# Highlight

Mark matching substrings in text.

Inspired by Mantine [`Highlight`](https://mantine.dev/core/highlight/).

## Constructors

- `Highlight(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `text` | `String` | required |
| `highlight` | `List<String>` | required |
| `color` | `String?` | `'yellow'` |
| `size` | `String?` | `'md'` |

## Example

```dart
Highlight(
  text: 'value',
  highlight: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Highlight](/basic/typography/Highlight/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
