# @MantleToken

Marks a class collected by the [`mantle_token`](/gen/tokens) builder.

## Context-built scale

List size names. After generation, **extend** `_$ClassName` and pass named
values from a `BuildContext` constructor:

```dart
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
```

The generated base implements the matching slot (`MantleSpacing`,
`MantleRadius`, or `MantleBreakpoint` — inferred from the class name, or set
`slot:`). Named fields and unary helpers are getters:

```dart
theme.spacing.md;        // double
theme.spacing.all.md;    // EdgeInsets.all
theme.radius.border.md;  // BorderRadius.circular
theme.radius.circular.md;
```

Mixed-size helpers take raw doubles:

```dart
spacing.only(top: spacing.lg, left: spacing.xs);
```

## Theme aggregation

Annotate a theme class in the **same library** (same file or `part`s):

```dart
@MantleAppTheme()
class AppTheme = _$AppTheme with _$AppThemeMixin;
```

```dart
MantleProvider(theme: AppTheme(), child: app);

AppTheme.of(context).spacing.all.md;
```

`of(context)` builds a **fresh** theme for that context so values can depend
on em / `MediaQuery`.

## Static const

Classes with only `static const` fields still get a `toMap()` mixin.
Use [`MantleToken.consts`] because Dart cannot mix an optional positional
list with named `type` / `name`:

```dart
@MantleToken.consts(type: int)
abstract final class Palette {
  static const red = 0xFFFF0000;
  static const blue = 0xFF0000FF;
}
```

## Parameters

| Parameter | Default | Purpose |
|---|---|---|
| `sizes` | `[]` | Size names for a context-built scale |
| `slot` | inferred | Built-in theme slot (`spacing`, `radius`, `breakpoints`) |
| `type` | `dynamic` | Value type for static-const `toMap()` |
| `name` | `_$${classname}` | Generated base/mixin name |

```dart
@MantleToken.consts(type: int, name: '_PaletteTokens')
abstract final class Palette {
  static const red = 0xFFFF0000;
}
```
