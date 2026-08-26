# GridCol

`GridCol` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`GridCol`](https://mantine.dev/core/grid/).

## Constructors

- `GridCol(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `span` | `int?` | `12` |
| `spanFit` | `GridColFit?` | `null` |
| `offset` | `int?` | `0` |
| `order` | `int?` | `null` |
| `responsiveSpan` | `MantleResponsive<int>?` | `null` |

## Example

```dart
GridCol(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` GridCol](/basic/layout/GridCol/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Grid](/widgets/layout/Grid/)
