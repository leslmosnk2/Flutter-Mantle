// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'copy_button.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [CopyButton].
enum CopyButtonVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [CopyButton].
@immutable
class CopyButtonStyle {
  /// Creates a [CopyButtonStyle].
  const CopyButtonStyle();

  /// Returns a copy of this [CopyButtonStyle] with selected fields replaced.
  CopyButtonStyle copyWith() => this;

  /// Merges [other] over this [CopyButtonStyle]; null fields keep this value.
  CopyButtonStyle mergeWith(CopyButtonStyle? other) => this;
}

/// Resolved interaction state for [CopyButton].
@immutable
class CopyButtonState {
  /// Creates a [CopyButtonState].
  const CopyButtonState();
}

/// Values passed to [CopyButtonDelegate] slots during build.
@immutable
class CopyButtonContext {
  /// Creates a [CopyButtonContext].
  const CopyButtonContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.value,
    required this.builder,
    required this.timeout,
    this.onCopy,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final CopyButtonStyle style;

  /// Resolved interaction state for this build.
  final CopyButtonState state;

  /// The visual variant selected by the constructor.
  final CopyButtonVariant variant;

  /// The controlled value.
  final String value;

  /// The builder.
  final CopyButtonBuilder builder;

  /// The timeout.
  final int timeout;

  /// Called when copy.
  final VoidCallback? onCopy;
}

/// Builder for the root slot.
class CopyButtonRoot {
  /// Creates a [CopyButtonRoot] from a builder function.
  const CopyButtonRoot(this._build);

  final Widget Function(CopyButtonContext context) _build;

  /// Invokes this slot with [context].
  Widget call(CopyButtonContext context) => _build(context);
}

/// Theme-owned composition slots for [CopyButton].
abstract class CopyButtonDelegate extends ComponentDelegate {
  /// Creates a [CopyButtonDelegate].
  const CopyButtonDelegate();

  /// Builds the composition root.
  Widget root(CopyButtonContext context);
}

/// A [CopyButton] widget resolved through [CopyButtonDelegate].
class CopyButton extends StatelessWidget {
  /// Creates a [CopyButton].
  const CopyButton({
    super.key,
    required this.value,
    required this.builder,
    this.timeout,
    this.onCopy,
    this.style,
  }) : variant = CopyButtonVariant.defaults;

  /// The visual variant selected by the constructor.
  final CopyButtonVariant variant;

  /// The controlled value.
  final String value;

  /// The builder.
  final CopyButtonBuilder builder;

  /// The timeout.
  final int? timeout;

  /// Called when copy.
  final VoidCallback? onCopy;

  /// Style overrides merged over theme defaults.
  final CopyButtonStyle? style;

  /// Resolves properties and builds via [CopyButtonDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedBuilder = builder;
    final resolvedTimeout = timeout ?? 1000;
    final resolvedOnCopy = onCopy;

    const fromProps = CopyButtonStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = CopyButtonState();
    final copyButtonContext = CopyButtonContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      builder: resolvedBuilder,
      timeout: resolvedTimeout,
      onCopy: resolvedOnCopy,
    );
    final delegate = MantleTheme.of(context).delegate<CopyButtonDelegate>();
    return delegate.root(copyButtonContext);
  }
}
