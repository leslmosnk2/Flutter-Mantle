import 'package:flutter/widgets.dart';
import 'package:mantle_core/src/components/defaults.dart';
import 'package:mantle_core/src/components/registry.dart';
import 'package:mantle_core/src/theme/mantle_provider.dart';
import 'package:mantle_core/src/theme/mantle_theme.dart';

/// Nested provider that patches defaults and/or delegates only.
///
/// Equivalent to a [MantleProvider] whose theme is a partial override of the
/// ancestor — tokens inherit unless [theme] supplies them.
class MantleOverride extends StatelessWidget {
  /// Creates a subtree override.
  const MantleOverride({
    required this.child,
    this.theme,
    this.componentDefaults,
    this.delegates,
    super.key,
  });

  /// Optional partial theme. Unset groups inherit from the ancestor.
  final MantleTheme? theme;

  /// Replaces [MantleTheme.componentDefaults] on the patch.
  final ComponentDefaults? componentDefaults;

  /// Replaces [MantleTheme.components] on the patch.
  final DelegateRegistry? delegates;

  /// The subtree that sees the override.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    var patch = theme ?? const MantleTheme();
    if (componentDefaults != null || delegates != null) {
      patch = patch.copyWith(
        componentDefaults: componentDefaults,
        components: delegates,
      );
    }
    return MantleProvider(theme: patch, child: child);
  }
}
