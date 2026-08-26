# SimpleGrid

Equal-width columns.

Inspired by Mantine [`SimpleGrid`](https://mantine.dev/core/simple-grid/).

## Constructors

- `SimpleGrid(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `cols` | `int?` | `1` |
| `spacing` | `String?` | `'md'` |
| `verticalSpacing` | `String?` | `null` |
| `responsiveCols` | `MantleResponsive<int>?` | `null` |

## Example

```dart
SimpleGrid(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` SimpleGrid](/basic/layout/SimpleGrid/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
