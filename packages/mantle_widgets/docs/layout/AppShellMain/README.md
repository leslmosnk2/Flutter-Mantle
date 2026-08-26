# AppShellMain

`AppShellMain` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`AppShellMain`](https://mantine.dev/core/app-shell/).

## Constructors

- `AppShellMain(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |

## Example

```dart
AppShellMain(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` AppShellMain](/basic/layout/AppShellMain/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [AppShell](/widgets/layout/AppShell/)
- [AppShellHeader](/widgets/layout/AppShellHeader/)
- [AppShellNavbar](/widgets/layout/AppShellNavbar/)
- [AppShellAside](/widgets/layout/AppShellAside/)
- [AppShellFooter](/widgets/layout/AppShellFooter/)
- [AppShellSection](/widgets/layout/AppShellSection/)
