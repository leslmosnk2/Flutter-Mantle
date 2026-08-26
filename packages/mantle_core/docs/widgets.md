# Widgets

`mantle_core` ships two small widgets. Component UIs live in
[`mantle_widgets`](/widgets/).

## MantleIcon

Renders an `IconTokenBuilder` from `theme.icons`. Size and color fall back
to the ambient `IconTheme`, then to the Mantle foreground (`black` in light
scheme, `white` in dark) and size `24`.

```dart
MantleIcon(
  icon: MantleTheme.of(context).icons['check'],
  size: 18,
  color: MantleTheme.of(context).colors['blue'][6],
)
```

## BreakpointBuilder

Rebuilds when the viewport crosses a token in `theme.breakpoints`. The
builder receives the largest breakpoint whose minimum width is `≤` the
current width.

```dart
BreakpointBuilder(
  builder: (context, size) {
    if (size == 'xs' || size == 'sm') {
      return const MobileNav();
    }
    return const DesktopNav();
  },
)
```
