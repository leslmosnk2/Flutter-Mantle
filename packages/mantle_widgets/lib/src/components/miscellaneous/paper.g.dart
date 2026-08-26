// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paper.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum PaperVariant { defaults }

@immutable
class PaperStyle {
  const PaperStyle();

  PaperStyle copyWith() => this;

  PaperStyle mergeWith(PaperStyle? other) => this;
}

@immutable
class PaperState {
  const PaperState();
}

@immutable
class PaperContext {
  const PaperContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.child,
    required this.radius,
    this.shadow,
    required this.withBorder,
    this.padding,
  });

  final BuildContext context;
  final PaperStyle style;
  final PaperState state;
  final PaperVariant variant;
  final Widget? child;
  final BorderRadiusGeometry radius;
  final String? shadow;
  final bool withBorder;
  final String? padding;
}

class PaperRoot {
  const PaperRoot(this._build);

  final Widget Function(PaperContext context) _build;

  Widget call(PaperContext context) => _build(context);
}

abstract class PaperDelegate extends ComponentDelegate {
  const PaperDelegate();

  Widget root(PaperContext context);
}

class Paper extends StatelessWidget {
  const Paper({
    super.key,
    this.child,
    this.radius,
    this.shadow,
    this.withBorder,
    this.padding,
    this.style,
  }) : variant = PaperVariant.defaults;

  final PaperVariant variant;
  final Widget? child;
  final BorderRadiusGeometry? radius;
  final String? shadow;
  final bool? withBorder;
  final String? padding;
  final PaperStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedRadius = radius ?? miscellaneousDefaultRadius(context);
    final resolvedShadow = shadow;
    final resolvedWithBorder = withBorder ?? false;
    final resolvedPadding = padding;

    const fromProps = PaperStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = PaperState();
    final paperContext = PaperContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      radius: resolvedRadius,
      shadow: resolvedShadow,
      withBorder: resolvedWithBorder,
      padding: resolvedPadding,
    );
    final delegate = MantleTheme.of(context).delegate<PaperDelegate>();
    return delegate.root(paperContext);
  }
}
