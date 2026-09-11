# Mantle

Flutter theming architecture where the theme owns design tokens and the
structure of every widget. Inspired by [Mantine](https://mantine.dev).

- **Gallery:** [mantle.leslmosnk.com](https://mantle.leslmosnk.com)
- **Docs:** [leslmosnk2.github.io/Flutter-Mantle](https://leslmosnk2.github.io/Flutter-Mantle/)
- **Source:** [github.com/leslmosnk2/Flutter-Mantle](https://github.com/leslmosnk2/Flutter-Mantle)
- **Issues:** [github.com/leslmosnk2/Flutter-Mantle/issues](https://github.com/leslmosnk2/Flutter-Mantle/issues)

## Packages

| Package | Description |
|---|---|
| [`mantle_core`](packages/mantle_core) | Tokens, `MantleTheme`, `MantleProvider` |
| [`mantle_widgets`](packages/mantle_widgets) | Component contracts and generated widgets |
| [`mantle_basic`](packages/mantle_basic) | Baseline Mantine-like theme and delegates |
| [`mantle_annotations`](packages/mantle_annotations) | `@MantleToken`, `@MantleComponent` |
| [`mantle_gen`](packages/mantle_gen) | `build_runner` generators |

## Install

```yaml
dependencies:
  mantle_widgets: ^1.1.0
  mantle_basic: ^1.1.0
```

`mantle_widgets` re-exports the public `mantle_core` API. Depend on
`mantle_core` directly only if you use tokens without widgets.

## Gallery

Live at [mantle.leslmosnk.com](https://mantle.leslmosnk.com). The source
app is [`packages/mantle_basic/example`](packages/mantle_basic/example):

```bash
cd packages/mantle_basic/example
flutter run -d linux   # or: flutter run -d chrome
```

## Documentation

Live at [leslmosnk2.github.io/Flutter-Mantle](https://leslmosnk2.github.io/Flutter-Mantle/).
Pushes to `main` deploy the Docsify site in [`docs/`](docs/) to GitHub Pages
and publish any package whose `version` is not yet on pub.dev (bump that
version when you want a release). Package pages are the same markdown as
`packages/<name>/docs`, linked with symbolic links so they are not duplicated.

```bash
npx --yes docsify-cli serve docs
```

## License

MIT. See [LICENSE](LICENSE).
