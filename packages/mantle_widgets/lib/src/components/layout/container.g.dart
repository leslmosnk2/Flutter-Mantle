// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [MContainer].
enum MContainerVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MContainer].
@immutable
class MContainerStyle {
  /// Creates a [MContainerStyle].
  const MContainerStyle();

  /// Returns a copy of this [MContainerStyle] with selected fields replaced.
  MContainerStyle copyWith() => this;

  /// Merges [other] over this [MContainerStyle]; null fields keep this value.
  MContainerStyle mergeWith(MContainerStyle? other) => this;
}

/// Resolved interaction state for [MContainer].
@immutable
class MContainerState {
  /// Creates a [MContainerState].
  const MContainerState();
}

/// Values passed to [MContainerDelegate] slots during build.
@immutable
class MContainerContext {
  /// Creates a [MContainerContext].
  const MContainerContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.size,
    required this.fluid,
    required this.strategy,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MContainerStyle style;

  /// Resolved interaction state for this build.
  final MContainerState state;

  /// The visual variant selected by the constructor.
  final MContainerVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Size token.
  final String size;

  /// Whether fluid.
  final bool fluid;

  /// The strategy.
  final ContainerStrategy strategy;
}

/// Builder for the root slot.
class MContainerRoot {
  /// Creates a [MContainerRoot] from a builder function.
  const MContainerRoot(this._build);

  final Widget Function(MContainerContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MContainerContext context) => _build(context);
}

/// Theme-owned composition slots for [MContainer].
abstract class MContainerDelegate extends ComponentDelegate {
  /// Creates a [MContainerDelegate].
  const MContainerDelegate();

  /// Builds the composition root.
  Widget root(MContainerContext context);
}

/// A [MContainer] widget resolved through [MContainerDelegate].
class MContainer extends StatelessWidget {
  /// Creates a [MContainer].
  const MContainer({
    super.key,
    required this.child,
    this.size,
    this.fluid,
    this.strategy,
    this.style,
  }) : variant = MContainerVariant.defaults;

  /// The visual variant selected by the constructor.
  final MContainerVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Size token.
  final String? size;

  /// Whether fluid.
  final bool? fluid;

  /// The strategy.
  final ContainerStrategy? strategy;

  /// Style overrides merged over theme defaults.
  final MContainerStyle? style;

  /// Resolves properties and builds via [MContainerDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedSize = size ?? 'md';
    final resolvedFluid = fluid ?? false;
    final resolvedStrategy = strategy ?? ContainerStrategy.block;

    const fromProps = MContainerStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MContainerState();
    final mContainerContext = MContainerContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      size: resolvedSize,
      fluid: resolvedFluid,
      strategy: resolvedStrategy,
    );
    final delegate = MantleTheme.of(context).delegate<MContainerDelegate>();
    return delegate.root(mContainerContext);
  }
}
