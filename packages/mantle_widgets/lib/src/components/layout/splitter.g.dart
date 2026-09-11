// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splitter.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Splitter].
enum SplitterVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Splitter].
@immutable
class SplitterStyle {
  /// Creates a [SplitterStyle].
  const SplitterStyle();

  /// Returns a copy of this [SplitterStyle] with selected fields replaced.
  SplitterStyle copyWith() => this;

  /// Merges [other] over this [SplitterStyle]; null fields keep this value.
  SplitterStyle mergeWith(SplitterStyle? other) => this;
}

/// Resolved interaction state for [Splitter].
@immutable
class SplitterState {
  /// Creates a [SplitterState].
  const SplitterState();
}

/// Values passed to [SplitterDelegate] slots during build.
@immutable
class SplitterContext {
  /// Creates a [SplitterContext].
  const SplitterContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.orientation,
    this.sizes,
    this.onSizeChange,
    required this.withHandle,
    required this.lineSize,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final SplitterStyle style;

  /// Resolved interaction state for this build.
  final SplitterState state;

  /// The visual variant selected by the constructor.
  final SplitterVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The orientation.
  final Axis orientation;

  /// The sizes.
  final List<double>? sizes;

  /// Called when size change.
  final SplitterOnSizeChange? onSizeChange;

  /// Whether with handle.
  final bool withHandle;

  /// The line size.
  final double lineSize;
}

/// Builder for the root slot.
class SplitterRoot {
  /// Creates a [SplitterRoot] from a builder function.
  const SplitterRoot(this._build);

  final Widget Function(SplitterContext context) _build;

  /// Invokes this slot with [context].
  Widget call(SplitterContext context) => _build(context);
}

/// Theme-owned composition slots for [Splitter].
abstract class SplitterDelegate extends ComponentDelegate {
  /// Creates a [SplitterDelegate].
  const SplitterDelegate();

  /// Builds the composition root.
  Widget root(SplitterContext context);
}

/// A [Splitter] widget resolved through [SplitterDelegate].
class Splitter extends StatelessWidget {
  /// Creates a [Splitter].
  const Splitter({
    super.key,
    required this.children,
    this.orientation,
    this.sizes,
    this.onSizeChange,
    this.withHandle,
    this.lineSize,
    this.style,
  }) : variant = SplitterVariant.defaults;

  /// The visual variant selected by the constructor.
  final SplitterVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The orientation.
  final Axis? orientation;

  /// The sizes.
  final List<double>? sizes;

  /// Called when size change.
  final SplitterOnSizeChange? onSizeChange;

  /// Whether with handle.
  final bool? withHandle;

  /// The line size.
  final double? lineSize;

  /// Style overrides merged over theme defaults.
  final SplitterStyle? style;

  /// Resolves properties and builds via [SplitterDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedOrientation = orientation ?? Axis.horizontal;
    final resolvedSizes = sizes;
    final resolvedOnSizeChange = onSizeChange;
    final resolvedWithHandle = withHandle ?? true;
    final resolvedLineSize = lineSize ?? 2;

    const fromProps = SplitterStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = SplitterState();
    final splitterContext = SplitterContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      orientation: resolvedOrientation,
      sizes: resolvedSizes,
      onSizeChange: resolvedOnSizeChange,
      withHandle: resolvedWithHandle,
      lineSize: resolvedLineSize,
    );
    final delegate = MantleTheme.of(context).delegate<SplitterDelegate>();
    return delegate.root(splitterContext);
  }
}

/// Visual variants of [SplitterPane].
enum SplitterPaneVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [SplitterPane].
@immutable
class SplitterPaneStyle {
  /// Creates a [SplitterPaneStyle].
  const SplitterPaneStyle();

  /// Returns a copy of this [SplitterPaneStyle] with selected fields replaced.
  SplitterPaneStyle copyWith() => this;

  /// Merges [other] over this [SplitterPaneStyle]; null fields keep this value.
  SplitterPaneStyle mergeWith(SplitterPaneStyle? other) => this;
}

/// Resolved interaction state for [SplitterPane].
@immutable
class SplitterPaneState {
  /// Creates a [SplitterPaneState].
  const SplitterPaneState();
}

/// Values passed to [SplitterPaneDelegate] slots during build.
@immutable
class SplitterPaneContext {
  /// Creates a [SplitterPaneContext].
  const SplitterPaneContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.defaultSize,
    this.min,
    this.max,
    required this.collapsible,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final SplitterPaneStyle style;

  /// Resolved interaction state for this build.
  final SplitterPaneState state;

  /// The visual variant selected by the constructor.
  final SplitterPaneVariant variant;

  /// The primary child widget.
  final Widget child;

  /// The default size.
  final double defaultSize;

  /// The min.
  final double? min;

  /// The max.
  final double? max;

  /// Whether collapsible.
  final bool collapsible;
}

/// Builder for the root slot.
class SplitterPaneRoot {
  /// Creates a [SplitterPaneRoot] from a builder function.
  const SplitterPaneRoot(this._build);

  final Widget Function(SplitterPaneContext context) _build;

  /// Invokes this slot with [context].
  Widget call(SplitterPaneContext context) => _build(context);
}

/// Theme-owned composition slots for [SplitterPane].
abstract class SplitterPaneDelegate extends ComponentDelegate {
  /// Creates a [SplitterPaneDelegate].
  const SplitterPaneDelegate();

  /// Builds the composition root.
  Widget root(SplitterPaneContext context);
}

/// A [SplitterPane] widget resolved through [SplitterPaneDelegate].
class SplitterPane extends StatelessWidget {
  /// Creates a [SplitterPane].
  const SplitterPane({
    super.key,
    required this.child,
    this.defaultSize,
    this.min,
    this.max,
    this.collapsible,
    this.style,
  }) : variant = SplitterPaneVariant.defaults;

  /// The visual variant selected by the constructor.
  final SplitterPaneVariant variant;

  /// The primary child widget.
  final Widget child;

  /// The default size.
  final double? defaultSize;

  /// The min.
  final double? min;

  /// The max.
  final double? max;

  /// Whether collapsible.
  final bool? collapsible;

  /// Style overrides merged over theme defaults.
  final SplitterPaneStyle? style;

  /// Resolves properties and builds via [SplitterPaneDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedDefaultSize = defaultSize ?? 50;
    final resolvedMin = min;
    final resolvedMax = max;
    final resolvedCollapsible = collapsible ?? false;

    const fromProps = SplitterPaneStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = SplitterPaneState();
    final splitterPaneContext = SplitterPaneContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      defaultSize: resolvedDefaultSize,
      min: resolvedMin,
      max: resolvedMax,
      collapsible: resolvedCollapsible,
    );
    final delegate = MantleTheme.of(context).delegate<SplitterPaneDelegate>();
    return delegate.root(splitterPaneContext);
  }
}
