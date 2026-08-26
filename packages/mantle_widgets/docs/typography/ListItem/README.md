# ListItem

`ListItem` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`ListItem`](https://mantine.dev/core/list-item/).

## Constructors

- `ListItem(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `icon` | `Widget?` | `null` |

## Example

```dart
ListItem(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` ListItem](/basic/typography/ListItem/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [MList](/widgets/typography/MList/)
