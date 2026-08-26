# FileInput

Tap-to-pick file field.

Inspired by Mantine [`FileInput`](https://mantine.dev/core/file-input/).

## Constructors

- `FileInput(...)` (unnamed / `default`)
- `FileInput.filled(...)` (filled)
- `FileInput.unstyled(...)` (unstyled)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `List<MantlePickedFile>?` | `null` |
| `onChanged` | `void Function(List<MantlePickedFile>)?` | `null` |
| `onPick` | `VoidCallback?` | `null` |
| `placeholder` | `String?` | `null` |
| `label` | `Widget?` | `null` |
| `description` | `Widget?` | `null` |
| `error` | `Widget?` | `null` |
| `multiple` | `bool?` | `false` |
| `clearable` | `bool?` | `false` |
| `disabled` | `bool?` | `false` |
| `readOnly` | `bool?` | `false` |
| `required` | `bool?` | `false` |
| `withAsterisk` | `bool?` | `null` |
| `accept` | `String?` | `null` |
| `size` | `String?` | `'sm'` |
| `radius` | `BorderRadiusGeometry` | `inputDefaultRadius` |

## Example

```dart
FileInput.filled(
  value: const [],
  onChanged: () {},
  onPick: () {},
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` FileInput](/basic/inputs/FileInput/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
