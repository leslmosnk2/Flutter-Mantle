# TableCaption

`TableCaption` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`TableCaption`](https://mantine.dev/core/table-caption/).

## Constructors

- `TableCaption(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |

## Example

```dart
TableCaption(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` TableCaption](/basic/typography/TableCaption/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [MTable](/widgets/typography/MTable/)
- [TableThead](/widgets/typography/TableThead/)
- [TableTbody](/widgets/typography/TableTbody/)
- [TableTfoot](/widgets/typography/TableTfoot/)
- [TableTr](/widgets/typography/TableTr/)
- [TableTh](/widgets/typography/TableTh/)
- [TableTd](/widgets/typography/TableTd/)
- [TableScrollContainer](/widgets/typography/TableScrollContainer/)
