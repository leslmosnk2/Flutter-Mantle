# Tabs

A tabbed panel container.

Inspired by Mantine [`Tabs`](https://mantine.dev/core/tabs/).

## Constructors

- `Tabs(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `value` | `String?` | `null` |
| `onChange` | `TabsOnChange?` | `null` |
| `orientation` | `Axis?` | `Axis.horizontal` |
| `placement` | `TabsPlacement?` | `TabsPlacement.left` |
| `inverted` | `bool?` | `false` |
| `keepMounted` | `bool?` | `true` |
| `color` | `String?` | `null` |
| `radius` | `String?` | `null` |

## Example

```dart
Tabs(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Tabs](/basic/navigation/Tabs/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [TabsList](/widgets/navigation/TabsList/)
- [TabsTab](/widgets/navigation/TabsTab/)
- [TabsPanel](/widgets/navigation/TabsPanel/)
