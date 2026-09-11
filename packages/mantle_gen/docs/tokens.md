# Token generator

Reads `@MantleToken` and `@MantleAppTheme` in a library and emits a shared
part.

## Context-built scale

```dart
import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'app_theme.g.dart';

@MantleToken(['xs', 'sm', 'md', 'lg', 'xl'])
class AppSpacing extends _$AppSpacing {
  AppSpacing(BuildContext context) : super(
    xs: 0.625.emOf(context),
    sm: 0.75.emOf(context),
    md: 1.emOf(context),
    lg: 1.25.emOf(context),
    xl: 2.emOf(context),
  );
}

@MantleToken(['xs', 'sm', 'md', 'lg', 'xl'])
class AppRadius extends _$AppRadius {
  AppRadius(BuildContext context) : super(
    xs: 0.125.emOf(context),
    sm: 0.25.emOf(context),
    md: 0.5.emOf(context),
    lg: 1.emOf(context),
    xl: 2.emOf(context),
  );
}

@MantleAppTheme()
class AppTheme = _$AppTheme with _$AppThemeMixin;
```

The generated `_$AppSpacing` implements `MantleSpacing` with named fields,
`copyWith` / `mergeWith` / `lerpWith`, and `spacing.all.md`. Slot is inferred
from the class name (`Spacing`, `Radius`, `Breakpoint`) or set with `slot:`.

```dart
MantleProvider(theme: AppTheme(), child: app);

AppTheme.of(context).spacing.md;
AppTheme.of(context).spacing.all.md;
AppTheme.of(context).radius.border.md;
```

`AppTheme.of(context)` (and `MantleTheme.of(context)`) **rebuilds** tokens
with the current context so values can use `emOf` / `MediaQuery`.

Pass a factory override into the generated constructor:

```dart
AppTheme(spacing: OtherSpacing.new);
```

Map groups still work for partial overrides
(`MantleTheme(spacing: MantleSpacing({'md': 20}))`).

## Static const (`toMap`)

Classes with **only** static const fields still get a `toMap()` mixin:

```dart
@MantleToken.consts(type: int)
abstract final class Palette {
  static const red = 0xFFFF0000;
  static const blue = 0xFF0000FF;
}
```

`name` defaults to `_$${classname}`. `{classname}` is substituted.
`type` defaults to `dynamic` and is only used in this mode.
