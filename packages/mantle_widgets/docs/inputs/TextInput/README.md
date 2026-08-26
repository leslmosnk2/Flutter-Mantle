# TextInput

Wrapped single-line text field.

Inspired by Mantine [`TextInput`](https://mantine.dev/core/text-input/).

## Constructors

- `TextInput(...)` (unnamed / `default`)
- `TextInput.filled(...)` (filled)
- `TextInput.unstyled(...)` (unstyled)

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
| `leftSection` | `Widget?` | `null` |
| `rightSection` | `Widget?` | `null` |
| `disabled` | `bool?` | `false` |
| `readOnly` | `bool?` | `false` |
| `required` | `bool?` | `false` |
| `withAsterisk` | `bool?` | `null` |
| `size` | `String?` | `'sm'` |
| `radius` | `BorderRadiusGeometry` | `inputDefaultRadius` |

## Example

```dart
TextInput(
  label: 'Email',
  placeholder: 'you@example.com',
  onChanged: (value) {},
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` TextInput](/basic/inputs/TextInput/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
