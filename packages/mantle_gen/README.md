# mantle_gen

`build_runner` generators for [Mantle](https://mantle.leslmosnk.com).

Annotate libraries with [`mantle_annotations`](https://pub.dev/packages/mantle_annotations);
this package emits the matching part files. Add it as a **dev dependency** only
— app code never imports `mantle_gen` directly.

- **Docs:** [leslmosnk2.github.io/Flutter-Mantle/#/gen](https://leslmosnk2.github.io/Flutter-Mantle/#/gen/)

## Install

```yaml
dependencies:
  mantle_annotations: ^1.1.0

dev_dependencies:
  mantle_gen: ^1.1.0
  build_runner: ^2.4.0
```

See [`example/example.dart`](example/example.dart) for sample generator input.

Then:

```bash
dart run build_runner build --delete-conflicting-outputs
```

## Builders

Configured in this package's `build.yaml` and applied automatically to
dependents:

| Builder | Annotation | Output |
|---|---|---|
| `mantle_token` | `@MantleToken` | Shared part (`.mantle.g.part` → combined `.g.dart`) |

### Token generator

Size-list `@MantleToken` classes emit `_$ClassName` (named fields, `all.md`,
merge/lerp). `@MantleAppTheme` emits `AppTheme.of(context)`.
Static-const classes still get `toMap()`.

## License

MIT. See [LICENSE](LICENSE).
