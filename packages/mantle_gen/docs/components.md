# Component generator

Reads `@MantleComponent` contracts and emits the public widget plus the
types a theme delegate implements.

## Pipeline

1. Parse the annotated class, its `@MantleComponent.style` /
   `.state` / `.slot()` members, and `MantleVariant` / `MantleProperty`
   lists.
2. Build a `ComponentSpec` (names, properties, slots, root slot).
3. Render `component.txt`.

## Emitted types

For `@MantleComponent(name: 'Button', …)`:

| Type | Role |
|---|---|
| `ButtonVariant` | Enum of factories (`defaults`, `filled`, `light`, …) |
| `ButtonStyle` | Resolved visuals; `copyWith` / `mergeWith` |
| `ButtonState` | Derived flags |
| `ButtonContext` | `BuildContext` + style + state + every public prop |
| `ButtonRoot`, `ButtonInner`, … | Slot wrappers: `slot(context)` calls the delegate method |
| `ButtonDelegate` | Abstract `ComponentDelegate` — **implement this** |
| `Button` | `StatelessWidget` with one constructor per variant |

The unnamed constructor is the `default` variant (emitted as
`ButtonVariant.defaults` because `default` is reserved).

## Widget build

The generated `build` method:

1. Looks up `ButtonDelegate` on `MantleTheme.of(context)`.
2. Resolves defaults and `defaultBuilder` properties.
3. Constructs `ButtonStyle` / `ButtonState` / `ButtonContext`.
4. Calls `delegate.root(...)`, passing the other slots as typed builders.

The contract class (`MantleButtonContract`) is the source of truth. It is
not instantiated at runtime.

## Implementing a delegate

```dart
class BasicButtonDelegate extends ButtonDelegate {
  const BasicButtonDelegate();

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

  // … remaining slots
}
```

Register it on the theme:

```dart
DelegateRegistry({
  ButtonDelegate: BasicButtonDelegate(),
})
```

See [`mantle_basic`](/basic/) for complete implementations.
