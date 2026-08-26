# MCard

A paper surface with optional sections.

Inspired by Mantine [`MCard`](https://mantine.dev/core/card/).

## Constructors

- `MCard(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `padding` | `String?` | `'md'` |
| `radius` | `BorderRadiusGeometry` | `dataDisplayDefaultRadius` |
| `withBorder` | `bool?` | `false` |
| `shadow` | `String?` | `null` |

## Example

```dart
MCard(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MCard](/basic/data-display/MCard/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [CardSection](/widgets/data-display/CardSection/)
