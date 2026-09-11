// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scroll_area.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [ScrollArea].
enum ScrollAreaVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [ScrollArea].
@immutable
class ScrollAreaStyle {
  /// Creates a [ScrollAreaStyle].
  const ScrollAreaStyle();

  /// Returns a copy of this [ScrollAreaStyle] with selected fields replaced.
  ScrollAreaStyle copyWith() => this;

  /// Merges [other] over this [ScrollAreaStyle]; null fields keep this value.
  ScrollAreaStyle mergeWith(ScrollAreaStyle? other) => this;
}

/// Resolved interaction state for [ScrollArea].
@immutable
class ScrollAreaState {
  /// Creates a [ScrollAreaState].
  const ScrollAreaState();
}

/// Values passed to [ScrollAreaDelegate] slots during build.
@immutable
class ScrollAreaContext {
  /// Creates a [ScrollAreaContext].
  const ScrollAreaContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.type,
    required this.scrollbars,
    this.onScrollPositionChange,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ScrollAreaStyle style;

  /// Resolved interaction state for this build.
  final ScrollAreaState state;

  /// The visual variant selected by the constructor.
  final ScrollAreaVariant variant;

  /// The primary child widget.
  final Widget child;

  /// The type.
  final ScrollAreaType type;

  /// The scrollbars.
  final ScrollAreaScrollbars scrollbars;

  /// Called when scroll position change.
  final ScrollAreaOnScrollPositionChange? onScrollPositionChange;
}

/// Builder for the root slot.
class ScrollAreaRoot {
  /// Creates a [ScrollAreaRoot] from a builder function.
  const ScrollAreaRoot(this._build);

  final Widget Function(ScrollAreaContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ScrollAreaContext context) => _build(context);
}

/// Theme-owned composition slots for [ScrollArea].
abstract class ScrollAreaDelegate extends ComponentDelegate {
  /// Creates a [ScrollAreaDelegate].
  const ScrollAreaDelegate();

  /// Builds the composition root.
  Widget root(ScrollAreaContext context);
}

/// A [ScrollArea] widget resolved through [ScrollAreaDelegate].
class ScrollArea extends StatelessWidget {
  /// Creates a [ScrollArea].
  const ScrollArea({
    super.key,
    required this.child,
    this.type,
    this.scrollbars,
    this.onScrollPositionChange,
    this.style,
  }) : variant = ScrollAreaVariant.defaults;

  /// The visual variant selected by the constructor.
  final ScrollAreaVariant variant;

  /// The primary child widget.
  final Widget child;

  /// The type.
  final ScrollAreaType? type;

  /// The scrollbars.
  final ScrollAreaScrollbars? scrollbars;

  /// Called when scroll position change.
  final ScrollAreaOnScrollPositionChange? onScrollPositionChange;

  /// Style overrides merged over theme defaults.
  final ScrollAreaStyle? style;

  /// Resolves properties and builds via [ScrollAreaDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedType = type ?? ScrollAreaType.hover;
    final resolvedScrollbars = scrollbars ?? ScrollAreaScrollbars.xy;
    final resolvedOnScrollPositionChange = onScrollPositionChange;

    const fromProps = ScrollAreaStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ScrollAreaState();
    final scrollAreaContext = ScrollAreaContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      type: resolvedType,
      scrollbars: resolvedScrollbars,
      onScrollPositionChange: resolvedOnScrollPositionChange,
    );
    final delegate = MantleTheme.of(context).delegate<ScrollAreaDelegate>();
    return delegate.root(scrollAreaContext);
  }
}
