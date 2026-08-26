# Accordion

Expandable item list.

Inspired by Mantine [`Accordion`](https://mantine.dev/core/accordion/).

## Constructors

- `Accordion(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `value` | `List<String>?` | `null` |
| `defaultValue` | `List<String>?` | `null` |
| `onChange` | `AccordionOnChange?` | `null` |
| `multiple` | `bool?` | `false` |
| `chevronPosition` | `AccordionChevronPosition?` | `AccordionChevronPosition.right` |
| `disableChevronRotation` | `bool?` | `false` |
| `chevron` | `Widget?` | `null` |
| `appearance` | `String?` | `'default'` |
| `radius` | `BorderRadiusGeometry` | `dataDisplayDefaultRadius` |

## Example

```dart
Accordion(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Accordion](/basic/data-display/Accordion/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [AccordionItem](/widgets/data-display/AccordionItem/)
