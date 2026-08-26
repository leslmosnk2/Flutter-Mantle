# CardSection

`CardSection` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`CardSection`](https://mantine.dev/core/card-section/).

## Constructors

- `CardSection(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `withBorder` | `bool?` | `false` |
| `inheritPadding` | `bool?` | `false` |

## Example

```dart
CardSection(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` CardSection](/basic/data-display/CardSection/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [MCard](/widgets/data-display/MCard/)
