# Architecture

Mantle widgets are **contracts**. The theme owns the build.

## Layers

1. **Annotation** — `@MantleComponent` on an abstract class describes
   variants, properties, style, state, and slots.
2. **Codegen** — [`mantle_gen`](/gen/components) emits `Button`,
   `ButtonDelegate`, `ButtonStyle`, `ButtonContext`, and slot wrappers.
3. **Delegate** — a theme package implements `ButtonDelegate`. Slot methods
   receive `ButtonContext` and child slot builders.
4. **Lookup** — `Button.build` asks `MantleTheme` for a `ButtonDelegate`.
   Missing delegates throw `MissingDelegateError`.

Apps import widgets from this package and a theme from `mantle_basic` (or a
custom `MantleTheme`). They do not subclass the generated widget to change
look.

## Slots

Slot methods on the contract become methods on the delegate. Parameters
whose types are other slots are typed builders — call them to compose
children:

```dart
@override
Widget root(
  ButtonContext context, {
  required ButtonInner inner,
  required ButtonLoader loader,
}) {
  return Stack(
    children: [
      inner(context),
      ?loader(context),
    ],
  );
}
```

The contract is the composition tree. A different theme can replace chrome
without changing call sites.

## Variants

Mantine `variant="filled"` maps to a named constructor: `Button.filled()`.
The unnamed constructor is the `default` variant. Variant-only properties
(`gradient` on filled) exist only on that factory.

## Style vs state vs props

| Piece | When it exists | Example |
|---|---|---|
| Widget props | Call site | `child`, `onPressed`, `size` |
| `ButtonStyle` | Resolved visuals for the delegate | `background`, `height`, `textStyle` |
| `ButtonState` | Derived flags | `disabled`, `hasLeftSection` |
| `ButtonContext` | Everything the delegate needs | props + style + state + `BuildContext` |

`ComponentDefaults` on the theme can supply default `ButtonStyle` values
(Mantine's `theme.components.Button`).

## Swapping a single component

```dart
MantleProvider(
  theme: BasicTheme(
    components: DelegateRegistry({
      ButtonDelegate: MyButtonDelegate(),
    }),
  ),
  child: app,
)
```

`BasicTheme` merges the given registry **over** its baseline, so every other
delegate stays in place. For a one-off subtree, use `MantleOverride`.

## Related

- [Writing annotations](/annotations/component)
- [What codegen emits](/gen/components)
- [Delegate lookup](/core/components)
- [BasicTheme](/basic/theme)
