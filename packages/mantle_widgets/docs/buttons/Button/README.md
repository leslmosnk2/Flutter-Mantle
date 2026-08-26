# Button

`Button` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`Button`](https://mantine.dev/core/button/).

## Constructors

- `Button(...)` (unnamed / `default`)
- `Button.filled(...)` (filled) — extra: `autoContrast`, `gradient`
- `Button.light(...)` (light)
- `Button.outline(...)` (outline)
- `Button.subtle(...)` (subtle)
- `Button.transparent(...)` (transparent)
- `Button.white(...)` (white)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `onPressed` | `VoidCallback` | required |
| `disabled` | `bool?` | `false` |
| `grow` | `bool?` | `false` |
| `prefix` | `Widget?` | `null` |
| `suffix` | `Widget?` | `null` |
| `loading` | `bool` | `false` |
| `radius` | `BorderRadiusGeometry` | `_getDefaultRadius` |
| `alignment` | `AlignmentGeometry` | `Alignment.center` |
| `size` | `String?` | `null` |

Variant-only:

| Variant | Prop | Type | Default |
|---|---|---|---|
| `filled` | `autoContrast` | `bool` | `false` |
| `filled` | `gradient` | `Gradient?` | `null` |

## Example

```dart
Button.filled(
  prefix: const Text('+'),
  onPressed: () {},
  child: const Text('Save'),
)
```

## Slots

Theme delegates implement:

- `root`
- `inner`
- `loader`
- `label`
- `section`

See [`mantle_basic` Button](/basic/buttons/Button/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
