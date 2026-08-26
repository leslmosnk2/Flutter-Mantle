# Input

Base text-field chrome.

Inspired by Mantine [`Input`](https://mantine.dev/core/input/).

## Constructors

- `Input(...)` (unnamed / `default`)
- `Input.filled(...)` (filled)
- `Input.unstyled(...)` (unstyled)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `String?` | `null` |
| `defaultValue` | `String?` | `null` |
| `onChanged` | `void Function(String)?` | `null` |
| `placeholder` | `String?` | `null` |
| `leftSection` | `Widget?` | `null` |
| `rightSection` | `Widget?` | `null` |
| `disabled` | `bool?` | `false` |
| `readOnly` | `bool?` | `false` |
| `required` | `bool?` | `false` |
| `pointer` | `bool?` | `false` |
| `multiline` | `bool?` | `false` |
| `withErrorStyles` | `bool?` | `true` |
| `error` | `Widget?` | `null` |
| `size` | `String?` | `'sm'` |
| `radius` | `BorderRadiusGeometry` | `inputDefaultRadius` |

## Example

```dart
Input.filled(
  value: 'value',
  defaultValue: 'value',
  onChanged: () {},
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Input](/basic/inputs/Input/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [InputWrapper](/widgets/inputs/InputWrapper/)
