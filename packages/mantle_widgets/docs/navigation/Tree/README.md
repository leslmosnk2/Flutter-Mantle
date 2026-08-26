# Tree

A nested, expandable node list.

Inspired by Mantine [`Tree`](https://mantine.dev/core/tree/).

## Constructors

- `Tree(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `data` | `List<TreeNodeData>` | required |
| `expanded` | `List<String>?` | `null` |
| `selected` | `List<String>?` | `null` |
| `onExpandedChange` | `TreeOnExpandedChange?` | `null` |
| `onSelected` | `TreeOnSelected?` | `null` |
| `expandOnClick` | `bool?` | `true` |
| `selectOnClick` | `bool?` | `false` |
| `levelOffset` | `String?` | `'lg'` |

## Example

```dart
Tree(
  data: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Tree](/basic/navigation/Tree/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [TreeNode](/widgets/navigation/TreeNode/)
