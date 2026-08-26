# MAspectRatio

Locks `child` to `ratio`.

Inspired by Mantine [`MAspectRatio`](https://mantine.dev/core/aspect-ratio/).

## Constructors

- `MAspectRatio(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `ratio` | `double?` | `1` |

## Example

```dart
MAspectRatio(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MAspectRatio](/basic/layout/MAspectRatio/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
