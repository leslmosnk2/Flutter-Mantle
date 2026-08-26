# Builders

`build.yaml` registers two builders. Dependents do not need their own
`build.yaml` unless they want to disable or tune them.

```yaml
builders:
  mantle_token:
    import: "package:mantle_gen/mantle_gen.dart"
    builder_factories:
      - mantleTokenBuilder
    auto_apply: dependents
    build_to: cache
    applies_builders:
      - source_gen:combining_builder

  mantle_component:
    import: "package:mantle_gen/mantle_gen.dart"
    builder_factories:
      - mantleComponentBuilder
    auto_apply: dependents
    build_to: cache
    applies_builders:
      - source_gen:combining_builder
```

`build_to: cache` means the `.g.part` files stay in the build cache. The
combining builder writes the visible `*.g.dart` next to your source.

## Factories

```dart
Builder mantleTokenBuilder(BuilderOptions options) {
  return SharedPartBuilder([MantleTokenGenerator()], 'MantleToken');
}

Builder mantleComponentBuilder(BuilderOptions options) {
  return SharedPartBuilder([MantleComponentGenerator()], 'MantleComponent');
}
```

## Templates

Generators render Mustache-like templates from
`package:mantle_gen/src/template/templates/`:

- `token_mixin.txt` — mixin with `toMap()`
- `component.txt` — widget, delegate, style, state, context, slots

The template engine (`Template.compile` / `Template.render`) lives in this
package and is covered by `test/template_test.dart`.
