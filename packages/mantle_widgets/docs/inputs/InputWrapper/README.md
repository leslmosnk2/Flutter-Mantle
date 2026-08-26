# InputWrapper

`InputWrapper` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`InputWrapper`](https://mantine.dev/core/input/).

## Constructors

- `InputWrapper(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `label` | `Widget?` | `null` |
| `description` | `Widget?` | `null` |
| `error` | `Widget?` | `null` |
| `required` | `bool?` | `false` |
| `withAsterisk` | `bool?` | `null` |
| `size` | `String?` | `'sm'` |

## Example

```dart
InputWrapper(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` InputWrapper](/basic/inputs/InputWrapper/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Input](/widgets/inputs/Input/)
