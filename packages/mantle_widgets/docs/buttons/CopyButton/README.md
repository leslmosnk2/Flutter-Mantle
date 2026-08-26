# CopyButton

Clipboard copy with copied state.

Inspired by Mantine [`CopyButton`](https://mantine.dev/core/copy-button/).

## Constructors

- `CopyButton(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `String` | required |
| `builder` | `CopyButtonBuilder` | required |
| `timeout` | `int?` | `1000` |
| `onCopy` | `VoidCallback?` | `null` |

## Example

```dart
CopyButton(
  value: 'value',
  builder: /* … */,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` CopyButton](/basic/buttons/CopyButton/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
