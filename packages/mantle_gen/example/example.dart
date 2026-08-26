import 'package:mantle_annotations/mantle_annotations.dart';

/// Input for the `mantle_token` builder.
///
/// App code depends on `mantle_annotations` only. Add this package as a
/// **dev** dependency, then:
///
/// ```bash
/// dart run build_runner build --delete-conflicting-outputs
/// ```
///
/// The builder emits a mixin (default name `_Palette`) with `toMap()`.
@MantleToken()
abstract final class Palette {
  static const red = 0xFFFF0000;
  static const blue = 0xFF0000FF;
}

void main() {
  final values = <String, int>{
    'red': Palette.red,
    'blue': Palette.blue,
  };
  assert(values.length == 2, 'palette should list both colors');
}
