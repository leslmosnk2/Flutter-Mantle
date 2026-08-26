# FocusTrap

Autofocus the child subtree.

Inspired by Mantine [`FocusTrap`](https://mantine.dev/core/focus-trap/).

## Constructors

- `FocusTrap(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `active` | `bool?` | `true` |

## Example

```dart
FocusTrap(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` FocusTrap](/basic/miscellaneous/FocusTrap/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
