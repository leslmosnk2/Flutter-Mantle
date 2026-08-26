# Stepper

A sequence of labeled steps.

Inspired by Mantine [`Stepper`](https://mantine.dev/core/stepper/).

## Constructors

- `Stepper(...)` (unnamed / `default`)

## Properties

| Prop | Type | Default |
|---|---|---|
| `children` | `List<Widget>` | required |
| `active` | `int` | required |
| `onStepClick` | `StepperOnStepClick?` | `null` |
| `orientation` | `Axis?` | `Axis.horizontal` |
| `iconPosition` | `StepIconPosition?` | `StepIconPosition.left` |
| `allowNextStepsSelect` | `bool?` | `true` |
| `wrap` | `bool?` | `true` |
| `size` | `String?` | `'md'` |
| `color` | `String?` | `null` |
| `contentPadding` | `String?` | `'md'` |

## Example

```dart
Stepper(
  children: const [],
  active: 0,
)
```

## Slots

Theme delegates implement:

- `root`

See [`mantle_basic` Stepper](/basic/navigation/Stepper/) for the baseline paint, and [architecture](/widgets/architecture) for how lookup works.

## Related

- [StepperStep](/widgets/navigation/StepperStep/)
- [StepperCompleted](/widgets/navigation/StepperCompleted/)
