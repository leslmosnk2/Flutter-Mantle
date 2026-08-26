/// A typed property on a component, variant, style, or state contract.
class MantleProperty<T> {
  /// Creates a property named [name].
  const MantleProperty(
    this.name, {
    this.nullable = false,
    this.defaultValue,
    this.defaultBuilder,
  });

  /// Identifier used for the generated parameter, field, and context value.
  final String name;

  /// When `true`, the generated parameter is `T?` and optional.
  ///
  /// When `false` (the default) and no [defaultValue] / [defaultBuilder] is
  /// set, the generated constructor takes `required this.name`.
  final bool nullable;

  /// A compile-time default applied when the user omits the argument.
  final Object? defaultValue;

  /// A top-level function tear-off `(BuildContext) → T` used when the user
  /// omits the argument and a context is available.
  final Function? defaultBuilder;
}
