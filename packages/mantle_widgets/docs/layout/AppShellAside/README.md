# AppShellAside

`AppShellAside` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`AppShellAside`](https://mantine.dev/core/app-shell/).

## Constructors

- `AppShellAside(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `withBorder` | `bool?` | `null` |

## Example

```dart
AppShellAside(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` AppShellAside](/basic/layout/AppShellAside/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [AppShell](/widgets/layout/AppShell/)
- [AppShellHeader](/widgets/layout/AppShellHeader/)
- [AppShellNavbar](/widgets/layout/AppShellNavbar/)
- [AppShellFooter](/widgets/layout/AppShellFooter/)
- [AppShellMain](/widgets/layout/AppShellMain/)
- [AppShellSection](/widgets/layout/AppShellSection/)
