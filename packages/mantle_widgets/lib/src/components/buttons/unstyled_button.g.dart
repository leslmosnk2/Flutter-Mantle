// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unstyled_button.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [UnstyledButton].
enum UnstyledButtonVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [UnstyledButton].
@immutable
class UnstyledButtonStyle {
  /// Creates an [UnstyledButtonStyle].
  const UnstyledButtonStyle();

  /// Returns a copy of this [UnstyledButtonStyle] with selected fields replaced.
  UnstyledButtonStyle copyWith() => this;

  /// Merges [other] over this [UnstyledButtonStyle]; null fields keep this value.
  UnstyledButtonStyle mergeWith(UnstyledButtonStyle? other) => this;
}

/// Resolved interaction state for [UnstyledButton].
@immutable
class UnstyledButtonState {
  /// Creates an [UnstyledButtonState].
  const UnstyledButtonState();
}

/// Values passed to [UnstyledButtonDelegate] slots during build.
@immutable
class UnstyledButtonContext {
  /// Creates an [UnstyledButtonContext].
  const UnstyledButtonContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.onPressed,
    required this.disabled,
    this.semanticLabel,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final UnstyledButtonStyle style;

  /// Resolved interaction state for this build.
  final UnstyledButtonState state;

  /// The visual variant selected by the constructor.
  final UnstyledButtonVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Called when the control is pressed.
  final VoidCallback onPressed;

  /// Whether interaction is disabled.
  final bool disabled;

  /// The semantic label.
  final String? semanticLabel;
}

/// Builder for the root slot.
class UnstyledButtonRoot {
  /// Creates an [UnstyledButtonRoot] from a builder function.
  const UnstyledButtonRoot(this._build);

  final Widget Function(UnstyledButtonContext context) _build;

  /// Invokes this slot with [context].
  Widget call(UnstyledButtonContext context) => _build(context);
}

/// Theme-owned composition slots for [UnstyledButton].
abstract class UnstyledButtonDelegate extends ComponentDelegate {
  /// Creates an [UnstyledButtonDelegate].
  const UnstyledButtonDelegate();

  /// Builds the composition root.
  Widget root(UnstyledButtonContext context);
}

/// An [UnstyledButton] widget resolved through [UnstyledButtonDelegate].
class UnstyledButton extends StatelessWidget {
  /// Creates an [UnstyledButton].
  const UnstyledButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.disabled,
    this.semanticLabel,
    this.style,
  }) : variant = UnstyledButtonVariant.defaults;

  /// The visual variant selected by the constructor.
  final UnstyledButtonVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Called when the control is pressed.
  final VoidCallback onPressed;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// The semantic label.
  final String? semanticLabel;

  /// Style overrides merged over theme defaults.
  final UnstyledButtonStyle? style;

  /// Resolves properties and builds via [UnstyledButtonDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedOnPressed = onPressed;
    final resolvedDisabled = disabled ?? false;
    final resolvedSemanticLabel = semanticLabel;

    const fromProps = UnstyledButtonStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = UnstyledButtonState();
    final unstyledButtonContext = UnstyledButtonContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      onPressed: resolvedOnPressed,
      disabled: resolvedDisabled,
      semanticLabel: resolvedSemanticLabel,
    );
    final delegate = MantleTheme.of(context).delegate<UnstyledButtonDelegate>();
    return delegate.root(unstyledButtonContext);
  }
}
