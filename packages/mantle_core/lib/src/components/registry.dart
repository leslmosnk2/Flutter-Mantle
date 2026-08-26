import 'package:flutter/foundation.dart';
import 'package:mantle_core/src/components/delegate.dart';

/// Typed map of component contracts to the theme's implementations.
///
/// Keys are contract types (`ButtonDelegate`), never implementation types.
@immutable
class DelegateRegistry {
  /// Creates a registry from [delegates], keyed by contract type.
  const DelegateRegistry([Map<Type, ComponentDelegate> delegates = const {}])
    : _delegates = delegates;

  /// An empty registry.
  const DelegateRegistry.empty() : _delegates = const {};

  final Map<Type, ComponentDelegate> _delegates;

  /// Whether no delegates are registered.
  bool get isEmpty => _delegates.isEmpty;

  /// Returns the delegate registered for [D], or null if none is present.
  D? maybeGet<D extends ComponentDelegate>() => _delegates[D] as D?;

  /// Returns a registry where this instance overwrites [other] on key overlap.
  DelegateRegistry mergeWith(DelegateRegistry other) =>
      DelegateRegistry({...other._delegates, ..._delegates});

  @override
  bool operator ==(Object other) {
    return other is DelegateRegistry && mapEquals(_delegates, other._delegates);
  }

  @override
  int get hashCode => Object.hashAllUnordered(
    _delegates.entries.map((e) => Object.hash(e.key, e.value)),
  );
}
