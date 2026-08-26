# Fieldset

`Fieldset` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`Fieldset`](https://mantine.dev/core/fieldset/).

## Constructors

- `Fieldset(...)` (unnamed / `default`)
- `Fieldset.filled(...)` (filled)
- `Fieldset.unstyled(...)` (unstyled)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `legend` | `Widget?` | `null` |
| `disabled` | `bool?` | `false` |
| `radius` | `BorderRadiusGeometry` | `inputDefaultRadius` |

## Example

```dart
Fieldset.filled(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Fieldset](/basic/inputs/Fieldset/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
