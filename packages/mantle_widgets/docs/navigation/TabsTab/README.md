# TabsTab

`TabsTab` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`TabsTab`](https://mantine.dev/core/tabs-tab/).

## Constructors

- `TabsTab(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `String` | required |
| `child` | `Widget?` | `null` |
| `leftSection` | `Widget?` | `null` |
| `rightSection` | `Widget?` | `null` |
| `disabled` | `bool?` | `false` |

## Example

```dart
TabsTab(
  value: 'value',
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` TabsTab](/basic/navigation/TabsTab/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Tabs](/widgets/navigation/Tabs/)
- [TabsList](/widgets/navigation/TabsList/)
- [TabsPanel](/widgets/navigation/TabsPanel/)
