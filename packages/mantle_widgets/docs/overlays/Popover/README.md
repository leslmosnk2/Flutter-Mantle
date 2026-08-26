# Popover

Target + floating dropdown.

Inspired by Mantine [`Popover`](https://mantine.dev/core/popover/).

## Constructors

- `Popover(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `opened` | `bool?` | `false` |
| `position` | `OverlayPlacement?` | `OverlayPlacement.bottom` |
| `onClose` | `VoidCallback?` | `null` |

## Example

```dart
Popover(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Popover](/basic/overlays/Popover/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [PopoverTarget](/widgets/overlays/PopoverTarget/)
- [PopoverDropdown](/widgets/overlays/PopoverDropdown/)
