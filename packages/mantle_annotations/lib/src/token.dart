/// A decorator for defining Mantle token definitions.
class MantleToken {
  /// Creates a new instance of [MantleToken].
  const MantleToken({this.type = dynamic, this.name = r'_${classname}'});

  /// The type of the token value.
  final Type type;

  /// The name for the generated mixin.
  final String name;
}
