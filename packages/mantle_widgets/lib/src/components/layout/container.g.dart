// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'container.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum MContainerVariant { defaults }

@immutable
class MContainerStyle {
  const MContainerStyle();

  MContainerStyle copyWith() => this;

  MContainerStyle mergeWith(MContainerStyle? other) => this;
}

@immutable
class MContainerState {
  const MContainerState();
}

@immutable
class MContainerContext {
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

  final BuildContext context;
  final MContainerStyle style;
  final MContainerState state;
  final MContainerVariant variant;
  final Widget child;
  final String size;
  final bool fluid;
  final ContainerStrategy strategy;
}

class MContainerRoot {
  const MContainerRoot(this._build);

  final Widget Function(MContainerContext context) _build;

  Widget call(MContainerContext context) => _build(context);
}

abstract class MContainerDelegate extends ComponentDelegate {
  const MContainerDelegate();

  Widget root(MContainerContext context);
}

class MContainer extends StatelessWidget {
  const MContainer({
    super.key,
    required this.child,
    this.size,
    this.fluid,
    this.strategy,
    this.style,
  }) : variant = MContainerVariant.defaults;

  final MContainerVariant variant;
  final Widget child;
  final String? size;
  final bool? fluid;
  final ContainerStrategy? strategy;
  final MContainerStyle? style;

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
