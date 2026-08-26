# Chip

`Chip` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`Chip`](https://mantine.dev/core/chip/).

## Constructors

- `Chip(...)` (unnamed / `default`)
- `Chip.outline(...)` (outline)
- `Chip.filled(...)` (filled)
- `Chip.light(...)` (light)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `value` | `String?` | `null` |
| `checked` | `bool?` | `null` |
| `defaultChecked` | `bool?` | `false` |
| `onChanged` | `void Function(bool)?` | `null` |
| `disabled` | `bool?` | `false` |
| `icon` | `Widget?` | `null` |
| `color` | `String?` | `null` |
| `size` | `String?` | `'sm'` |
| `radius` | `BorderRadiusGeometry` | `inputPillRadius` |

## Example

```dart
Chip.filled(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Chip](/basic/inputs/Chip/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [ChipGroup](/widgets/inputs/ChipGroup/)
