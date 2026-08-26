# TableOfContents

A list of heading links.

Inspired by Mantine [`TableOfContents`](https://mantine.dev/core/table-of-contents/).

## Constructors

- `TableOfContents(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `headings` | `List<TocHeading>` | required |
| `active` | `String?` | `null` |
| `onScrollTo` | `TocOnScrollTo?` | `null` |
| `minDepthToOffset` | `int?` | `1` |
| `depthOffset` | `double?` | `20` |
| `size` | `String?` | `'md'` |
| `color` | `String?` | `null` |

## Example

```dart
TableOfContents(
  headings: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` TableOfContents](/basic/navigation/TableOfContents/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
