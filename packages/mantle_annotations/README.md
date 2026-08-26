# mantle_annotations

Pure-Dart annotations for [Mantle](https://mantle.leslmosnk.com) code generation.

This package has **no Flutter dependency**, so both app/library code and the
analyzer-side generators in [`mantle_gen`](https://pub.dev/packages/mantle_gen)
can import it.

- **Docs:** [docs.mantle.leslmosnk.com/annotations](https://docs.mantle.leslmosnk.com/#/annotations/)

## Install

```yaml
dependencies:
  mantle_annotations: ^1.0.0
```

See [`example/example.dart`](example/example.dart) for a `@MantleToken` group.

Typically you also add `mantle_gen` as a `dev_dependency` and run
`dart run build_runner build`.

## Annotations

### `@MantleToken`

Marks a class whose `static const` fields should be collected by the Mantle
token generator:

```dart
import 'package:mantle_annotations/mantle_annotations.dart';

part 'palette.g.dart';

@MantleToken()
abstract final class Palette {
  static const red = 0xFFFF0000;
  static const blue = 0xFF0000FF;
}
```

Optional parameters:

| Parameter | Default | Purpose |
|---|---|---|
| `type` | `dynamic` | Value type used in the generated `toMap()` |
| `name` | `_${classname}` | Generated mixin name (supports `{classname}`) |

## License

MIT. See [LICENSE](LICENSE).
