// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scroller.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Scroller].
enum ScrollerVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Scroller].
@immutable
class ScrollerStyle {
  /// Creates a [ScrollerStyle].
  const ScrollerStyle();

  /// Returns a copy of this [ScrollerStyle] with selected fields replaced.
  ScrollerStyle copyWith() => this;

  /// Merges [other] over this [ScrollerStyle]; null fields keep this value.
  ScrollerStyle mergeWith(ScrollerStyle? other) => this;
}

/// Resolved interaction state for [Scroller].
@immutable
class ScrollerState {
  /// Creates a [ScrollerState].
  const ScrollerState();
}

/// Values passed to [ScrollerDelegate] slots during build.
@immutable
class ScrollerContext {
  /// Creates a [ScrollerContext].
  const ScrollerContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.scrollAmount,
    required this.draggable,
    required this.controlSize,
    this.startControlIcon,
    this.endControlIcon,
    required this.showStartControl,
    required this.showEndControl,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ScrollerStyle style;

  /// Resolved interaction state for this build.
  final ScrollerState state;

  /// The visual variant selected by the constructor.
  final ScrollerVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Distance scrolled by each control press.
  final double scrollAmount;

  /// Whether the content can be dragged.
  final bool draggable;

  /// Size of the scroll controls.
  final double controlSize;

  /// The start control icon.
  final Widget? startControlIcon;

  /// The end control icon.
  final Widget? endControlIcon;

  /// Whether show start control.
  final bool showStartControl;

  /// Whether show end control.
  final bool showEndControl;
}

/// Builder for the root slot.
class ScrollerRoot {
  /// Creates a [ScrollerRoot] from a builder function.
  const ScrollerRoot(this._build);

  final Widget Function(ScrollerContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ScrollerContext context) => _build(context);
}

/// Theme-owned composition slots for [Scroller].
abstract class ScrollerDelegate extends ComponentDelegate {
  /// Creates a [ScrollerDelegate].
  const ScrollerDelegate();

  /// Builds the composition root.
  Widget root(ScrollerContext context);
}

/// A [Scroller] widget resolved through [ScrollerDelegate].
class Scroller extends StatelessWidget {
  /// Creates a [Scroller].
  const Scroller({
    super.key,
    required this.child,
    this.scrollAmount,
    this.draggable,
    this.controlSize,
    this.startControlIcon,
    this.endControlIcon,
    this.showStartControl,
    this.showEndControl,
    this.style,
  }) : variant = ScrollerVariant.defaults;

  /// The visual variant selected by the constructor.
  final ScrollerVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Distance scrolled by each control press.
  final double? scrollAmount;

  /// Whether the content can be dragged.
  final bool? draggable;

  /// Size of the scroll controls.
  final double? controlSize;

  /// The start control icon.
  final Widget? startControlIcon;

  /// The end control icon.
  final Widget? endControlIcon;

  /// Whether show start control.
  final bool? showStartControl;

  /// Whether show end control.
  final bool? showEndControl;

  /// Style overrides merged over theme defaults.
  final ScrollerStyle? style;

  /// Resolves properties and builds via [ScrollerDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedScrollAmount = scrollAmount ?? 200;
    final resolvedDraggable = draggable ?? true;
    final resolvedControlSize = controlSize ?? 50;
    final resolvedStartControlIcon = startControlIcon;
    final resolvedEndControlIcon = endControlIcon;
    final resolvedShowStartControl = showStartControl ?? false;
    final resolvedShowEndControl = showEndControl ?? false;

    const fromProps = ScrollerStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ScrollerState();
    final scrollerContext = ScrollerContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      scrollAmount: resolvedScrollAmount,
      draggable: resolvedDraggable,
      controlSize: resolvedControlSize,
      startControlIcon: resolvedStartControlIcon,
      endControlIcon: resolvedEndControlIcon,
      showStartControl: resolvedShowStartControl,
      showEndControl: resolvedShowEndControl,
    );
    final delegate = MantleTheme.of(context).delegate<ScrollerDelegate>();
    return delegate.root(scrollerContext);
  }
}
