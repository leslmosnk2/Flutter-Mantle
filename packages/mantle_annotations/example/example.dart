import 'package:mantle_annotations/mantle_annotations.dart';

/// Token group consumed by `mantle_gen`.
///
/// Add `mantle_gen` as a dev dependency and run
/// `dart run build_runner build` to emit a mixin with `toMap()`.
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
