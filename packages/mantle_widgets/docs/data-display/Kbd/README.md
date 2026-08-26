# Kbd

Keyboard-key chrome around text.

Inspired by Mantine [`Kbd`](https://mantine.dev/core/kbd/).

## Constructors

- `Kbd(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `size` | `String?` | `'sm'` |

## Example

```dart
Kbd(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Kbd](/basic/data-display/Kbd/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
