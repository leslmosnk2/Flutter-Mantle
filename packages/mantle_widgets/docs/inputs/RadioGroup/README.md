# RadioGroup

`RadioGroup` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`RadioGroup`](https://mantine.dev/core/radio-group/).

## Constructors

- `RadioGroup(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `value` | `String?` | `null` |
| `defaultValue` | `String?` | `null` |
| `onChanged` | `void Function(String)?` | `null` |
| `label` | `Widget?` | `null` |
| `description` | `Widget?` | `null` |
| `error` | `Widget?` | `null` |
| `disabled` | `bool?` | `false` |
| `readOnly` | `bool?` | `false` |
| `size` | `String?` | `'sm'` |

## Example

```dart
RadioGroup(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` RadioGroup](/basic/inputs/RadioGroup/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Radio](/widgets/inputs/Radio/)
