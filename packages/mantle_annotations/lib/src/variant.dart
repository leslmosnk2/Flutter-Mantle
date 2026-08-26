import 'package:mantle_annotations/mantle_annotations.dart';

/// A named factory on a component, such as `Button.filled()`.
class MantleVariant {
  /// Creates a variant named [name].
  const MantleVariant(this.name, {this.properties = const []});

  /// Identifier used for the generated factory (or `default` for the unnamed).
  final String name;

  /// Properties that apply only to this variant.
  final List<MantleProperty<dynamic>> properties;
}
