# FloatingIndicator

Highlight over tab-like children.

Inspired by Mantine [`FloatingIndicator`](https://mantine.dev/core/floating-indicator/).

## Constructors

- `FloatingIndicator(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `active` | `int?` | `0` |

## Example

```dart
FloatingIndicator(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` FloatingIndicator](/basic/overlays/FloatingIndicator/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
