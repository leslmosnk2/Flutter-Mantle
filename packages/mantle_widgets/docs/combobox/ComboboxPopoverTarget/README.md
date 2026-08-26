# ComboboxPopoverTarget

`ComboboxPopoverTarget` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`ComboboxPopoverTarget`](https://mantine.dev/core/combobox-popover-target/).

## Constructors

- `ComboboxPopoverTarget(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |

## Example

```dart
ComboboxPopoverTarget(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` ComboboxPopoverTarget](/basic/combobox/ComboboxPopoverTarget/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [ComboboxPopover](/widgets/combobox/ComboboxPopover/)
