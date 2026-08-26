import 'package:flutter/foundation.dart';

/// Per-component default style props, like Mantine's `theme.components`.
///
/// Values are keyed by style type (`ButtonStyle`). Until generated styles
/// implement field-wise merge, overlapping keys are last-write-wins with
/// **this** instance taking precedence in [mergeWith].
@immutable
class ComponentDefaults {
  /// Creates defaults from [styles], keyed by style type.
  const ComponentDefaults([Map<Type, Object> styles = const {}])
    : _styles = styles;

  /// An empty set of defaults.
  const ComponentDefaults.empty() : _styles = const {};

  final Map<Type, Object> _styles;

  /// Whether no defaults are registered.
  bool get isEmpty => _styles.isEmpty;

  /// The default style for [S], or `null` if none is registered.
  S? styleFor<S>() => _styles[S] as S?;

  /// Returns defaults where this instance overwrites [other] on key overlap.
  ComponentDefaults mergeWith(ComponentDefaults other) {
    return ComponentDefaults({...other._styles, ..._styles});
  }

  @override
  bool operator ==(Object other) {
    return other is ComponentDefaults && mapEquals(_styles, other._styles);
  }

  @override
  int get hashCode => Object.hashAllUnordered(
    _styles.entries.map((e) => Object.hash(e.key, e.value)),
  );
}
