# NavLink

A navigation row with nested links.

Inspired by Mantine [`NavLink`](https://mantine.dev/core/nav-link/).

## Constructors

- `NavLink(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `label` | `Widget` | required |
| `description` | `Widget?` | `null` |
| `leftSection` | `Widget?` | `null` |
| `rightSection` | `Widget?` | `null` |
| `children` | `List<Widget>?` | `null` |
| `active` | `bool?` | `false` |
| `opened` | `bool?` | `false` |
| `disabled` | `bool?` | `false` |
| `onTap` | `NavLinkOnTap?` | `null` |
| `onOpenedChange` | `NavLinkOnOpenedChange?` | `null` |
| `childrenOffset` | `String?` | `'lg'` |
| `color` | `String?` | `null` |

## Example

```dart
NavLink(
  label: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` NavLink](/basic/navigation/NavLink/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
