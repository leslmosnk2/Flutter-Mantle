// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blockquote.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum BlockquoteVariant { defaults }

@immutable
class BlockquoteStyle {
  const BlockquoteStyle();

  BlockquoteStyle copyWith() => this;

  BlockquoteStyle mergeWith(BlockquoteStyle? other) => this;
}

@immutable
class BlockquoteState {
  const BlockquoteState();
}

@immutable
class BlockquoteContext {
  const BlockquoteContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.cite,
    this.icon,
    required this.iconSize,
    this.color,
    required this.radius,
  });

  final BuildContext context;
  final BlockquoteStyle style;
  final BlockquoteState state;
  final BlockquoteVariant variant;
  final Widget child;
  final Widget? cite;
  final Widget? icon;
  final double iconSize;
  final String? color;
  final BorderRadiusGeometry radius;
}

class BlockquoteRoot {
  const BlockquoteRoot(this._build);

  final Widget Function(BlockquoteContext context) _build;

  Widget call(BlockquoteContext context) => _build(context);
}

abstract class BlockquoteDelegate extends ComponentDelegate {
  const BlockquoteDelegate();

  Widget root(BlockquoteContext context);
}

class Blockquote extends StatelessWidget {
  const Blockquote({
    super.key,
    required this.child,
    this.cite,
    this.icon,
    this.iconSize,
    this.color,
    this.radius,
    this.style,
  }) : variant = BlockquoteVariant.defaults;

  final BlockquoteVariant variant;
  final Widget child;
  final Widget? cite;
  final Widget? icon;
  final double? iconSize;
  final String? color;
  final BorderRadiusGeometry? radius;
  final BlockquoteStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedCite = cite;
    final resolvedIcon = icon;
    final resolvedIconSize = iconSize ?? 48;
    final resolvedColor = color;
    final resolvedRadius = radius ?? typographyDefaultRadius(context);

    const fromProps = BlockquoteStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = BlockquoteState();
    final blockquoteContext = BlockquoteContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      cite: resolvedCite,
      icon: resolvedIcon,
      iconSize: resolvedIconSize,
      color: resolvedColor,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<BlockquoteDelegate>();
    return delegate.root(blockquoteContext);
  }
}
