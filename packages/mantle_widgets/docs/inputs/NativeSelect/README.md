# NativeSelect

Simple option dropdown.

Inspired by Mantine [`NativeSelect`](https://mantine.dev/core/native-select/).

## Constructors

- `NativeSelect(...)` (unnamed / `default`)
- `NativeSelect.filled(...)` (filled)
- `NativeSelect.unstyled(...)` (unstyled)

## Properties

| Prop | Type | Default |
|---|---|---|
| `data` | `List<NativeSelectItem>` | required |
| `value` | `String?` | `null` |
| `defaultValue` | `String?` | `null` |
| `onChanged` | `void Function(String)?` | `null` |
| `placeholder` | `String?` | `null` |
| `label` | `Widget?` | `null` |
| `description` | `Widget?` | `null` |
| `error` | `Widget?` | `null` |
| `disabled` | `bool?` | `false` |
| `required` | `bool?` | `false` |
| `withAsterisk` | `bool?` | `null` |
| `size` | `String?` | `'sm'` |
| `radius` | `BorderRadiusGeometry` | `inputDefaultRadius` |

## Example

```dart
NativeSelect.filled(
  data: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` NativeSelect](/basic/inputs/NativeSelect/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
