// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Pagination].
enum PaginationVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Pagination].
@immutable
class PaginationStyle {
  /// Creates a [PaginationStyle].
  const PaginationStyle();

  /// Returns a copy of this [PaginationStyle] with selected fields replaced.
  PaginationStyle copyWith() => this;

  /// Merges [other] over this [PaginationStyle]; null fields keep this value.
  PaginationStyle mergeWith(PaginationStyle? other) => this;
}

/// Resolved interaction state for [Pagination].
@immutable
class PaginationState {
  /// Creates a [PaginationState].
  const PaginationState();
}

/// Values passed to [PaginationDelegate] slots during build.
@immutable
class PaginationContext {
  /// Creates a [PaginationContext].
  const PaginationContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.total,
    required this.value,
    this.onChange,
    required this.siblings,
    required this.boundaries,
    required this.withControls,
    required this.withEdges,
    required this.withPages,
    required this.hideWithOnePage,
    required this.disabled,
    required this.size,
    this.color,
    required this.gap,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final PaginationStyle style;

  /// Resolved interaction state for this build.
  final PaginationState state;

  /// The visual variant selected by the constructor.
  final PaginationVariant variant;

  /// The total.
  final int total;

  /// The controlled value.
  final int value;

  /// Called when the value changes.
  final PaginationOnChange? onChange;

  /// The siblings.
  final int siblings;

  /// The boundaries.
  final int boundaries;

  /// Whether with controls.
  final bool withControls;

  /// Whether with edges.
  final bool withEdges;

  /// Whether with pages.
  final bool withPages;

  /// Whether hide with one page.
  final bool hideWithOnePage;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Size token.
  final String size;

  /// Foreground or accent color.
  final String? color;

  /// Spacing token between items.
  final double gap;
}

/// Builder for the root slot.
class PaginationRoot {
  /// Creates a [PaginationRoot] from a builder function.
  const PaginationRoot(this._build);

  final Widget Function(PaginationContext context) _build;

  /// Invokes this slot with [context].
  Widget call(PaginationContext context) => _build(context);
}

/// Theme-owned composition slots for [Pagination].
abstract class PaginationDelegate extends ComponentDelegate {
  /// Creates a [PaginationDelegate].
  const PaginationDelegate();

  /// Builds the composition root.
  Widget root(PaginationContext context);
}

/// A [Pagination] widget resolved through [PaginationDelegate].
class Pagination extends StatelessWidget {
  /// Creates a [Pagination].
  const Pagination({
    super.key,
    required this.total,
    this.value,
    this.onChange,
    this.siblings,
    this.boundaries,
    this.withControls,
    this.withEdges,
    this.withPages,
    this.hideWithOnePage,
    this.disabled,
    this.size,
    this.color,
    this.gap,
    this.style,
  }) : variant = PaginationVariant.defaults;

  /// The visual variant selected by the constructor.
  final PaginationVariant variant;

  /// The total.
  final int total;

  /// The controlled value.
  final int? value;

  /// Called when the value changes.
  final PaginationOnChange? onChange;

  /// The siblings.
  final int? siblings;

  /// The boundaries.
  final int? boundaries;

  /// Whether with controls.
  final bool? withControls;

  /// Whether with edges.
  final bool? withEdges;

  /// Whether with pages.
  final bool? withPages;

  /// Whether hide with one page.
  final bool? hideWithOnePage;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Size token.
  final String? size;

  /// Foreground or accent color.
  final String? color;

  /// Spacing token between items.
  final double? gap;

  /// Style overrides merged over theme defaults.
  final PaginationStyle? style;

  /// Resolves properties and builds via [PaginationDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedTotal = total;
    final resolvedValue = value ?? 1;
    final resolvedOnChange = onChange;
    final resolvedSiblings = siblings ?? 1;
    final resolvedBoundaries = boundaries ?? 1;
    final resolvedWithControls = withControls ?? true;
    final resolvedWithEdges = withEdges ?? false;
    final resolvedWithPages = withPages ?? true;
    final resolvedHideWithOnePage = hideWithOnePage ?? false;
    final resolvedDisabled = disabled ?? false;
    final resolvedSize = size ?? 'md';
    final resolvedColor = color;
    final resolvedGap = gap ?? 8;

    const fromProps = PaginationStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = PaginationState();
    final paginationContext = PaginationContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      total: resolvedTotal,
      value: resolvedValue,
      onChange: resolvedOnChange,
      siblings: resolvedSiblings,
      boundaries: resolvedBoundaries,
      withControls: resolvedWithControls,
      withEdges: resolvedWithEdges,
      withPages: resolvedWithPages,
      hideWithOnePage: resolvedHideWithOnePage,
      disabled: resolvedDisabled,
      size: resolvedSize,
      color: resolvedColor,
      gap: resolvedGap,
    );
    final delegate = MantleTheme.of(context).delegate<PaginationDelegate>();
    return delegate.root(paginationContext);
  }
}

/// Visual variants of [PaginationControl].
enum PaginationControlVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [PaginationControl].
@immutable
class PaginationControlStyle {
  /// Creates a [PaginationControlStyle].
  const PaginationControlStyle();

  /// Returns a copy of this [PaginationControlStyle] with selected fields replaced.
  PaginationControlStyle copyWith() => this;

  /// Merges [other] over this [PaginationControlStyle]; null fields keep this value.
  PaginationControlStyle mergeWith(PaginationControlStyle? other) => this;
}

/// Resolved interaction state for [PaginationControl].
@immutable
class PaginationControlState {
  /// Creates a [PaginationControlState].
  const PaginationControlState();
}

/// Values passed to [PaginationControlDelegate] slots during build.
@immutable
class PaginationControlContext {
  /// Creates a [PaginationControlContext].
  const PaginationControlContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.onPressed,
    required this.active,
    required this.disabled,
    required this.withPadding,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final PaginationControlStyle style;

  /// Resolved interaction state for this build.
  final PaginationControlState state;

  /// The visual variant selected by the constructor.
  final PaginationControlVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Called when the control is pressed.
  final VoidCallback? onPressed;

  /// Whether this item is the active option.
  final bool active;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether to include default padding.
  final bool withPadding;
}

/// Builder for the root slot.
class PaginationControlRoot {
  /// Creates a [PaginationControlRoot] from a builder function.
  const PaginationControlRoot(this._build);

  final Widget Function(PaginationControlContext context) _build;

  /// Invokes this slot with [context].
  Widget call(PaginationControlContext context) => _build(context);
}

/// Theme-owned composition slots for [PaginationControl].
abstract class PaginationControlDelegate extends ComponentDelegate {
  /// Creates a [PaginationControlDelegate].
  const PaginationControlDelegate();

  /// Builds the composition root.
  Widget root(PaginationControlContext context);
}

/// A [PaginationControl] widget resolved through [PaginationControlDelegate].
class PaginationControl extends StatelessWidget {
  /// Creates a [PaginationControl].
  const PaginationControl({
    super.key,
    required this.child,
    this.onPressed,
    this.active,
    this.disabled,
    this.withPadding,
    this.style,
  }) : variant = PaginationControlVariant.defaults;

  /// The visual variant selected by the constructor.
  final PaginationControlVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Called when the control is pressed.
  final VoidCallback? onPressed;

  /// Whether this item is the active option.
  final bool? active;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Whether to include default padding.
  final bool? withPadding;

  /// Style overrides merged over theme defaults.
  final PaginationControlStyle? style;

  /// Resolves properties and builds via [PaginationControlDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedOnPressed = onPressed;
    final resolvedActive = active ?? false;
    final resolvedDisabled = disabled ?? false;
    final resolvedWithPadding = withPadding ?? true;

    const fromProps = PaginationControlStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = PaginationControlState();
    final paginationControlContext = PaginationControlContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      onPressed: resolvedOnPressed,
      active: resolvedActive,
      disabled: resolvedDisabled,
      withPadding: resolvedWithPadding,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<PaginationControlDelegate>();
    return delegate.root(paginationControlContext);
  }
}
