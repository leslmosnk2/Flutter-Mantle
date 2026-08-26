# Affix

Pins `child` to a parent corner.

Inspired by Mantine [`Affix`](https://mantine.dev/core/affix/).

## Constructors

- `Affix(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `top` | `double?` | `null` |
| `left` | `double?` | `null` |
| `bottom` | `double?` | `null` |
| `right` | `double?` | `null` |

## Example

```dart
Affix(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Affix](/basic/overlays/Affix/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
