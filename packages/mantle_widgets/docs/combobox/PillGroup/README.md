# PillGroup

`PillGroup` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`PillGroup`](https://mantine.dev/core/pill-group/).

## Constructors

- `PillGroup(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `size` | `String?` | `null` |
| `gap` | `String?` | `null` |
| `disabled` | `bool?` | `false` |

## Example

```dart
PillGroup(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` PillGroup](/basic/combobox/PillGroup/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Pill](/widgets/combobox/Pill/)
