# Switch

`Switch` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`Switch`](https://mantine.dev/core/switch/).

## Constructors

- `Switch(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `checked` | `bool?` | `null` |
| `defaultChecked` | `bool?` | `false` |
| `onChanged` | `void Function(bool)?` | `null` |
| `value` | `String?` | `null` |
| `label` | `Widget?` | `null` |
| `description` | `Widget?` | `null` |
| `error` | `Widget?` | `null` |
| `onLabel` | `Widget?` | `null` |
| `offLabel` | `Widget?` | `null` |
| `thumbIcon` | `Widget?` | `null` |
| `disabled` | `bool?` | `false` |
| `color` | `String?` | `null` |
| `labelPosition` | `InputLabelPosition?` | `InputLabelPosition.right` |
| `size` | `String?` | `'sm'` |
| `radius` | `BorderRadiusGeometry` | `inputPillRadius` |

## Example

```dart
Switch(
  checked: false,
  defaultChecked: false,
  onChanged: () {},
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Switch](/basic/inputs/Switch/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [SwitchGroup](/widgets/inputs/SwitchGroup/)
