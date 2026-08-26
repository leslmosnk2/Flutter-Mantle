# Delegates and defaults

Widgets in `mantle_widgets` do not paint themselves. They look up a
**delegate** on the theme and call its slot methods. The theme owns the
build.

## ComponentDelegate

Marker base for every component implementation. Delegates must be immutable
and cheap — they are looked up on every build of their widget.

```dart
@immutable
abstract class ComponentDelegate {
  const ComponentDelegate();
}
```

Codegen in [`mantle_gen`](/gen/) emits a typed subclass per contract
(`ButtonDelegate`, `TextInputDelegate`, …) with one method per slot.

## DelegateRegistry

Typed map from **contract type** to implementation. Keys are always the
abstract delegate type, never a concrete class:

```dart
const DelegateRegistry({
  ButtonDelegate: BasicButtonDelegate(),
  TextInputDelegate: BasicTextInputDelegate(),
});

registry.maybeGet<ButtonDelegate>();
registry.mergeWith(other); // this instance wins on overlap
```

## Resolution

When a generated widget builds, it asks the theme for its delegate. Lookup
order:

1. `theme.components`
2. `theme.baseline.components` (set by `MantleProvider.baseline`)
3. throw `MissingDelegateError`

```
MissingDelegateError: no ButtonDelegate registered.
  Active theme: "MyTheme"
  Baseline: none (MantleProvider.baseline was null)
Fix: register a ButtonDelegate in the theme, or provide a baseline:
  MantleProvider(theme: ..., baseline: BasicTheme(), ...)
```

Passing `baseline: BasicTheme()` is the usual way to ship a custom theme
that only overrides a few delegates.

## ComponentDefaults

Per-component default **style** values, keyed by generated style type
(Mantine's `theme.components`):

```dart
ComponentDefaults({
  ButtonStyle: ButtonStyle(height: 40, radius: BorderRadius.circular(8)),
});

theme.componentDefaults.styleFor<ButtonStyle>();
```

Until generated styles implement field-wise merge, overlapping keys are
last-write-wins (`mergeWith` lets **this** instance take precedence).

## Writing a delegate

1. Annotate a contract in `mantle_widgets` (or your package) with
   `@MantleComponent`.
2. Run `build_runner` — you get `FooDelegate` with slot methods.
3. Implement those methods and register the class on the theme.

See [mantle_basic](/basic/) for the bundled implementations, and
[mantle_gen](/gen/components) for what the generator emits.
