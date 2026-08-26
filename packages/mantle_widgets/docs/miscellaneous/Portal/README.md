# Portal

Paint the child in an overlay.

Inspired by Mantine [`Portal`](https://mantine.dev/core/portal/).

## Constructors

- `Portal(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |

## Example

```dart
Portal(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Portal](/basic/miscellaneous/Portal/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
