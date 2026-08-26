# CloseButton

An ActionIcon-like X control.

Inspired by Mantine [`CloseButton`](https://mantine.dev/core/close-button/).

## Constructors

- `CloseButton(...)` (unnamed / `default`)
- `CloseButton.subtle(...)` (subtle)
- `CloseButton.transparent(...)` (transparent)

## Properties

| Prop | Type | Default |
|---|---|---|
| `onPressed` | `VoidCallback` | required |
| `disabled` | `bool?` | `false` |
| `radius` | `BorderRadiusGeometry` | `_getDefaultRadius` |
| `size` | `String?` | `null` |
| `iconSize` | `double?` | `null` |
| `icon` | `Widget?` | `null` |
| `child` | `Widget?` | `null` |
| `semanticLabel` | `String?` | `null` |

## Example

```dart
CloseButton(
  onPressed: () {},
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` CloseButton](/basic/buttons/CloseButton/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
