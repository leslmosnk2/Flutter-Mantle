# Textarea

Wrapped multiline text field.

Inspired by Mantine [`Textarea`](https://mantine.dev/core/textarea/).

## Constructors

- `Textarea(...)` (unnamed / `default`)
- `Textarea.filled(...)` (filled)
- `Textarea.unstyled(...)` (unstyled)

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
| `disabled` | `bool?` | `false` |
| `readOnly` | `bool?` | `false` |
| `required` | `bool?` | `false` |
| `withAsterisk` | `bool?` | `null` |
| `autosize` | `bool?` | `false` |
| `minRows` | `int?` | `2` |
| `maxRows` | `int?` | `null` |
| `size` | `String?` | `'sm'` |
| `radius` | `BorderRadiusGeometry` | `inputDefaultRadius` |

## Example

```dart
Textarea.filled(
  value: 'value',
  defaultValue: 'value',
  onChanged: () {},
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Textarea](/basic/inputs/Textarea/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
