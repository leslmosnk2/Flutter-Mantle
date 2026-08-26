# AccordionItem

`AccordionItem` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`AccordionItem`](https://mantine.dev/core/accordion-item/).

## Constructors

- `AccordionItem(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `String` | required |
| `label` | `Widget` | required |
| `child` | `Widget` | required |
| `icon` | `Widget?` | `null` |
| `disabled` | `bool?` | `false` |

## Example

```dart
AccordionItem(
  value: 'value',
  label: const Text('Label'),
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` AccordionItem](/basic/data-display/AccordionItem/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Accordion](/widgets/data-display/Accordion/)
