# MContainer

Max-width centered content.

Inspired by Mantine [`MContainer`](https://mantine.dev/core/container/).

## Constructors

- `MContainer(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `size` | `String?` | `'md'` |
| `fluid` | `bool?` | `false` |
| `strategy` | `ContainerStrategy?` | `ContainerStrategy.block` |

## Example

```dart
MContainer(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MContainer](/basic/layout/MContainer/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
