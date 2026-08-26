# MStack

A vertical flex container.

Inspired by Mantine [`MStack`](https://mantine.dev/core/stack/).

## Constructors

- `MStack(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `gap` | `String?` | `'md'` |
| `align` | `CrossAxisAlignment?` | `CrossAxisAlignment.stretch` |
| `justify` | `MainAxisAlignment?` | `MainAxisAlignment.start` |

## Example

```dart
MStack(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MStack](/basic/layout/MStack/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
