# Tooltip

Label on hover or long-press.

Inspired by Mantine [`Tooltip`](https://mantine.dev/core/tooltip/).

## Constructors

- `Tooltip(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `label` | `String` | required |
| `opened` | `bool?` | `null` |
| `disabled` | `bool?` | `false` |
| `position` | `OverlayPlacement?` | `OverlayPlacement.top` |

## Example

```dart
Tooltip(
  child: const Text('Label'),
  label: 'value',
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Tooltip](/basic/overlays/Tooltip/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
