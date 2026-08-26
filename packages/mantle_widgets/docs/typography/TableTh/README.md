# TableTh

`TableTh` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`TableTh`](https://mantine.dev/core/table-th/).

## Constructors

- `TableTh(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |

## Example

```dart
TableTh(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` TableTh](/basic/typography/TableTh/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [MTable](/widgets/typography/MTable/)
- [TableThead](/widgets/typography/TableThead/)
- [TableTbody](/widgets/typography/TableTbody/)
- [TableTfoot](/widgets/typography/TableTfoot/)
- [TableTr](/widgets/typography/TableTr/)
- [TableTd](/widgets/typography/TableTd/)
- [TableCaption](/widgets/typography/TableCaption/)
- [TableScrollContainer](/widgets/typography/TableScrollContainer/)
