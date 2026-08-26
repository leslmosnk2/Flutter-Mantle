# EmptyState

Placeholder for no data, empty results, and first-run states.

Inspired by Mantine [`EmptyState`](https://mantine.dev/core/empty-state/).

## Constructors

- `EmptyState(...)` (unnamed / `default`)
- `EmptyState.filled(...)` (filled)
- `EmptyState.light(...)` (light)

## Properties

| Prop | Type | Default |
|---|---|---|
| `title` | `Widget?` | `null` |
| `description` | `Widget?` | `null` |
| `icon` | `Widget?` | `null` |
| `action` | `Widget?` | `null` |
| `color` | `String?` | `null` |
| `size` | `String?` | `'md'` |
| `align` | `EmptyStateAlign?` | `EmptyStateAlign.center` |
| `withIndicatorBackground` | `bool?` | `false` |

## Example

```dart
EmptyState.filled(
  title: const Text('Label'),
  description: /* … */,
  icon: /* … */,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` EmptyState](/basic/feedback/EmptyState/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
