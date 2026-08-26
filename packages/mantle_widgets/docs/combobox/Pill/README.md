# Pill

A compact value chip. Mantine `Pill.Group` is `PillGroup`.

Inspired by Mantine [`Pill`](https://mantine.dev/core/pill/).

## Constructors

- `Pill(...)` (unnamed / `default`)
- `Pill.contrast(...)` (contrast)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `withRemoveButton` | `bool?` | `false` |
| `onRemove` | `VoidCallback?` | `null` |
| `disabled` | `bool?` | `false` |
| `size` | `String?` | `null` |
| `radius` | `BorderRadiusGeometry` | `defaultPillRadius` |

## Example

```dart
Pill(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Pill](/basic/combobox/Pill/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [PillGroup](/widgets/combobox/PillGroup/)
