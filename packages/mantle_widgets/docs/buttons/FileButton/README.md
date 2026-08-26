# FileButton

A file-picker trigger. v1 does not open a platform picker. `onPressed` is the hook apps use to wire `file_picker` (or equivalent). `accept` and `multiple` are metadata for that hook.

Inspired by Mantine [`FileButton`](https://mantine.dev/core/file-button/).

## Constructors

- `FileButton(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `builder` | `FileButtonBuilder` | required |
| `onPressed` | `VoidCallback` | required |
| `disabled` | `bool?` | `false` |
| `multiple` | `bool?` | `false` |
| `accept` | `String?` | `null` |

## Example

```dart
FileButton(
  builder: /* … */,
  onPressed: () {},
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` FileButton](/basic/buttons/FileButton/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
