# mantle_annotations

Pure-Dart annotations for [Mantle](https://mantle.leslmosnk.com) code generation.

This package has **no Flutter dependency**, so both app/library code and the
analyzer-side generators in [`mantle_gen`](https://pub.dev/packages/mantle_gen)
can import it.

- **Docs:** [leslmosnk2.github.io/Flutter-Mantle/#/annotations](https://leslmosnk2.github.io/Flutter-Mantle/#/annotations/)

## Install

```yaml
dependencies:
  mantle_annotations: ^1.1.0
```

See [`example/example.dart`](example/example.dart) for a `@MantleToken` group.

Typically you also add `mantle_gen` as a `dev_dependency` and run
`dart run build_runner build`.

## Annotations

### `@MantleToken`

Marks a class of size names (or `static const` values) for the Mantle
token generator. Size-list classes extend a generated base and take
`BuildContext` so values can use `emOf`:

```dart
import 'package:mantle_annotations/mantle_annotations.dart';

part 'app_theme.g.dart';

@MantleToken(['xs', 'sm', 'md', 'lg', 'xl'])
class AppSpacing extends _$AppSpacing {
  AppSpacing(BuildContext context)
    : super(xs: 10, sm: 12, md: 1.emOf(context), lg: 20, xl: 32);
}
```

Optional parameters:

| Parameter | Default | Purpose |
|---|---|---|
| `sizes` | `[]` | Size names for a context-built scale |
| `slot` | inferred | Built-in theme slot (`spacing`, `radius`, `breakpoints`) |
| `type` | `dynamic` | Value type used in the static-const `toMap()` |
| `name` | `_$${classname}` | Generated base/mixin name (supports `{classname}`) |

### `@MantleAppTheme`

Marks a class that aggregates `@MantleToken` scales in the same library.
After generation:

```dart
@MantleAppTheme()
class AppTheme = _$AppTheme with _$AppThemeMixin;

MantleProvider(theme: AppTheme(), child: app);
AppTheme.of(context).spacing.all.md;
```

## License

MIT. See [LICENSE](LICENSE).
