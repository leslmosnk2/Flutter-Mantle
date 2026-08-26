# SwitchGroup

`SwitchGroup` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`SwitchGroup`](https://mantine.dev/core/switch-group/).

## Constructors

- `SwitchGroup(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `value` | `List<String>?` | `null` |
| `defaultValue` | `List<String>?` | `null` |
| `onChanged` | `void Function(List<String>)?` | `null` |
| `label` | `Widget?` | `null` |
| `description` | `Widget?` | `null` |
| `error` | `Widget?` | `null` |
| `disabled` | `bool?` | `false` |
| `readOnly` | `bool?` | `false` |
| `size` | `String?` | `'sm'` |

## Example

```dart
SwitchGroup(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` SwitchGroup](/basic/inputs/SwitchGroup/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Switch](/widgets/inputs/Switch/)
