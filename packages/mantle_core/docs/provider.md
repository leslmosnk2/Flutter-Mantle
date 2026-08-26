# Provider and overrides

## MantleProvider

Provides a `MantleTheme` (and color scheme) to descendants. Nested providers
**merge** with their ancestor: the inner theme wins field-by-field, empty
token groups inherit.

```dart
MantleProvider(
  theme: BasicTheme(),
  baseline: BasicTheme(),          // terminal delegate fallback (root only)
  animation: AnimationStyle(       // optional theme lerp
    duration: Duration(milliseconds: 200),
    curve: Curves.easeInOut,
  ),
  defaultColorScheme: MantleColorScheme.light,
  forceColorScheme: null,          // ignore manager + default when set
  colorSchemeManager: null,        // persist user preference
  env: MantleEnvironment.standard, // .test → zero-duration transitions
  onEnd: () {},                    // theme animation completed
  child: app,
)
```

Only the **root** provider honors `baseline` and attaches the theme to
`Mantle.theme`.

### Color scheme

`MantleColorScheme` is `light`, `dark`, or `auto` (follows
`MediaQuery.platformBrightnessOf`). After resolution, descendants only ever
see `light` or `dark`.

```dart
MantleProvider.colorSchemeOf(context);
MantleProvider.maybeColorSchemeOf(context);
```

Implement `MantleColorSchemeManager` (`load` / `save`) to persist the
preference. `MemoryColorSchemeManager` is included for tests.

### Facade

```dart
Mantle.theme     // root theme; throws in debug if no root provider
Mantle.hasRoot   // whether a root provider is mounted
```

There is no `BuildContext`, so nested providers are invisible to the facade.
Prefer `MantleTheme.of` inside `build`.

## MantleOverride

Patches defaults and/or delegates without restating the whole theme:

```dart
MantleOverride(
  delegates: DelegateRegistry({
    ButtonDelegate: MyButtonDelegate(),
  }),
  componentDefaults: ComponentDefaults({
    ButtonStyle: ButtonStyle(height: 44),
  }),
  child: child,
)
```

Equivalent to a nested `MantleProvider` whose theme is a partial override.
Unset token groups inherit.

## Environment

| Value | Behavior |
|---|---|
| `MantleEnvironment.standard` | Animate theme changes when `animation` is set |
| `MantleEnvironment.test` | Force zero-duration transitions |
