# MNotification

The visual card only, not a toast queue.

Inspired by Mantine [`MNotification`](https://mantine.dev/core/notification/).

## Constructors

- `MNotification(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `title` | `Widget?` | `null` |
| `message` | `Widget?` | `null` |
| `color` | `String?` | `null` |
| `icon` | `Widget?` | `null` |
| `withClose` | `bool?` | `true` |
| `onClose` | `VoidCallback?` | `null` |
| `loading` | `bool?` | `false` |
| `withBorder` | `bool?` | `false` |
| `radius` | `BorderRadiusGeometry` | `feedbackDefaultRadius` |

## Example

```dart
MNotification(
  title: const Text('Label'),
  message: /* … */,
  color: 'value',
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MNotification](/basic/feedback/MNotification/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
