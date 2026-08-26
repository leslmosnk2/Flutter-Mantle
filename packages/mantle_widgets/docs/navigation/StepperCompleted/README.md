# StepperCompleted

`StepperCompleted` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`StepperCompleted`](https://mantine.dev/core/stepper-completed/).

## Constructors

- `StepperCompleted(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `child` | `Widget` | required |

## Example

```dart
StepperCompleted(
  child: const Text('Label'),
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` StepperCompleted](/basic/navigation/StepperCompleted/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Stepper](/widgets/navigation/Stepper/)
- [StepperStep](/widgets/navigation/StepperStep/)
