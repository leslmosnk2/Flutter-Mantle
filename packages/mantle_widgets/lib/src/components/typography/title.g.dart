// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum MTitleVariant { defaults }

@immutable
class MTitleStyle {
  const MTitleStyle();

  MTitleStyle copyWith() => this;

  MTitleStyle mergeWith(MTitleStyle? other) => this;
}

@immutable
class MTitleState {
  const MTitleState();
}

@immutable
class MTitleContext {
  const MTitleContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.order,
    this.size,
    this.lineClamp,
  });

  final BuildContext context;
  final MTitleStyle style;
  final MTitleState state;
  final MTitleVariant variant;
  final Widget child;
  final int order;
  final String? size;
  final int? lineClamp;
}

class MTitleRoot {
  const MTitleRoot(this._build);

  final Widget Function(MTitleContext context) _build;

  Widget call(MTitleContext context) => _build(context);
}

abstract class MTitleDelegate extends ComponentDelegate {
  const MTitleDelegate();

  Widget root(MTitleContext context);
}

class MTitle extends StatelessWidget {
  const MTitle({
    super.key,
    required this.child,
    this.order,
    this.size,
    this.lineClamp,
    this.style,
  }) : variant = MTitleVariant.defaults;

  final MTitleVariant variant;
  final Widget child;
  final int? order;
  final String? size;
  final int? lineClamp;
  final MTitleStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedOrder = order ?? 1;
    final resolvedSize = size;
    final resolvedLineClamp = lineClamp;

    const fromProps = MTitleStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MTitleState();
    final mTitleContext = MTitleContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      order: resolvedOrder,
      size: resolvedSize,
      lineClamp: resolvedLineClamp,
    );
    final delegate = MantleTheme.of(context).delegate<MTitleDelegate>();
    return delegate.root(mTitleContext);
  }
}
