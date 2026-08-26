import 'package:flutter/widgets.dart';
import 'package:mantle_core/src/theme/mantle_provider.dart';
import 'package:mantle_core/src/theme/mantle_theme.dart';

/// Static access to the **root** theme.
///
/// Populated by the root [MantleProvider]. Nested providers are ignored —
/// there is no [BuildContext] to know where you are in the tree. Prefer
/// [MantleTheme.of] inside `build` methods.
abstract final class Mantle {
  static MantleTheme? _root;

  /// The root theme. Throws in debug if no root provider is mounted.
  static MantleTheme get theme {
    assert(
      _root != null,
      'Mantle.theme accessed before a root MantleProvider was mounted.',
    );
    return _root!;
  }

  /// Whether a root [MantleProvider] is currently mounted.
  static bool get hasRoot => _root != null;

  /// Called by the root [MantleProvider] (and tests).
  // Paired with [detachRoot]; a setter would hide that lifecycle.
  // ignore: use_setters_to_change_properties
  static void attachRoot(MantleTheme theme) => _root = theme;

  /// Called when the root [MantleProvider] is disposed (and tests).
  static void detachRoot() => _root = null;
}
