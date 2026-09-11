// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loader.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Loader].
enum LoaderVariant {
  /// The default variant.
  defaults,

  /// The oval variant.
  oval,

  /// The bars variant.
  bars,

  /// The dots variant.
  dots,
}

/// Resolved visual values for [Loader].
@immutable
class LoaderStyle {
  /// Creates a [LoaderStyle].
  const LoaderStyle();

  /// Returns a copy of this [LoaderStyle] with selected fields replaced.
  LoaderStyle copyWith() => this;

  /// Merges [other] over this [LoaderStyle]; null fields keep this value.
  LoaderStyle mergeWith(LoaderStyle? other) => this;
}

/// Resolved interaction state for [Loader].
@immutable
class LoaderState {
  /// Creates a [LoaderState].
  const LoaderState();
}

/// Values passed to [LoaderDelegate] slots during build.
@immutable
class LoaderContext {
  /// Creates a [LoaderContext].
  const LoaderContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.size,
    this.color,
    this.child,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final LoaderStyle style;

  /// Resolved interaction state for this build.
  final LoaderState state;

  /// The visual variant selected by the constructor.
  final LoaderVariant variant;

  /// Size token.
  final String size;

  /// Foreground or accent color.
  final String? color;

  /// The primary child widget.
  final Widget? child;
}

/// Builder for the root slot.
class LoaderRoot {
  /// Creates a [LoaderRoot] from a builder function.
  const LoaderRoot(this._build);

  final Widget Function(LoaderContext context) _build;

  /// Invokes this slot with [context].
  Widget call(LoaderContext context) => _build(context);
}

/// Theme-owned composition slots for [Loader].
abstract class LoaderDelegate extends ComponentDelegate {
  /// Creates a [LoaderDelegate].
  const LoaderDelegate();

  /// Builds the composition root.
  Widget root(LoaderContext context);
}

/// A [Loader] widget resolved through [LoaderDelegate].
class Loader extends StatelessWidget {
  /// Creates a [Loader].
  const Loader({super.key, this.size, this.color, this.child, this.style})
    : variant = LoaderVariant.defaults;

  /// Creates an oval [Loader].
  const Loader.oval({super.key, this.size, this.color, this.child, this.style})
    : variant = LoaderVariant.oval;

  /// Creates a bars [Loader].
  const Loader.bars({super.key, this.size, this.color, this.child, this.style})
    : variant = LoaderVariant.bars;

  /// Creates a dots [Loader].
  const Loader.dots({super.key, this.size, this.color, this.child, this.style})
    : variant = LoaderVariant.dots;

  /// The visual variant selected by the constructor.
  final LoaderVariant variant;

  /// Size token.
  final String? size;

  /// Foreground or accent color.
  final String? color;

  /// The primary child widget.
  final Widget? child;

  /// Style overrides merged over theme defaults.
  final LoaderStyle? style;

  /// Resolves properties and builds via [LoaderDelegate].
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
