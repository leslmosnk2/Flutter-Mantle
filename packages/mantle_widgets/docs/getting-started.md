# Getting started

## Provide a theme

Widgets throw `MissingDelegateError` unless a theme registers a delegate
for that contract. `BasicTheme` registers all of them:

```dart
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

void main() {
  runApp(
    MantleProvider(
      theme: BasicTheme(),
      child: WidgetsApp(
        color: const Color(0xFF228BE6),
        builder: (context, child) => const HomePage(),
      ),
    ),
  );
}
```

Put `MantleProvider` **above** `WidgetsApp` so routes and overlays inherit
the theme.

## Call a widget

Named constructors are variants. The unnamed constructor is `default`:

```dart
Button(
  onPressed: () {},
  child: const Text('Default'),
)

Button.filled(
  onPressed: () {},
  child: const Text('Filled'),
)
```

`size` is a token key (`'xs'` … `'xl'`, plus `compact-*` on some
controls). `color` on many widgets is a **palette name** (`'blue'`,
`'red'`) or a shade (`'blue.4'`), not a `Color`.

Prefix/suffix (Mantine `leftSection` / `rightSection`) are widgets:

```dart
TextInput(
  label: const Text('Email'),
  leftSection: const Text('@'),
  placeholder: 'you@example.com',
  onChanged: (value) {},
)
```

Names that collide with `package:flutter/widgets.dart` are prefixed:
`MText`, `MTitle`, `MImage`, `MCenter`, `MStack`, `MFlex`, `MContainer`,
`MAspectRatio`, `MList`, `MTable`, `MCard`, `MOverlay`, `MColorSwatch`,
`MNotification`, `MTransition`.

## Tests

```dart
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_widgets/testing.dart';

testWidgets('saves', (tester) async {
  await tester.pumpMantle(
    Button.filled(onPressed: () {}, child: const Text('Save')),
    theme: testTheme(),
  );
});
```

`pumpMantle` is re-exported from `mantle_core`. Pass a theme that includes
the delegates you need (`BasicTheme()` in app tests).
