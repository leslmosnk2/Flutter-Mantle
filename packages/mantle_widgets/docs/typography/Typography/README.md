# Typography

(Mantine `Typography`, formerly `TypographyStylesProvider`).

Inspired by Mantine [`Typography`](https://mantine.dev/core/typography/).

## Constructors

- `Typography(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |

## Example

```dart
Typography(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Typography](/basic/typography/Typography/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
