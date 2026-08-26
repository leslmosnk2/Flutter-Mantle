# TableScrollContainer

`TableScrollContainer` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`TableScrollContainer`](https://mantine.dev/core/table-scroll-container/).

## Constructors

- `TableScrollContainer(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `minWidth` | `double` | required |
| `maxHeight` | `double?` | `null` |

## Example

```dart
TableScrollContainer(
  child: const Text('Label'),
  minWidth: 0,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` TableScrollContainer](/basic/typography/TableScrollContainer/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [MTable](/widgets/typography/MTable/)
- [TableThead](/widgets/typography/TableThead/)
- [TableTbody](/widgets/typography/TableTbody/)
- [TableTfoot](/widgets/typography/TableTfoot/)
- [TableTr](/widgets/typography/TableTr/)
- [TableTh](/widgets/typography/TableTh/)
- [TableTd](/widgets/typography/TableTd/)
- [TableCaption](/widgets/typography/TableCaption/)
