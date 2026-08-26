# MTransition

Mount/unmount animation. Named `MTransition` because Flutter's `TransitionDelegate` lives in `package:flutter/widgets.dart`.

Inspired by Mantine [`MTransition`](https://mantine.dev/core/transition/).

## Constructors

- `MTransition(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `mounted` | `bool` | required |
| `transition` | `MantleTransitionName?` | `MantleTransitionName.fade` |
| `duration` | `int?` | `250` |
| `exitDuration` | `int?` | `null` |
| `keepMounted` | `bool?` | `false` |
| `onEntered` | `VoidCallback?` | `null` |
| `onExited` | `VoidCallback?` | `null` |

## Example

```dart
MTransition(
  child: const Text('Label'),
  mounted: false,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MTransition](/basic/miscellaneous/MTransition/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
