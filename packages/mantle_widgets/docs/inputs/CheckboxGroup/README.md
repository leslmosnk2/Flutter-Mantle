# CheckboxGroup

`CheckboxGroup` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`CheckboxGroup`](https://mantine.dev/core/checkbox-group/).

## Constructors

- `CheckboxGroup(...)` (unnamed / `default`)

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
CheckboxGroup(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` CheckboxGroup](/basic/inputs/CheckboxGroup/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Checkbox](/widgets/inputs/Checkbox/)
