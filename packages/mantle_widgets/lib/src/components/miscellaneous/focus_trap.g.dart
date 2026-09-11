// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'focus_trap.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [FocusTrap].
enum FocusTrapVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [FocusTrap].
@immutable
class FocusTrapStyle {
  /// Creates a [FocusTrapStyle].
  const FocusTrapStyle();

  /// Returns a copy of this [FocusTrapStyle] with selected fields replaced.
  FocusTrapStyle copyWith() => this;

  /// Merges [other] over this [FocusTrapStyle]; null fields keep this value.
  FocusTrapStyle mergeWith(FocusTrapStyle? other) => this;
}

/// Resolved interaction state for [FocusTrap].
@immutable
class FocusTrapState {
  /// Creates a [FocusTrapState].
  const FocusTrapState();
}

/// Values passed to [FocusTrapDelegate] slots during build.
@immutable
class FocusTrapContext {
  /// Creates a [FocusTrapContext].
  const FocusTrapContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.active,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final FocusTrapStyle style;

  /// Resolved interaction state for this build.
  final FocusTrapState state;

  /// The visual variant selected by the constructor.
  final FocusTrapVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether this item is the active option.
  final bool active;
}

/// Builder for the root slot.
class FocusTrapRoot {
  /// Creates a [FocusTrapRoot] from a builder function.
  const FocusTrapRoot(this._build);

  final Widget Function(FocusTrapContext context) _build;

  /// Invokes this slot with [context].
  Widget call(FocusTrapContext context) => _build(context);
}

/// Theme-owned composition slots for [FocusTrap].
abstract class FocusTrapDelegate extends ComponentDelegate {
  /// Creates a [FocusTrapDelegate].
  const FocusTrapDelegate();

  /// Builds the composition root.
  Widget root(FocusTrapContext context);
}

/// A [FocusTrap] widget resolved through [FocusTrapDelegate].
class FocusTrap extends StatelessWidget {
  /// Creates a [FocusTrap].
  const FocusTrap({super.key, required this.child, this.active, this.style})
    : variant = FocusTrapVariant.defaults;

  /// The visual variant selected by the constructor.
  final FocusTrapVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether this item is the active option.
  final bool? active;

  /// Style overrides merged over theme defaults.
  final FocusTrapStyle? style;

  /// Resolves properties and builds via [FocusTrapDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedActive = active ?? true;

    const fromProps = FocusTrapStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = FocusTrapState();
    final focusTrapContext = FocusTrapContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      active: resolvedActive,
    );
    final delegate = MantleTheme.of(context).delegate<FocusTrapDelegate>();
    return delegate.root(focusTrapContext);
  }
}
