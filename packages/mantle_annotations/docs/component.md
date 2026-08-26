# @MantleComponent

Describes a widget **contract**: the public API, variants, resolved style,
derived state, and composition slots. [`mantle_gen`](/gen/components)
turns the annotated class into a `StatelessWidget`, delegate, and supporting
types.

Contracts live in [`mantle_widgets`](/widgets/). Implementations live in a
theme package such as [`mantle_basic`](/basic/).

## Contract

```dart
@MantleComponent(
  name: 'Button',
  variants: [
    MantleVariant('default'),
    MantleVariant(
      'filled',
      properties: [
        MantleProperty<bool>('autoContrast', defaultValue: false),
        MantleProperty<Gradient>('gradient', nullable: true),
      ],
    ),
    MantleVariant('light'),
  ],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<VoidCallback>('onPressed'),
    MantleProperty<bool>('disabled', defaultValue: false),
  ],
)
abstract class MantleButtonContract {
  @MantleComponent.style(
    properties: [
      MantleProperty<Color>('color'),
      MantleProperty<Color>('background'),
    ],
  )
  ButtonStyle get style;

  @MantleComponent.state(
    properties: [
      MantleProperty<bool>('disabled', defaultValue: false),
    ],
  )
  ButtonState get state;

  @MantleComponent.slot()
  Widget root(
    ButtonContext context, {
    required ButtonInner inner,
    required ButtonLoader loader,
  });
}
```

## Factories

| Constructor | Role |
|---|---|
| `MantleComponent(...)` | Top-level contract: `name`, `variants`, shared `properties` |
| `MantleComponent.style(...)` | Resolved visual values passed to the delegate |
| `MantleComponent.state(...)` | Derived flags (disabled, loading, section presence) |
| `MantleComponent.slot(...)` | A method on the delegate; parameters named after other slots become child builders |

`name` is the public widget prefix (`Button` → `Button`, `ButtonDelegate`,
`ButtonStyle`, …).

## MantleVariant

A named factory on the generated widget. `name: 'default'` becomes the
unnamed constructor; every other name becomes `Button.filled()`, etc.

Variant-only `properties` are added to that factory (and to
`ButtonContext`) but not to the others.

## MantleProperty

| Argument | Default | Meaning |
|---|---|---|
| `name` | required | Generated parameter / field / context value |
| `nullable` | `false` | `T?` and optional. When `false` with no default, the constructor takes `required this.name` |
| `defaultValue` | `null` | Compile-time default when the caller omits the argument |
| `defaultBuilder` | `null` | Top-level `(BuildContext) → T` used when a context is available |

```dart
MantleProperty<BorderRadiusGeometry>(
  'radius',
  defaultBuilder: _getDefaultRadius,
)
```

## Generated surface

For `name: 'Button'` the builder emits (among other types):

- `Button` widget with one constructor per variant
- `ButtonDelegate` abstract class — implement this in the theme
- `ButtonStyle`, `ButtonState`, `ButtonContext`
- Slot wrappers (`ButtonRoot`, `ButtonInner`, …)

See [What the component generator emits](/gen/components).
