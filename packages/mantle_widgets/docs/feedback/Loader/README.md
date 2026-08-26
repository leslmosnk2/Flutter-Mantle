# Loader

Oval, bars, or dots spinner. The unnamed constructor (`default`) matches Mantine's oval type. Named constructors select [LoaderVariant.oval], [LoaderVariant.bars], or [LoaderVariant.dots].

Inspired by Mantine [`Loader`](https://mantine.dev/core/loader/).

## Constructors

- `Loader(...)` (unnamed / `default`)
- `Loader.oval(...)` (oval)
- `Loader.bars(...)` (bars)
- `Loader.dots(...)` (dots)

## Properties

| Prop | Type | Default |
|---|---|---|
| `size` | `String?` | `'md'` |
| `color` | `String?` | `null` |
| `child` | `Widget?` | `null` |

## Example

```dart
Loader(
  size: 'md',
  color: 'value',
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Loader](/basic/feedback/Loader/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
