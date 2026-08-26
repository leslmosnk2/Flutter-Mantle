# Mark

Highlighted mark around child text.

Inspired by Mantine [`Mark`](https://mantine.dev/core/mark/).

## Constructors

- `Mark(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `color` | `String?` | `'yellow'` |

## Example

```dart
Mark(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Mark](/basic/typography/Mark/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
