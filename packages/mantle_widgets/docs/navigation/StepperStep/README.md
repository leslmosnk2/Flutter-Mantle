# StepperStep

`StepperStep` is a Mantle widget. The theme delegate owns the paint.

Inspired by Mantine [`StepperStep`](https://mantine.dev/core/stepper-step/).

## Constructors

- `StepperStep(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `label` | `Widget?` | `null` |
| `description` | `Widget?` | `null` |
| `icon` | `Widget?` | `null` |
| `child` | `Widget?` | `null` |
| `loading` | `bool?` | `false` |
| `allowStepSelect` | `bool?` | `null` |
| `withIcon` | `bool?` | `true` |

## Example

```dart
StepperStep(
  label: const Text('Label'),
  description: /* … */,
  icon: /* … */,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` StepperStep](/basic/navigation/StepperStep/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [Stepper](/widgets/navigation/Stepper/)
- [StepperCompleted](/widgets/navigation/StepperCompleted/)
