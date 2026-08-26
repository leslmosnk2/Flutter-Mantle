# Breadcrumbs

A trail of links with separators.

Inspired by Mantine [`Breadcrumbs`](https://mantine.dev/core/breadcrumbs/).

## Constructors

- `Breadcrumbs(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `separator` | `Widget?` | `null` |
| `separatorMargin` | `String?` | `'xs'` |

## Example

```dart
Breadcrumbs(
  children: const [],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Breadcrumbs](/basic/navigation/Breadcrumbs/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
