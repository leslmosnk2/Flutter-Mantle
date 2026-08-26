# MList

Named `MList` so it does not collide with Dart's `List` type.

Inspired by Mantine [`MList`](https://mantine.dev/core/list/).

## Constructors

- `MList(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `type` | `ListType?` | `ListType.unordered` |
| `withPadding` | `bool?` | `false` |
| `size` | `String?` | `'md'` |
| `icon` | `Widget?` | `null` |
| `spacing` | `String?` | `null` |
| `center` | `bool?` | `false` |

## Example

```dart
MList(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MList](/basic/typography/MList/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [ListItem](/widgets/typography/ListItem/)
