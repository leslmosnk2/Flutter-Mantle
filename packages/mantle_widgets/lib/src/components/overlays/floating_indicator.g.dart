// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'floating_indicator.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [FloatingIndicator].
enum FloatingIndicatorVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [FloatingIndicator].
@immutable
class FloatingIndicatorStyle {
  /// Creates a [FloatingIndicatorStyle].
  const FloatingIndicatorStyle();

  /// Returns a copy of this [FloatingIndicatorStyle] with selected fields replaced.
  FloatingIndicatorStyle copyWith() => this;

  /// Merges [other] over this [FloatingIndicatorStyle]; null fields keep this value.
  FloatingIndicatorStyle mergeWith(FloatingIndicatorStyle? other) => this;
}

/// Resolved interaction state for [FloatingIndicator].
@immutable
class FloatingIndicatorState {
  /// Creates a [FloatingIndicatorState].
  const FloatingIndicatorState();
}

/// Values passed to [FloatingIndicatorDelegate] slots during build.
@immutable
class FloatingIndicatorContext {
  /// Creates a [FloatingIndicatorContext].
  const FloatingIndicatorContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.active,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final FloatingIndicatorStyle style;

  /// Resolved interaction state for this build.
  final FloatingIndicatorState state;

  /// The visual variant selected by the constructor.
  final FloatingIndicatorVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Whether this item is the active option.
  final int active;
}

/// Builder for the root slot.
class FloatingIndicatorRoot {
  /// Creates a [FloatingIndicatorRoot] from a builder function.
  const FloatingIndicatorRoot(this._build);

  final Widget Function(FloatingIndicatorContext context) _build;

  /// Invokes this slot with [context].
  Widget call(FloatingIndicatorContext context) => _build(context);
}

/// Theme-owned composition slots for [FloatingIndicator].
abstract class FloatingIndicatorDelegate extends ComponentDelegate {
  /// Creates a [FloatingIndicatorDelegate].
  const FloatingIndicatorDelegate();

  /// Builds the composition root.
  Widget root(FloatingIndicatorContext context);
}

/// A [FloatingIndicator] widget resolved through [FloatingIndicatorDelegate].
class FloatingIndicator extends StatelessWidget {
  /// Creates a [FloatingIndicator].
  const FloatingIndicator({
    super.key,
    required this.children,
    this.active,
    this.style,
  }) : variant = FloatingIndicatorVariant.defaults;

  /// The visual variant selected by the constructor.
  final FloatingIndicatorVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Whether this item is the active option.
  final int? active;

  /// Style overrides merged over theme defaults.
  final FloatingIndicatorStyle? style;

  /// Resolves properties and builds via [FloatingIndicatorDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedActive = active ?? 0;

    const fromProps = FloatingIndicatorStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = FloatingIndicatorState();
    final floatingIndicatorContext = FloatingIndicatorContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      active: resolvedActive,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<FloatingIndicatorDelegate>();
    return delegate.root(floatingIndicatorContext);
  }
}
