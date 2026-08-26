// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loader.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum LoaderVariant { defaults, oval, bars, dots }

@immutable
class LoaderStyle {
  const LoaderStyle();

  LoaderStyle copyWith() => this;

  LoaderStyle mergeWith(LoaderStyle? other) => this;
}

@immutable
class LoaderState {
  const LoaderState();
}

@immutable
class LoaderContext {
  const LoaderContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.size,
    this.color,
    this.child,
  });

  final BuildContext context;
  final LoaderStyle style;
  final LoaderState state;
  final LoaderVariant variant;
  final String size;
  final String? color;
  final Widget? child;
}

class LoaderRoot {
  const LoaderRoot(this._build);

  final Widget Function(LoaderContext context) _build;

  Widget call(LoaderContext context) => _build(context);
}

abstract class LoaderDelegate extends ComponentDelegate {
  const LoaderDelegate();

  Widget root(LoaderContext context);
}

class Loader extends StatelessWidget {
  const Loader({super.key, this.size, this.color, this.child, this.style})
    : variant = LoaderVariant.defaults;

  const Loader.oval({super.key, this.size, this.color, this.child, this.style})
    : variant = LoaderVariant.oval;

  const Loader.bars({super.key, this.size, this.color, this.child, this.style})
    : variant = LoaderVariant.bars;

  const Loader.dots({super.key, this.size, this.color, this.child, this.style})
    : variant = LoaderVariant.dots;

  final LoaderVariant variant;
  final String? size;
  final String? color;
  final Widget? child;
  final LoaderStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedSize = size ?? 'md';
    final resolvedColor = color;
    final resolvedChild = child;

    const fromProps = LoaderStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = LoaderState();
    final loaderContext = LoaderContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      size: resolvedSize,
      color: resolvedColor,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(context).delegate<LoaderDelegate>();
    return delegate.root(loaderContext);
  }
}
