# mantle_annotations

Pure-Dart annotations for Mantle code generation. This package has **no
Flutter dependency**, so both app/library code and the analyzer-side
generators in [`mantle_gen`](/gen/) can import it.

## Install

```yaml
dependencies:
  mantle_annotations: ^1.1.0

dev_dependencies:
  mantle_gen: ^1.1.0
  build_runner: ^2.4.0
```

App code never imports `mantle_gen`. Annotate with this package, then run:

```bash
dart run build_runner build --delete-conflicting-outputs
```

## Annotations

| Annotation | Purpose |
|---|---|
| [`@MantleToken`](/annotations/token) | Context-built scales (`spacing.all.md`) or static-const `toMap()` |
| [`@MantleAppTheme`](/annotations/token) | Aggregates same-library tokens into `AppTheme.of(context)` |
| [`@MantleComponent`](/annotations/component) | Widget contract: variants, properties, style, state, slots |
| [`MantleVariant`](/annotations/component) | Named factory on a component (`Button.filled`) |
| [`MantleProperty`](/annotations/component) | Typed field on a contract, variant, style, or state |
