// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'affix.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum AffixVariant { defaults }

@immutable
class AffixStyle {
  const AffixStyle();

  AffixStyle copyWith() => this;

  AffixStyle mergeWith(AffixStyle? other) => this;
}

@immutable
class AffixState {
  const AffixState();
}

@immutable
class AffixContext {
  const AffixContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.top,
    this.left,
    this.bottom,
    this.right,
  });

  final BuildContext context;
  final AffixStyle style;
  final AffixState state;
  final AffixVariant variant;
  final Widget child;
  final double? top;
  final double? left;
  final double? bottom;
  final double? right;
}

class AffixRoot {
  const AffixRoot(this._build);

  final Widget Function(AffixContext context) _build;

  Widget call(AffixContext context) => _build(context);
}

abstract class AffixDelegate extends ComponentDelegate {
  const AffixDelegate();

  Widget root(AffixContext context);
}

class Affix extends StatelessWidget {
  const Affix({
    super.key,
    required this.child,
    this.top,
    this.left,
    this.bottom,
    this.right,
    this.style,
  }) : variant = AffixVariant.defaults;

  final AffixVariant variant;
  final Widget child;
  final double? top;
  final double? left;
  final double? bottom;
  final double? right;
  final AffixStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedTop = top;
    final resolvedLeft = left;
    final resolvedBottom = bottom;
    final resolvedRight = right;

    const fromProps = AffixStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = AffixState();
    final affixContext = AffixContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      top: resolvedTop,
      left: resolvedLeft,
      bottom: resolvedBottom,
      right: resolvedRight,
    );
    final delegate = MantleTheme.of(context).delegate<AffixDelegate>();
    return delegate.root(affixContext);
  }
}
