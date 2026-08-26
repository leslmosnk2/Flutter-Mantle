# @MantleToken

Marks a class whose `static const` fields should be collected by the
[`mantle_token`](/gen/tokens) builder.

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

## Parameters

| Parameter | Default | Purpose |
|---|---|---|
| `type` | `dynamic` | Value type used in the generated `toMap()` |
| `name` | `_${classname}` | Generated mixin name (`{classname}` is substituted) |

```dart
@MantleToken(type: int, name: '_PaletteTokens')
abstract final class Palette {
  static const red = 0xFFFF0000;
}
```
