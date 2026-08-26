# ActionIcon

A square icon button.

Inspired by Mantine [`ActionIcon`](https://mantine.dev/core/action-icon/).

## Constructors

- `ActionIcon(...)` (unnamed / `default`)
- `ActionIcon.filled(...)` (filled) — extra: `autoContrast`, `gradient`
- `ActionIcon.light(...)` (light)
- `ActionIcon.outline(...)` (outline)
- `ActionIcon.subtle(...)` (subtle)
- `ActionIcon.transparent(...)` (transparent)
- `ActionIcon.white(...)` (white)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `onPressed` | `VoidCallback` | required |
| `disabled` | `bool?` | `false` |
| `loading` | `bool` | `false` |
| `radius` | `BorderRadiusGeometry` | `_getDefaultRadius` |
| `size` | `String?` | `null` |
| `semanticLabel` | `String?` | `null` |

Variant-only:

| Variant | Prop | Type | Default |
|---|---|---|---|
| `filled` | `autoContrast` | `bool` | `false` |
| `filled` | `gradient` | `Gradient?` | `null` |

## Example

```dart
ActionIcon(
  onPressed: () {},
  child: const Text('×'),
)
```

## Slots

Theme delegates implement:

- `root`
- `icon`
- `loader`

See [`mantle_basic` ActionIcon](/basic/buttons/ActionIcon/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
