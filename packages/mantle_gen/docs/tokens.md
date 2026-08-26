# Token generator

Reads `@MantleToken` on a class and emits a mixin of its `static const`
fields as a `toMap()`.

## Input

```dart
import 'package:mantle_annotations/mantle_annotations.dart';

part 'palette.g.dart';

@MantleToken()
abstract final class Palette {
  static const red = 0xFFFF0000;
  static const blue = 0xFF0000FF;
}
```

## Output

The mixin name and value type come from annotation parameters
(`name` defaults to `_${classname}`, `type` defaults to `dynamic`):

```dart
mixin _Palette {
  Map<String, dynamic> toMap() => {
    'red': red,
    'blue': blue,
  };
}
```

Apply the mixin to the annotated class (or a companion) to expose the map.

Only **static const** fields are collected. Instance fields, getters, and
methods are ignored.
