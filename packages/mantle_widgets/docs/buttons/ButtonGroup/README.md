# ButtonGroup

Mantine `Button.Group`.

Inspired by Mantine [`ButtonGroup`](https://mantine.dev/core/button-group/).

## Constructors

- `ButtonGroup(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `orientation` | `Axis?` | `Axis.horizontal` |
| `borderWidth` | `double?` | `1` |

## Example

```dart
ButtonGroup(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` ButtonGroup](/basic/buttons/ButtonGroup/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
