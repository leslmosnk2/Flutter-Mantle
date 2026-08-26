# Delegates

Every generated widget looks up `{Name}Delegate` on the theme. This package
implements those types as `Basic{Name}Delegate` and registers them on
`BasicTheme`.

## Paint, not API

Delegates decide layout, color, hover, and animation. They read
`FooContext` (props + resolved style + state) and compose **slots** defined
by the contract. Call sites never change when you swap a delegate.

Variant colors go through `theme.variantColorResolver` (`filled`, `light`,
`outline`, `subtle`, `transparent`, `white`, …) instead of hard-coded
fills.

## Replace one widget

```dart
class QuietButtonDelegate extends ButtonDelegate {
  const QuietButtonDelegate();

  @override
  Widget root(
    ButtonContext context, {
    required ButtonInner inner,
    required ButtonLoader loader,
  }) {
    return GestureDetector(
      onTap: context.state.disabled ? null : context.onPressed,
      child: inner(context),
    );
  }

  // remaining slots…
}

MantleProvider(
  theme: BasicTheme(
    components: DelegateRegistry({
      ButtonDelegate: QuietButtonDelegate(),
    }),
  ),
  child: app,
)
```

Or patch a subtree with `MantleOverride(delegates: …)`.

## Per-widget pages

Each page in this package names the delegate class, the source file, and
links to the [widgets](/widgets/) API for constructors and props.
