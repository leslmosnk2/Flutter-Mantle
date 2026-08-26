# Scroller

A horizontal strip with controls.

Inspired by Mantine [`Scroller`](https://mantine.dev/core/scroller/).

## Constructors

- `Scroller(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `scrollAmount` | `double?` | `200` |
| `draggable` | `bool?` | `true` |
| `controlSize` | `double?` | `50` |
| `startControlIcon` | `Widget?` | `null` |
| `endControlIcon` | `Widget?` | `null` |
| `showStartControl` | `bool?` | `false` |
| `showEndControl` | `bool?` | `false` |

## Example

```dart
Scroller(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Scroller](/basic/miscellaneous/Scroller/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
