# PasswordInput

Obscured text with toggle.

Inspired by Mantine [`PasswordInput`](https://mantine.dev/core/password-input/).

## Constructors

- `PasswordInput(...)` (unnamed / `default`)
- `PasswordInput.filled(...)` (filled)
- `PasswordInput.unstyled(...)` (unstyled)

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
| `disabled` | `bool?` | `false` |
| `readOnly` | `bool?` | `false` |
| `required` | `bool?` | `false` |
| `withAsterisk` | `bool?` | `null` |
| `visible` | `bool?` | `null` |
| `defaultVisible` | `bool?` | `false` |
| `onVisibilityChange` | `void Function(bool)?` | `null` |
| `size` | `String?` | `'sm'` |
| `radius` | `BorderRadiusGeometry` | `inputDefaultRadius` |

## Example

```dart
PasswordInput.filled(
  value: 'value',
  defaultValue: 'value',
  onChanged: () {},
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` PasswordInput](/basic/inputs/PasswordInput/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
