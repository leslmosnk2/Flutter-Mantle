// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flex.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum MFlexVariant { defaults }

@immutable
class MFlexStyle {
  const MFlexStyle();

  MFlexStyle copyWith() => this;

  MFlexStyle mergeWith(MFlexStyle? other) => this;
}

@immutable
class MFlexState {
  const MFlexState();
}

@immutable
class MFlexContext {
  const MFlexContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.direction,
    required this.align,
    required this.justify,
    required this.wrap,
    this.gap,
    this.rowGap,
    this.columnGap,
  });

  final BuildContext context;
  final MFlexStyle style;
  final MFlexState state;
  final MFlexVariant variant;
  final List<Widget> children;
  final Axis direction;
  final CrossAxisAlignment align;
  final MainAxisAlignment justify;
  final bool wrap;
  final String? gap;
  final String? rowGap;
  final String? columnGap;
}

class MFlexRoot {
  const MFlexRoot(this._build);

  final Widget Function(MFlexContext context) _build;

  Widget call(MFlexContext context) => _build(context);
}

abstract class MFlexDelegate extends ComponentDelegate {
  const MFlexDelegate();

  Widget root(MFlexContext context);
}

class MFlex extends StatelessWidget {
  const MFlex({
    super.key,
    required this.children,
    this.direction,
    this.align,
    this.justify,
    this.wrap,
    this.gap,
    this.rowGap,
    this.columnGap,
    this.style,
  }) : variant = MFlexVariant.defaults;

  final MFlexVariant variant;
  final List<Widget> children;
  final Axis? direction;
  final CrossAxisAlignment? align;
  final MainAxisAlignment? justify;
  final bool? wrap;
  final String? gap;
  final String? rowGap;
  final String? columnGap;
  final MFlexStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedDirection = direction ?? Axis.horizontal;
    final resolvedAlign = align ?? CrossAxisAlignment.center;
    final resolvedJustify = justify ?? MainAxisAlignment.start;
    final resolvedWrap = wrap ?? false;
    final resolvedGap = gap;
    final resolvedRowGap = rowGap;
    final resolvedColumnGap = columnGap;

    const fromProps = MFlexStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MFlexState();
    final mFlexContext = MFlexContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      direction: resolvedDirection,
      align: resolvedAlign,
      justify: resolvedJustify,
      wrap: resolvedWrap,
      gap: resolvedGap,
      rowGap: resolvedRowGap,
      columnGap: resolvedColumnGap,
    );
    final delegate = MantleTheme.of(context).delegate<MFlexDelegate>();
    return delegate.root(mFlexContext);
  }
}
