# ChipGroup

`ChipGroup` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`ChipGroup`](https://mantine.dev/core/chip-group/).

## Constructors

- `ChipGroup(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `value` | `List<String>?` | `null` |
| `defaultValue` | `List<String>?` | `null` |
| `onChanged` | `void Function(List<String>)?` | `null` |
| `multiple` | `bool?` | `false` |

## Example

```dart
ChipGroup(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` ChipGroup](/basic/inputs/ChipGroup/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Chip](/widgets/inputs/Chip/)
