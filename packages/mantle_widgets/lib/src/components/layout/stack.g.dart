// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stack.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum MStackVariant { defaults }

@immutable
class MStackStyle {
  const MStackStyle();

  MStackStyle copyWith() => this;

  MStackStyle mergeWith(MStackStyle? other) => this;
}

@immutable
class MStackState {
  const MStackState();
}

@immutable
class MStackContext {
  const MStackContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.gap,
    required this.align,
    required this.justify,
  });

  final BuildContext context;
  final MStackStyle style;
  final MStackState state;
  final MStackVariant variant;
  final List<Widget> children;
  final String gap;
  final CrossAxisAlignment align;
  final MainAxisAlignment justify;
}

class MStackRoot {
  const MStackRoot(this._build);

  final Widget Function(MStackContext context) _build;

  Widget call(MStackContext context) => _build(context);
}

abstract class MStackDelegate extends ComponentDelegate {
  const MStackDelegate();

  Widget root(MStackContext context);
}

class MStack extends StatelessWidget {
  const MStack({
    super.key,
    required this.children,
    this.gap,
    this.align,
    this.justify,
    this.style,
  }) : variant = MStackVariant.defaults;

  final MStackVariant variant;
  final List<Widget> children;
  final String? gap;
  final CrossAxisAlignment? align;
  final MainAxisAlignment? justify;
  final MStackStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedGap = gap ?? 'md';
    final resolvedAlign = align ?? CrossAxisAlignment.stretch;
    final resolvedJustify = justify ?? MainAxisAlignment.start;

    const fromProps = MStackStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MStackState();
    final mStackContext = MStackContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      gap: resolvedGap,
      align: resolvedAlign,
      justify: resolvedJustify,
    );
    final delegate = MantleTheme.of(context).delegate<MStackDelegate>();
    return delegate.root(mStackContext);
  }
}
