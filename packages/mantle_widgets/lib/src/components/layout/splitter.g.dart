// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splitter.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum SplitterVariant { defaults }

@immutable
class SplitterStyle {
  const SplitterStyle();

  SplitterStyle copyWith() => this;

  SplitterStyle mergeWith(SplitterStyle? other) => this;
}

@immutable
class SplitterState {
  const SplitterState();
}

@immutable
class SplitterContext {
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

  final BuildContext context;
  final SplitterStyle style;
  final SplitterState state;
  final SplitterVariant variant;
  final List<Widget> children;
  final Axis orientation;
  final List<double>? sizes;
  final SplitterOnSizeChange? onSizeChange;
  final bool withHandle;
  final double lineSize;
}

class SplitterRoot {
  const SplitterRoot(this._build);

  final Widget Function(SplitterContext context) _build;

  Widget call(SplitterContext context) => _build(context);
}

abstract class SplitterDelegate extends ComponentDelegate {
  const SplitterDelegate();

  Widget root(SplitterContext context);
}

class Splitter extends StatelessWidget {
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

  final SplitterVariant variant;
  final List<Widget> children;
  final Axis? orientation;
  final List<double>? sizes;
  final SplitterOnSizeChange? onSizeChange;
  final bool? withHandle;
  final double? lineSize;
  final SplitterStyle? style;

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

enum SplitterPaneVariant { defaults }

@immutable
class SplitterPaneStyle {
  const SplitterPaneStyle();

  SplitterPaneStyle copyWith() => this;

  SplitterPaneStyle mergeWith(SplitterPaneStyle? other) => this;
}

@immutable
class SplitterPaneState {
  const SplitterPaneState();
}

@immutable
class SplitterPaneContext {
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

  final BuildContext context;
  final SplitterPaneStyle style;
  final SplitterPaneState state;
  final SplitterPaneVariant variant;
  final Widget child;
  final double defaultSize;
  final double? min;
  final double? max;
  final bool collapsible;
}

class SplitterPaneRoot {
  const SplitterPaneRoot(this._build);

  final Widget Function(SplitterPaneContext context) _build;

  Widget call(SplitterPaneContext context) => _build(context);
}

abstract class SplitterPaneDelegate extends ComponentDelegate {
  const SplitterPaneDelegate();

  Widget root(SplitterPaneContext context);
}

class SplitterPane extends StatelessWidget {
  const SplitterPane({
    super.key,
    required this.child,
    this.defaultSize,
    this.min,
    this.max,
    this.collapsible,
    this.style,
  }) : variant = SplitterPaneVariant.defaults;

  final SplitterPaneVariant variant;
  final Widget child;
  final double? defaultSize;
  final double? min;
  final double? max;
  final bool? collapsible;
  final SplitterPaneStyle? style;

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
