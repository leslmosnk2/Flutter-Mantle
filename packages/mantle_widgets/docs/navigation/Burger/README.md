# Burger

A three-line menu toggle.

Inspired by Mantine [`Burger`](https://mantine.dev/core/burger/).

## Constructors

- `Burger(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `opened` | `bool?` | `false` |
| `onTap` | `BurgerOnTap?` | `null` |
| `size` | `String?` | `'md'` |
| `color` | `String?` | `null` |

## Example

```dart
Burger(
  opened: false,
  onTap: /* … */,
  size: 'md',
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Burger](/basic/navigation/Burger/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
