import 'package:mantle_core/mantle_core.dart';

/// Toy delegate used by theme/provider tests.
class ToyDelegate extends ComponentDelegate {
  /// Creates a toy delegate tagged with [id].
  const ToyDelegate(this.id);

  /// Identity for equality checks in tests.
  final String id;
}
