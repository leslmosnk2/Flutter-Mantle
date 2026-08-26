# TabsList

`TabsList` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`TabsList`](https://mantine.dev/core/tabs-list/).

## Constructors

- `TabsList(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `grow` | `bool?` | `false` |
| `justify` | `MainAxisAlignment?` | `MainAxisAlignment.start` |

## Example

```dart
TabsList(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` TabsList](/basic/navigation/TabsList/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Tabs](/widgets/navigation/Tabs/)
- [TabsTab](/widgets/navigation/TabsTab/)
- [TabsPanel](/widgets/navigation/TabsPanel/)
