# UnstyledButton

Button semantics, no chrome.

Inspired by Mantine [`UnstyledButton`](https://mantine.dev/core/unstyled-button/).

## Constructors

- `UnstyledButton(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |
| `onPressed` | `VoidCallback` | required |
| `disabled` | `bool?` | `false` |
| `semanticLabel` | `String?` | `null` |

## Example

```dart
UnstyledButton(
  child: const Text('Label'),
  onPressed: () {},
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` UnstyledButton](/basic/buttons/UnstyledButton/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
