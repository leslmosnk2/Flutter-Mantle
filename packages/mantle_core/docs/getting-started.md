# Getting started

`mantle_core` is the runtime. You almost always combine it with a theme that
registers component delegates — [`BasicTheme`](/basic/) from `mantle_basic`
is the bundled baseline.

## Minimal app

```dart
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

void main() {
  runApp(
    MantleProvider(
      theme: BasicTheme(),
      child: const Directionality(
        textDirection: TextDirection.ltr,
        child: Center(
          child: Button.filled(
            onPressed: _noop,
            child: Text('Save'),
          ),
        ),
      ),
    ),
  );
}

void _noop() {}
```

`Button` comes from `mantle_widgets`. Its **look** comes from the
`ButtonDelegate` registered on `BasicTheme`. Without a registered delegate,
the widget throws [`MissingDelegateError`](/core/components).

## Nested themes

Inner providers **merge** over their ancestor. Empty token groups inherit;
set fields win:

```dart
MantleProvider(
  theme: BasicTheme(),
  child: MantleProvider(
    theme: MantleTheme(
      spacing: MantleSpacing({'md': 24}),
    ),
    child: child,
  ),
)
```

Use [`MantleOverride`](/core/provider) when you only need to patch defaults or
swap a few delegates.

## Color scheme

```dart
MantleProvider(
  theme: BasicTheme(),
  defaultColorScheme: MantleColorScheme.auto, // follows platform brightness
  child: app,
)
```

Force a scheme for a subtree with `forceColorScheme`, or persist the user's
choice with a `MantleColorSchemeManager`.

## Tests

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_core/testing.dart';

testWidgets('reads tokens', (tester) async {
  await tester.pumpMantle(
    const _TokenProbe(),
    theme: testTheme(),
  );
});
```

`pumpMantle` wraps the widget in `MantleProvider` + `Directionality` and
uses `MantleEnvironment.test` (zero-duration theme animations).
