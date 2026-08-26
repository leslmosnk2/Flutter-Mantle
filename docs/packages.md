# Packages

Each package has its own Docsify site under `packages/<name>/docs`. This
site links those trees through symbolic links (`docs/core` →
`packages/mantle_core/docs`, and so on) so pages are not duplicated.

| Package | Linked from | Description |
|---|---|---|
| **mantle_core** | [core/](/core/) | Token primitives, `MantleTheme`, `MantleProvider`, delegate registry |
| **mantle_widgets** | [widgets/](/widgets/) | Generated widgets, `@MantleComponent` contracts, and a re-export of the public `mantle_core` API |
| **mantle_basic** | [basic/](/basic/) | Mantine-like `BasicTheme` and delegate implementations |
| **mantle_annotations** | [annotations/](/annotations/) | Pure-Dart `@MantleToken` and `@MantleComponent` |
| **mantle_gen** | [gen/](/gen/) | `build_runner` builders for tokens and components |

## Dependency direction

```
mantle_annotations  (no Flutter)
        ▲
        │
   mantle_gen       (dev only)
        │
        ▼
mantle_core  ◄──  mantle_widgets  ◄──  mantle_basic
```

- `mantle_core` does not depend on widgets or basic.
- `mantle_widgets` depends on `mantle_core` and `mantle_annotations`. Its
  main library re-exports `package:mantle_core/mantle_core.dart`.
- `mantle_basic` depends on `mantle_core` and `mantle_widgets`.
- `mantle_gen` depends on `mantle_annotations` only.

## Serving a single package

```bash
npx --yes docsify-cli serve packages/mantle_widgets/docs
```

Cross-package links (`../core/`, `../basic/`, …) resolve on **this**
combined site. They will not resolve when a package docs folder is served
alone.
