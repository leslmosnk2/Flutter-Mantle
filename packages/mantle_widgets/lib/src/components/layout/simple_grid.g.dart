// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_grid.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum SimpleGridVariant { defaults }

@immutable
class SimpleGridStyle {
  const SimpleGridStyle();

  SimpleGridStyle copyWith() => this;

  SimpleGridStyle mergeWith(SimpleGridStyle? other) => this;
}

@immutable
class SimpleGridState {
  const SimpleGridState();
}

@immutable
class SimpleGridContext {
  const SimpleGridContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.cols,
    required this.spacing,
    this.verticalSpacing,
    this.responsiveCols,
  });

  final BuildContext context;
  final SimpleGridStyle style;
  final SimpleGridState state;
  final SimpleGridVariant variant;
  final List<Widget> children;
  final int cols;
  final String spacing;
  final String? verticalSpacing;
  final MantleResponsive<int>? responsiveCols;
}

class SimpleGridRoot {
  const SimpleGridRoot(this._build);

  final Widget Function(SimpleGridContext context) _build;

  Widget call(SimpleGridContext context) => _build(context);
}

abstract class SimpleGridDelegate extends ComponentDelegate {
  const SimpleGridDelegate();

  Widget root(SimpleGridContext context);
}

class SimpleGrid extends StatelessWidget {
  const SimpleGrid({
    super.key,
    required this.children,
    this.cols,
    this.spacing,
    this.verticalSpacing,
    this.responsiveCols,
    this.style,
  }) : variant = SimpleGridVariant.defaults;

  final SimpleGridVariant variant;
  final List<Widget> children;
  final int? cols;
  final String? spacing;
  final String? verticalSpacing;
  final MantleResponsive<int>? responsiveCols;
  final SimpleGridStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedCols = cols ?? 1;
    final resolvedSpacing = spacing ?? 'md';
    final resolvedVerticalSpacing = verticalSpacing;
    final resolvedResponsiveCols = responsiveCols;

    const fromProps = SimpleGridStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = SimpleGridState();
    final simpleGridContext = SimpleGridContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      cols: resolvedCols,
      spacing: resolvedSpacing,
      verticalSpacing: resolvedVerticalSpacing,
      responsiveCols: resolvedResponsiveCols,
    );
    final delegate = MantleTheme.of(context).delegate<SimpleGridDelegate>();
    return delegate.root(simpleGridContext);
  }
}
