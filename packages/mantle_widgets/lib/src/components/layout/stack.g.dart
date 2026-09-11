// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stack.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [MStack].
enum MStackVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MStack].
@immutable
class MStackStyle {
  /// Creates a [MStackStyle].
  const MStackStyle();

  /// Returns a copy of this [MStackStyle] with selected fields replaced.
  MStackStyle copyWith() => this;

  /// Merges [other] over this [MStackStyle]; null fields keep this value.
  MStackStyle mergeWith(MStackStyle? other) => this;
}

/// Resolved interaction state for [MStack].
@immutable
class MStackState {
  /// Creates a [MStackState].
  const MStackState();
}

/// Values passed to [MStackDelegate] slots during build.
@immutable
class MStackContext {
  /// Creates a [MStackContext].
  const MStackContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.gap,
    required this.align,
    required this.justify,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MStackStyle style;

  /// Resolved interaction state for this build.
  final MStackState state;

  /// The visual variant selected by the constructor.
  final MStackVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Spacing token between items.
  final String gap;

  /// Text alignment.
  final CrossAxisAlignment align;

  /// The justify.
  final MainAxisAlignment justify;
}

/// Builder for the root slot.
class MStackRoot {
  /// Creates a [MStackRoot] from a builder function.
  const MStackRoot(this._build);

  final Widget Function(MStackContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MStackContext context) => _build(context);
}

/// Theme-owned composition slots for [MStack].
abstract class MStackDelegate extends ComponentDelegate {
  /// Creates a [MStackDelegate].
  const MStackDelegate();

  /// Builds the composition root.
  Widget root(MStackContext context);
}

/// A [MStack] widget resolved through [MStackDelegate].
class MStack extends StatelessWidget {
  /// Creates a [MStack].
  const MStack({
    super.key,
    required this.children,
    this.gap,
    this.align,
    this.justify,
    this.style,
  }) : variant = MStackVariant.defaults;

  /// The visual variant selected by the constructor.
  final MStackVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Spacing token between items.
  final String? gap;

  /// Text alignment.
  final CrossAxisAlignment? align;

  /// The justify.
  final MainAxisAlignment? justify;

  /// Style overrides merged over theme defaults.
  final MStackStyle? style;

  /// Resolves properties and builds via [MStackDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedGap = gap ?? 'md';
    final resolvedAlign = align ?? CrossAxisAlignment.stretch;
    final resolvedJustify = justify ?? MainAxisAlignment.start;

    const fromProps = MStackStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MStackState();
    final mStackContext = MStackContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      gap: resolvedGap,
      align: resolvedAlign,
      justify: resolvedJustify,
    );
    final delegate = MantleTheme.of(context).delegate<MStackDelegate>();
    return delegate.root(mStackContext);
  }
}
