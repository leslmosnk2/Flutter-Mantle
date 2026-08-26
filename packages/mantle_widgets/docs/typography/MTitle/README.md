# MTitle

Named `MTitle` because `Title` collides with `package:flutter/widgets.dart`.

Inspired by Mantine [`MTitle`](https://mantine.dev/core/title/).

## Constructors

- `MTitle(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `order` | `int?` | `1` |
| `size` | `String?` | `null` |
| `lineClamp` | `int?` | `null` |

## Example

```dart
MTitle(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MTitle](/basic/typography/MTitle/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
