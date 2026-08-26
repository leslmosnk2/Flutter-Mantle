# Radio

`Radio` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`Radio`](https://mantine.dev/core/radio/).

## Constructors

- `Radio(...)` (unnamed / `default`)
- `Radio.filled(...)` (filled)
- `Radio.outline(...)` (outline)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `String` | required |
| `checked` | `bool?` | `null` |
| `onChanged` | `void Function(bool)?` | `null` |
| `label` | `Widget?` | `null` |
| `description` | `Widget?` | `null` |
| `error` | `Widget?` | `null` |
| `disabled` | `bool?` | `false` |
| `color` | `String?` | `null` |
| `iconColor` | `String?` | `null` |
| `labelPosition` | `InputLabelPosition?` | `InputLabelPosition.right` |
| `size` | `String?` | `'sm'` |
| `radius` | `BorderRadiusGeometry` | `inputPillRadius` |

## Example

```dart
Radio.filled(
  value: 'value',
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Radio](/basic/inputs/Radio/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [RadioGroup](/widgets/inputs/RadioGroup/)
