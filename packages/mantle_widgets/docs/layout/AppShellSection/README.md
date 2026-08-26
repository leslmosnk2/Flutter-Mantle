# AppShellSection

`AppShellSection` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`AppShellSection`](https://mantine.dev/core/app-shell/).

## Constructors

- `AppShellSection(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `grow` | `bool?` | `false` |

## Example

```dart
AppShellSection(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` AppShellSection](/basic/layout/AppShellSection/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [AppShell](/widgets/layout/AppShell/)
- [AppShellHeader](/widgets/layout/AppShellHeader/)
- [AppShellNavbar](/widgets/layout/AppShellNavbar/)
- [AppShellAside](/widgets/layout/AppShellAside/)
- [AppShellFooter](/widgets/layout/AppShellFooter/)
- [AppShellMain](/widgets/layout/AppShellMain/)
