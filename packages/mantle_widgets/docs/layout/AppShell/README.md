# AppShell

Header / navbar / main / aside / footer.

Inspired by Mantine [`AppShell`](https://mantine.dev/core/app-shell/).

## Constructors

- `AppShell(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `header` | `AppShellHeaderConfig?` | `null` |
| `navbar` | `AppShellNavbarConfig?` | `null` |
| `aside` | `AppShellAsideConfig?` | `null` |
| `footer` | `AppShellFooterConfig?` | `null` |
| `padding` | `String?` | `null` |
| `withBorder` | `bool?` | `true` |
| `layout` | `AppShellLayout?` | `AppShellLayout.defaults` |
| `disabled` | `bool?` | `false` |

## Example

```dart
AppShell(
  padding: 'md',
  header: const AppShellHeaderConfig(height: 60),
  navbar: const AppShellNavbarConfig(width: 280, breakpoint: 'sm'),
  children: const [
    AppShellHeader(child: Text('Logo')),
    AppShellNavbar(child: Text('Nav')),
    AppShellMain(child: Text('Main')),
  ],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` AppShell](/basic/layout/AppShell/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [AppShellHeader](/widgets/layout/AppShellHeader/)
- [AppShellNavbar](/widgets/layout/AppShellNavbar/)
- [AppShellAside](/widgets/layout/AppShellAside/)
- [AppShellFooter](/widgets/layout/AppShellFooter/)
- [AppShellMain](/widgets/layout/AppShellMain/)
- [AppShellSection](/widgets/layout/AppShellSection/)
