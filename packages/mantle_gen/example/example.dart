import 'package:mantle_annotations/mantle_annotations.dart';

/// Input for the `mantle_token` builder.
///
/// App code depends on `mantle_annotations` only. Add `mantle_gen` as a
/// **dev** dependency, then:
///
/// ```bash
/// dart run build_runner build --delete-conflicting-outputs
/// ```
///
/// Size-list classes emit `_$ClassName` to `extend`, with named fields and
/// helpers such as `spacing.all.md`. Annotate a theme class in the same
/// library with `@MantleAppTheme` to emit `AppTheme.of(context)`.
@MantleToken(['xs', 'sm', 'md', 'lg', 'xl'])
class AppSpacing {
  /// After generation: `AppSpacing(BuildContext context) : super(xs: ...)`.
  AppSpacing(Object _);
}

@MantleToken(['xs', 'sm', 'md', 'lg', 'xl'])
class AppRadius {
  /// After generation: `AppRadius(BuildContext context) : super(xs: ...)`.
  AppRadius(Object _);
}

@MantleAppTheme()
class AppTheme {}

/// Static-const groups still emit a `toMap()` mixin.
@MantleToken.consts(type: int)
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
