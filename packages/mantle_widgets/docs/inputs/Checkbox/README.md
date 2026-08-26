# Checkbox

`Checkbox` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`Checkbox`](https://mantine.dev/core/checkbox/).

## Constructors

- `Checkbox(...)` (unnamed / `default`)
- `Checkbox.filled(...)` (filled)
- `Checkbox.outline(...)` (outline)

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
| `indeterminate` | `bool?` | `false` |
| `disabled` | `bool?` | `false` |
| `color` | `String?` | `null` |
| `iconColor` | `String?` | `null` |
| `labelPosition` | `InputLabelPosition?` | `InputLabelPosition.right` |
| `size` | `String?` | `'sm'` |
| `radius` | `BorderRadiusGeometry` | `inputDefaultRadius` |

## Example

```dart
Checkbox(
  label: const Text('I agree'),
  checked: agreed,
  onChange: (value) {},
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Checkbox](/basic/inputs/Checkbox/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [CheckboxGroup](/widgets/inputs/CheckboxGroup/)
