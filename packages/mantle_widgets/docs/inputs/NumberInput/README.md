# NumberInput

Numeric field with steppers.

Inspired by Mantine [`NumberInput`](https://mantine.dev/core/number-input/).

## Constructors

- `NumberInput(...)` (unnamed / `default`)
- `NumberInput.filled(...)` (filled)
- `NumberInput.unstyled(...)` (unstyled)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `double?` | `null` |
| `defaultValue` | `double?` | `null` |
| `onChanged` | `void Function(double)?` | `null` |
| `placeholder` | `String?` | `null` |
| `label` | `Widget?` | `null` |
| `description` | `Widget?` | `null` |
| `error` | `Widget?` | `null` |
| `disabled` | `bool?` | `false` |
| `readOnly` | `bool?` | `false` |
| `required` | `bool?` | `false` |
| `withAsterisk` | `bool?` | `null` |
| `hideControls` | `bool?` | `false` |
| `allowNegative` | `bool?` | `true` |
| `allowDecimal` | `bool?` | `true` |
| `min` | `double?` | `null` |
| `max` | `double?` | `null` |
| `step` | `double?` | `1.0` |
| `clampBehavior` | `NumberClampBehavior?` | `NumberClampBehavior.blur` |
| `size` | `String?` | `'sm'` |
| `radius` | `BorderRadiusGeometry` | `inputDefaultRadius` |

## Example

```dart
NumberInput.filled(
  value: 0,
  defaultValue: 0,
  onChanged: () {},
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` NumberInput](/basic/inputs/NumberInput/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
