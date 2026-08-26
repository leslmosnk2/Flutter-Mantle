# AvatarGroup

`AvatarGroup` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`AvatarGroup`](https://mantine.dev/core/avatar-group/).

## Constructors

- `AvatarGroup(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `spacing` | `String?` | `'sm'` |

## Example

```dart
AvatarGroup(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` AvatarGroup](/basic/data-display/AvatarGroup/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Avatar](/widgets/data-display/Avatar/)
