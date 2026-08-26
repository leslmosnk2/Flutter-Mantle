# VisuallyHidden

Clip out of view, keep semantics.

Inspired by Mantine [`VisuallyHidden`](https://mantine.dev/core/visually-hidden/).

## Constructors

- `VisuallyHidden(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |

## Example

```dart
VisuallyHidden(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` VisuallyHidden](/basic/miscellaneous/VisuallyHidden/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
