# MTable

Named `MTable` because `Table` collides with `package:flutter/widgets.dart`.

Inspired by Mantine [`MTable`](https://mantine.dev/core/table/).

## Constructors

- `MTable(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>?` | `null` |
| `data` | `TableData?` | `null` |
| `withTableBorder` | `bool?` | `false` |
| `withColumnBorders` | `bool?` | `false` |
| `withRowBorders` | `bool?` | `true` |
| `striped` | `bool?` | `false` |
| `stripedFrom` | `TableStriped?` | `null` |
| `highlightOnHover` | `bool?` | `false` |
| `horizontalSpacing` | `String?` | `'xs'` |
| `verticalSpacing` | `String?` | `'xs'` |
| `stickyHeader` | `bool?` | `false` |
| `captionSide` | `TableCaptionSide?` | `TableCaptionSide.bottom` |
| `tabularNums` | `bool?` | `false` |
| `borderColor` | `String?` | `null` |
| `stripedColor` | `String?` | `null` |
| `highlightOnHoverColor` | `String?` | `null` |

## Example

```dart
MTable(
  children: const [],
  data: /* … */,
  withTableBorder: false,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` MTable](/basic/typography/MTable/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [TableThead](/widgets/typography/TableThead/)
- [TableTbody](/widgets/typography/TableTbody/)
- [TableTfoot](/widgets/typography/TableTfoot/)
- [TableTr](/widgets/typography/TableTr/)
- [TableTh](/widgets/typography/TableTh/)
- [TableTd](/widgets/typography/TableTd/)
- [TableCaption](/widgets/typography/TableCaption/)
- [TableScrollContainer](/widgets/typography/TableScrollContainer/)
