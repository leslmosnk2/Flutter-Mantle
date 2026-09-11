// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flex.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [MFlex].
enum MFlexVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MFlex].
@immutable
class MFlexStyle {
  /// Creates a [MFlexStyle].
  const MFlexStyle();

  /// Returns a copy of this [MFlexStyle] with selected fields replaced.
  MFlexStyle copyWith() => this;

  /// Merges [other] over this [MFlexStyle]; null fields keep this value.
  MFlexStyle mergeWith(MFlexStyle? other) => this;
}

/// Resolved interaction state for [MFlex].
@immutable
class MFlexState {
  /// Creates a [MFlexState].
  const MFlexState();
}

/// Values passed to [MFlexDelegate] slots during build.
@immutable
class MFlexContext {
  /// Creates a [MFlexContext].
  const MFlexContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.direction,
    required this.align,
    required this.justify,
    required this.wrap,
    this.gap,
    this.rowGap,
    this.columnGap,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MFlexStyle style;

  /// Resolved interaction state for this build.
  final MFlexState state;

  /// The visual variant selected by the constructor.
  final MFlexVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The direction.
  final Axis direction;

  /// Text alignment.
  final CrossAxisAlignment align;

  /// The justify.
  final MainAxisAlignment justify;

  /// Whether wrap.
  final bool wrap;

  /// Spacing token between items.
  final String? gap;

  /// The row gap.
  final String? rowGap;

  /// The column gap.
  final String? columnGap;
}

/// Builder for the root slot.
class MFlexRoot {
  /// Creates a [MFlexRoot] from a builder function.
  const MFlexRoot(this._build);

  final Widget Function(MFlexContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MFlexContext context) => _build(context);
}

/// Theme-owned composition slots for [MFlex].
abstract class MFlexDelegate extends ComponentDelegate {
  /// Creates a [MFlexDelegate].
  const MFlexDelegate();

  /// Builds the composition root.
  Widget root(MFlexContext context);
}

/// A [MFlex] widget resolved through [MFlexDelegate].
class MFlex extends StatelessWidget {
  /// Creates a [MFlex].
  const MFlex({
    super.key,
    required this.children,
    this.direction,
    this.align,
    this.justify,
    this.wrap,
    this.gap,
    this.rowGap,
    this.columnGap,
    this.style,
  }) : variant = MFlexVariant.defaults;

  /// The visual variant selected by the constructor.
  final MFlexVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The direction.
  final Axis? direction;

  /// Text alignment.
  final CrossAxisAlignment? align;

  /// The justify.
  final MainAxisAlignment? justify;

  /// Whether wrap.
  final bool? wrap;

  /// Spacing token between items.
  final String? gap;

  /// The row gap.
  final String? rowGap;

  /// The column gap.
  final String? columnGap;

  /// Style overrides merged over theme defaults.
  final MFlexStyle? style;

  /// Resolves properties and builds via [MFlexDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedDirection = direction ?? Axis.horizontal;
    final resolvedAlign = align ?? CrossAxisAlignment.center;
    final resolvedJustify = justify ?? MainAxisAlignment.start;
    final resolvedWrap = wrap ?? false;
    final resolvedGap = gap;
    final resolvedRowGap = rowGap;
    final resolvedColumnGap = columnGap;

    const fromProps = MFlexStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MFlexState();
    final mFlexContext = MFlexContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      direction: resolvedDirection,
      align: resolvedAlign,
      justify: resolvedJustify,
      wrap: resolvedWrap,
      gap: resolvedGap,
      rowGap: resolvedRowGap,
      columnGap: resolvedColumnGap,
    );
    final delegate = MantleTheme.of(context).delegate<MFlexDelegate>();
    return delegate.root(mFlexContext);
  }
}
