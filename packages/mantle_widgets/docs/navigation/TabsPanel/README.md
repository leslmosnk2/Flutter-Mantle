# TabsPanel

`TabsPanel` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`TabsPanel`](https://mantine.dev/core/tabs-panel/).

## Constructors

- `TabsPanel(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `String` | required |
| `child` | `Widget` | required |
| `keepMounted` | `bool?` | `null` |

## Example

```dart
TabsPanel(
  value: 'value',
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` TabsPanel](/basic/navigation/TabsPanel/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Tabs](/widgets/navigation/Tabs/)
- [TabsList](/widgets/navigation/TabsList/)
- [TabsTab](/widgets/navigation/TabsTab/)
