# NumberFormatter

Formats a number as text.

Inspired by Mantine [`NumberFormatter`](https://mantine.dev/core/number-formatter/).

## Constructors

- `NumberFormatter(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `num?` | `null` |
| `allowNegative` | `bool?` | `true` |
| `decimalScale` | `int?` | `null` |
| `decimalSeparator` | `String?` | `'.'` |
| `fixedDecimalScale` | `bool?` | `false` |
| `prefix` | `String?` | `''` |
| `suffix` | `String?` | `''` |
| `thousandsGroupStyle` | `ThousandsGroupStyle?` | `ThousandsGroupStyle.thousand` |
| `thousandSeparator` | `String?` | `null` |

## Example

```dart
NumberFormatter(
  value: /* … */,
  allowNegative: false,
  decimalScale: 0,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` NumberFormatter](/basic/data-display/NumberFormatter/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
