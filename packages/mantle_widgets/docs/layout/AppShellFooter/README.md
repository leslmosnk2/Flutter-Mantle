# AppShellFooter

`AppShellFooter` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`AppShellFooter`](https://mantine.dev/core/app-shell/).

## Constructors

- `AppShellFooter(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `withBorder` | `bool?` | `null` |

## Example

```dart
AppShellFooter(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` AppShellFooter](/basic/layout/AppShellFooter/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [AppShell](/widgets/layout/AppShell/)
- [AppShellHeader](/widgets/layout/AppShellHeader/)
- [AppShellNavbar](/widgets/layout/AppShellNavbar/)
- [AppShellAside](/widgets/layout/AppShellAside/)
- [AppShellMain](/widgets/layout/AppShellMain/)
- [AppShellSection](/widgets/layout/AppShellSection/)
