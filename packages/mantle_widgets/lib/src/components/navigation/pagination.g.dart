// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum PaginationVariant { defaults }

@immutable
class PaginationStyle {
  const PaginationStyle();

  PaginationStyle copyWith() => this;

  PaginationStyle mergeWith(PaginationStyle? other) => this;
}

@immutable
class PaginationState {
  const PaginationState();
}

@immutable
class PaginationContext {
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

  final BuildContext context;
  final PaginationStyle style;
  final PaginationState state;
  final PaginationVariant variant;
  final int total;
  final int value;
  final PaginationOnChange? onChange;
  final int siblings;
  final int boundaries;
  final bool withControls;
  final bool withEdges;
  final bool withPages;
  final bool hideWithOnePage;
  final bool disabled;
  final String size;
  final String? color;
  final double gap;
}

class PaginationRoot {
  const PaginationRoot(this._build);

  final Widget Function(PaginationContext context) _build;

  Widget call(PaginationContext context) => _build(context);
}

abstract class PaginationDelegate extends ComponentDelegate {
  const PaginationDelegate();

  Widget root(PaginationContext context);
}

class Pagination extends StatelessWidget {
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

  final PaginationVariant variant;
  final int total;
  final int? value;
  final PaginationOnChange? onChange;
  final int? siblings;
  final int? boundaries;
  final bool? withControls;
  final bool? withEdges;
  final bool? withPages;
  final bool? hideWithOnePage;
  final bool? disabled;
  final String? size;
  final String? color;
  final double? gap;
  final PaginationStyle? style;

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

enum PaginationControlVariant { defaults }

@immutable
class PaginationControlStyle {
  const PaginationControlStyle();

  PaginationControlStyle copyWith() => this;

  PaginationControlStyle mergeWith(PaginationControlStyle? other) => this;
}

@immutable
class PaginationControlState {
  const PaginationControlState();
}

@immutable
class PaginationControlContext {
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

  final BuildContext context;
  final PaginationControlStyle style;
  final PaginationControlState state;
  final PaginationControlVariant variant;
  final Widget child;
  final VoidCallback? onPressed;
  final bool active;
  final bool disabled;
  final bool withPadding;
}

class PaginationControlRoot {
  const PaginationControlRoot(this._build);

  final Widget Function(PaginationControlContext context) _build;

  Widget call(PaginationControlContext context) => _build(context);
}

abstract class PaginationControlDelegate extends ComponentDelegate {
  const PaginationControlDelegate();

  Widget root(PaginationControlContext context);
}

class PaginationControl extends StatelessWidget {
  const PaginationControl({
    super.key,
    required this.child,
    this.onPressed,
    this.active,
    this.disabled,
    this.withPadding,
    this.style,
  }) : variant = PaginationControlVariant.defaults;

  final PaginationControlVariant variant;
  final Widget child;
  final VoidCallback? onPressed;
  final bool? active;
  final bool? disabled;
  final bool? withPadding;
  final PaginationControlStyle? style;

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
