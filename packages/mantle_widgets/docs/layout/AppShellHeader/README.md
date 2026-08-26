# AppShellHeader

`AppShellHeader` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`AppShellHeader`](https://mantine.dev/core/app-shell/).

## Constructors

- `AppShellHeader(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `withBorder` | `bool?` | `null` |

## Example

```dart
AppShellHeader(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` AppShellHeader](/basic/layout/AppShellHeader/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [AppShell](/widgets/layout/AppShell/)
- [AppShellNavbar](/widgets/layout/AppShellNavbar/)
- [AppShellAside](/widgets/layout/AppShellAside/)
- [AppShellFooter](/widgets/layout/AppShellFooter/)
- [AppShellMain](/widgets/layout/AppShellMain/)
- [AppShellSection](/widgets/layout/AppShellSection/)
