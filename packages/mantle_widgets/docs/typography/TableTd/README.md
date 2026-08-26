# TableTd

`TableTd` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`TableTd`](https://mantine.dev/core/table-td/).

## Constructors

- `TableTd(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |

## Example

```dart
TableTd(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` TableTd](/basic/typography/TableTd/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [MTable](/widgets/typography/MTable/)
- [TableThead](/widgets/typography/TableThead/)
- [TableTbody](/widgets/typography/TableTbody/)
- [TableTfoot](/widgets/typography/TableTfoot/)
- [TableTr](/widgets/typography/TableTr/)
- [TableTh](/widgets/typography/TableTh/)
- [TableCaption](/widgets/typography/TableCaption/)
- [TableScrollContainer](/widgets/typography/TableScrollContainer/)
