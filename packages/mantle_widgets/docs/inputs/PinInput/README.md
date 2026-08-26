# PinInput

A row of one-character fields.

Inspired by Mantine [`PinInput`](https://mantine.dev/core/pin-input/).

## Constructors

- `PinInput(...)` (unnamed / `default`)
- `PinInput.filled(...)` (filled)
- `PinInput.unstyled(...)` (unstyled)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `String?` | `null` |
| `defaultValue` | `String?` | `null` |
| `onChanged` | `void Function(String)?` | `null` |
| `onComplete` | `void Function(String)?` | `null` |
| `length` | `int?` | `4` |
| `placeholder` | `String?` | `'○'` |
| `gap` | `String?` | `'sm'` |
| `disabled` | `bool?` | `false` |
| `readOnly` | `bool?` | `false` |
| `mask` | `bool?` | `false` |
| `error` | `bool?` | `false` |
| `manageFocus` | `bool?` | `true` |
| `type` | `PinInputType?` | `PinInputType.alphanumeric` |
| `size` | `String?` | `'sm'` |
| `radius` | `BorderRadiusGeometry` | `inputDefaultRadius` |

## Example

```dart
PinInput.filled(
  value: 'value',
  defaultValue: 'value',
  onChanged: () {},
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` PinInput](/basic/inputs/PinInput/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
