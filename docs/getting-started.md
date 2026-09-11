# Getting started

## Workspace

This repository is a Dart workspace (`mantle_workspace`) with five packages
and a gallery app. From the repo root:

```bash
dart pub get
```

## Gallery

Live at [mantle.leslmosnk.com](https://mantle.leslmosnk.com).

```bash
cd packages/mantle_basic/example
flutter run -d linux   # or: flutter run -d chrome
```

## App dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  mantle_widgets: ^1.1.0
  mantle_basic: ^1.1.0
```

`mantle_widgets` re-exports the public `mantle_core` API (`MantleProvider`,
`MantleTheme`, tokens). Add `mantle_core` yourself only if you use the
runtime without widgets.

`mantle_basic` registers a delegate for every widget. Without it (or another
theme that implements the same contracts), widgets throw
`MissingDelegateError`.

## Provide the theme

Place `MantleProvider` **above** `WidgetsApp` so routes and overlays still
inherit the theme:

```dart
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

## Use a widget

```dart
import 'package:mantle_widgets/mantle_widgets.dart';

Button.filled(
  prefix: const Text('+'),
  onPressed: () {},
  child: const Text('Save'),
)
```

Public constructors and props are documented per component under
[mantle_widgets](/widgets/). How the baseline theme paints them is under
[mantle_basic](/basic/).

## Tokens from context

```dart
final theme = MantleTheme.of(context, aspect: MantleAspect.spacing);
return Padding(
  padding: theme.spacing.all('md'),
  child: child,
);
```

See [mantle_core](/core/) for the full token and provider API.

## Codegen (library authors)

If you author new contracts:

```yaml
dependencies:
  mantle_annotations: ^1.1.0

dev_dependencies:
  mantle_gen: ^1.1.0
  build_runner: ^2.4.0
```

```bash
dart run build_runner build --delete-conflicting-outputs
```

## Local docs

```bash
npx --yes docsify-cli serve docs
```

Each package can also be served on its own:

```bash
npx --yes docsify-cli serve packages/mantle_core/docs
```
