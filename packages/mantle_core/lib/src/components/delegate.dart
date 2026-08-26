import 'package:flutter/widgets.dart';

/// Marker base for all component delegates.
///
/// Delegates must be immutable and cheap to construct: they are
/// looked up on every build of their component.
@immutable
abstract class ComponentDelegate {
  /// Creates a new component delegate.
  const ComponentDelegate();
}
