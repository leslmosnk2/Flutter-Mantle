# Theme and tokens

`BasicTheme` extends `MantleTheme` with Mantine default scales and a
`DelegateRegistry` that covers every contract in `mantle_widgets`.

```dart
BasicTheme(
  primaryColor: 'blue',
  defaultRadius: 'sm',
  defaultGradient: MantleGradient(from: 'blue', to: 'cyan'),
  components: DelegateRegistry({
    ButtonDelegate: MyButtonDelegate(), // merged over the baseline
  }),
)
```

Omitted spacing, radius, and breakpoints use context-built
`BasicSpacing` / `BasicRadius` / `BasicBreakpoints` factories so
`MantleTheme.of(context)` can resolve them for the current context.
`components` is merged **on top of** the bundled registry, so you can
replace individual delegates without restating the rest.

## Tokens

Defined in `package:mantle_basic` (`basicRadius`, `basicSpacing`,
`basicBreakpoints`, `basicTypography`, `basicColors`):

| Group | Keys | Values (logical pixels unless noted) |
|---|---|---|
| Radius | `xs`–`xl` | 2, 4, 8, 16, 32 |
| Spacing | `xs`–`xl` | 10, 12, 16, 20, 32 |
| Breakpoints | `xs`–`xl` | 576, 768, 992, 1200, 1408 |
| Font size | `xs`–`xl` | 12, 14, 16, 18, 20 |
| Primary color | — | `'blue'` |
| Default radius | — | `'sm'` |

Colors are Mantine's 10-shade palettes (`gray`, `dark`, `red`, `pink`,
`grape`, `violet`, `indigo`, `blue`, `cyan`, `teal`, `green`, `lime`,
`yellow`, `orange`, …).

Typography uses the platform default family (empty string) so Flutter picks
a system stack, matching Mantine's intent. Headings `h1`–`h6` are 34 / 26 /
22 / 18 / 16 / 14.

## Using it as a baseline

Custom themes that only override tokens still need delegates. Pass
`BasicTheme` as the provider baseline:

```dart
MantleProvider(
  theme: MantleTheme(
    primaryColor: 'teal',
    spacing: MantleSpacing({'md': 20}),
  ),
  baseline: BasicTheme(),
  child: app,
)
```

Delegate lookup then falls through to `BasicTheme` for every component you
did not register.
