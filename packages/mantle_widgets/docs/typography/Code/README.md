# Code

Inline or block monospace chip.

Inspired by Mantine [`Code`](https://mantine.dev/core/code/).

## Constructors

- `Code(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `block` | `bool?` | `false` |
| `color` | `String?` | `null` |

## Example

```dart
Code(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Code](/basic/typography/Code/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
