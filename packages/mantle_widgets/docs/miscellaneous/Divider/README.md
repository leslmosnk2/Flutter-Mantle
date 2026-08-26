# Divider

A horizontal or vertical rule.

Inspired by Mantine [`Divider`](https://mantine.dev/core/divider/).

## Constructors

- `Divider(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `orientation` | `Axis?` | `Axis.horizontal` |
| `label` | `Widget?` | `null` |
| `labelPosition` | `DividerLabelPosition?` | `DividerLabelPosition.center` |
| `size` | `String?` | `'xs'` |
| `color` | `String?` | `null` |
| `lineVariant` | `DividerLineVariant?` | `DividerLineVariant.solid` |

## Example

```dart
Divider(
  orientation: /* … */,
  label: const Text('Label'),
  labelPosition: /* … */,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Divider](/basic/miscellaneous/Divider/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
