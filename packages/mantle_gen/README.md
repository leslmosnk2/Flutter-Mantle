# mantle_gen

`build_runner` generators for [Mantle](https://mantle.leslmosnk.com).

Annotate libraries with [`mantle_annotations`](https://pub.dev/packages/mantle_annotations);
this package emits the matching part files. Add it as a **dev dependency** only
— app code never imports `mantle_gen` directly.

- **Docs:** [docs.mantle.leslmosnk.com/gen](https://docs.mantle.leslmosnk.com/#/gen/)

## Install

```yaml
dependencies:
  mantle_annotations: ^1.0.0

dev_dependencies:
  mantle_gen: ^1.0.0
  build_runner: ^2.4.0
```

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

Given:

```dart
import 'package:mantle_annotations/mantle_annotations.dart';

part 'palette.g.dart';

@MantleToken()
abstract final class Palette {
  static const red = 0xFFFF0000;
  static const blue = 0xFF0000FF;
}
```

The generator emits a mixin that exposes those consts as a `toMap()`.

## License

MIT. See [LICENSE](LICENSE).
