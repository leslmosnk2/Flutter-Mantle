# MFlex

A generic flex container.

Inspired by Mantine [`MFlex`](https://mantine.dev/core/flex/).

## Constructors

- `MFlex(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `direction` | `Axis?` | `Axis.horizontal` |
| `align` | `CrossAxisAlignment?` | `CrossAxisAlignment.center` |
| `justify` | `MainAxisAlignment?` | `MainAxisAlignment.start` |
| `wrap` | `bool?` | `false` |
| `gap` | `String?` | `null` |
| `rowGap` | `String?` | `null` |
| `columnGap` | `String?` | `null` |

## Example

```dart
MFlex(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MFlex](/basic/layout/MFlex/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
