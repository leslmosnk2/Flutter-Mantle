# TreeNode

(Mantine internal `Tree.Node`).

Inspired by Mantine [`TreeNode`](https://mantine.dev/core/tree-node/).

## Constructors

- `TreeNode(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `value` | `String` | required |
| `label` | `Widget` | required |
| `children` | `List<Widget>?` | `null` |
| `expanded` | `bool?` | `null` |
| `selected` | `bool?` | `null` |
| `level` | `int?` | `1` |
| `onTap` | `VoidCallback?` | `null` |

## Example

```dart
TreeNode(
  value: 'value',
  label: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` TreeNode](/basic/navigation/TreeNode/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Tree](/widgets/navigation/Tree/)
