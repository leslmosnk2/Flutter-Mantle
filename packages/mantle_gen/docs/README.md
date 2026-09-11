# mantle_gen

`build_runner` generators for Mantle. Annotate libraries with
[`mantle_annotations`](/annotations/); this package emits the matching
part files.

Add it as a **dev dependency** only — app code never imports `mantle_gen`.

## Install

```yaml
dependencies:
  mantle_annotations: ^1.1.0

dev_dependencies:
  mantle_gen: ^1.1.0
  build_runner: ^2.4.0
```

```bash
dart run build_runner build --delete-conflicting-outputs
```

## Builders

Configured in this package's `build.yaml` and applied automatically to
dependents:

| Builder | Annotation | Output |
|---|---|---|
| [`mantle_token`](/gen/tokens) | `@MantleToken` | Shared part (`.g.part` → combined `.g.dart`) |
| [`mantle_component`](/gen/components) | `@MantleComponent` | Shared part (`.g.part` → combined `.g.dart`) |

Both use `SharedPartBuilder` and `source_gen`'s combining builder, so one
`part 'foo.g.dart';` collects every generator that ran on that library.
