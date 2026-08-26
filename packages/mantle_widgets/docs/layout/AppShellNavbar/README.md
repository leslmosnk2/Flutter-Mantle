# AppShellNavbar

`AppShellNavbar` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`AppShellNavbar`](https://mantine.dev/core/app-shell/).

## Constructors

- `AppShellNavbar(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `withBorder` | `bool?` | `null` |

## Example

```dart
AppShellNavbar(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` AppShellNavbar](/basic/layout/AppShellNavbar/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [AppShell](/widgets/layout/AppShell/)
- [AppShellHeader](/widgets/layout/AppShellHeader/)
- [AppShellAside](/widgets/layout/AppShellAside/)
- [AppShellFooter](/widgets/layout/AppShellFooter/)
- [AppShellMain](/widgets/layout/AppShellMain/)
- [AppShellSection](/widgets/layout/AppShellSection/)
