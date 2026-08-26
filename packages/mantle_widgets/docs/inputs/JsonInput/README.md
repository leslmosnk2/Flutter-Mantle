# JsonInput

Textarea with JSON validation.

Inspired by Mantine [`JsonInput`](https://mantine.dev/core/json-input/).

## Constructors

- `JsonInput(...)` (unnamed / `default`)
- `JsonInput.filled(...)` (filled)
- `JsonInput.unstyled(...)` (unstyled)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `String?` | `null` |
| `defaultValue` | `String?` | `null` |
| `onChanged` | `void Function(String)?` | `null` |
| `placeholder` | `String?` | `null` |
| `label` | `Widget?` | `null` |
| `description` | `Widget?` | `null` |
| `error` | `Widget?` | `null` |
| `validationError` | `Widget?` | `null` |
| `disabled` | `bool?` | `false` |
| `readOnly` | `bool?` | `false` |
| `required` | `bool?` | `false` |
| `formatOnBlur` | `bool?` | `false` |
| `withAsterisk` | `bool?` | `null` |
| `minRows` | `int?` | `4` |
| `size` | `String?` | `'sm'` |
| `radius` | `BorderRadiusGeometry` | `inputDefaultRadius` |

## Example

```dart
JsonInput.filled(
  value: 'value',
  defaultValue: 'value',
  onChanged: () {},
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` JsonInput](/basic/inputs/JsonInput/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
