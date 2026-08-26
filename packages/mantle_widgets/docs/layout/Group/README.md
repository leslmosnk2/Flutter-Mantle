# Group

A wrapping horizontal flex container.

Inspired by Mantine [`Group`](https://mantine.dev/core/group/).

## Constructors

- `Group(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `gap` | `String?` | `'md'` |
| `align` | `CrossAxisAlignment?` | `CrossAxisAlignment.center` |
| `justify` | `MainAxisAlignment?` | `MainAxisAlignment.start` |
| `wrap` | `bool?` | `true` |
| `grow` | `bool?` | `false` |
| `preventGrowOverflow` | `bool?` | `true` |

## Example

```dart
Group(
  children: const [
    Button(onPressed: _noop, child: Text('One')),
    Button(onPressed: _noop, child: Text('Two')),
  ],
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Group](/basic/layout/Group/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.
