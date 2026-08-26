# OverflowList

Hide items that do not fit.

Inspired by Mantine [`OverflowList`](https://mantine.dev/core/overflow-list/).

## Constructors

- `OverflowList(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `renderOverflow` | `OverflowListOverflowBuilder` | required |
| `gap` | `double?` | `4` |
| `maxVisibleItems` | `int?` | `null` |
| `collapseFrom` | `OverflowCollapseFrom?` | `OverflowCollapseFrom.end` |

## Example

```dart
OverflowList(
  children: const [],
  renderOverflow: /* … */,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` OverflowList](/basic/data-display/OverflowList/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
