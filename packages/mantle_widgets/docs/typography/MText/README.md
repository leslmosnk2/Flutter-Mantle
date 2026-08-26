# MText

Named `MText` because `Text` collides with `package:flutter/widgets.dart`.

Inspired by Mantine [`MText`](https://mantine.dev/core/text/).

## Constructors

- `MText(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `size` | `String?` | `'md'` |
| `fw` | `FontWeight?` | `null` |
| `truncate` | `MTextTruncate?` | `null` |
| `lineClamp` | `int?` | `null` |
| `color` | `String?` | `null` |
| `align` | `TextAlign?` | `null` |
| `inherit` | `bool?` | `false` |
| `inline` | `bool?` | `false` |
| `span` | `bool?` | `false` |

## Example

```dart
MText(
  size: 'lg',
  child: const Text('Hello'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MText](/basic/typography/MText/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
