/// Marks a class that aggregates `@MantleToken` groups in the same library.
///
/// The generator emits a base class with a `BuildContext` constructor and an
/// `.of(context)` named constructor that builds a fresh theme for that
/// context.
class MantleAppTheme {
  /// Creates a theme aggregation annotation.
  ///
  /// [name] defaults to the annotated class name (for example `AppTheme`).
  const MantleAppTheme({this.name});

  /// Generated theme class name. Defaults to the annotated class name.
  final String? name;
}
