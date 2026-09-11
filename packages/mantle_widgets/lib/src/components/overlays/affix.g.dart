// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'affix.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Affix].
enum AffixVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Affix].
@immutable
class AffixStyle {
  /// Creates an [AffixStyle].
  const AffixStyle();

  /// Returns a copy of this [AffixStyle] with selected fields replaced.
  AffixStyle copyWith() => this;

  /// Merges [other] over this [AffixStyle]; null fields keep this value.
  AffixStyle mergeWith(AffixStyle? other) => this;
}

/// Resolved interaction state for [Affix].
@immutable
class AffixState {
  /// Creates an [AffixState].
  const AffixState();
}

/// Values passed to [AffixDelegate] slots during build.
@immutable
class AffixContext {
  /// Creates an [AffixContext].
  const AffixContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.top,
    this.left,
    this.bottom,
    this.right,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final AffixStyle style;

  /// Resolved interaction state for this build.
  final AffixState state;

  /// The visual variant selected by the constructor.
  final AffixVariant variant;

  /// The primary child widget.
  final Widget child;

  /// The top.
  final double? top;

  /// The left.
  final double? left;

  /// The bottom.
  final double? bottom;

  /// The right.
  final double? right;
}

/// Builder for the root slot.
class AffixRoot {
  /// Creates an [AffixRoot] from a builder function.
  const AffixRoot(this._build);

  final Widget Function(AffixContext context) _build;

  /// Invokes this slot with [context].
  Widget call(AffixContext context) => _build(context);
}

/// Theme-owned composition slots for [Affix].
abstract class AffixDelegate extends ComponentDelegate {
  /// Creates an [AffixDelegate].
  const AffixDelegate();

  /// Builds the composition root.
  Widget root(AffixContext context);
}

/// An [Affix] widget resolved through [AffixDelegate].
class Affix extends StatelessWidget {
  /// Creates an [Affix].
  const Affix({
    super.key,
    required this.child,
    this.top,
    this.left,
    this.bottom,
    this.right,
    this.style,
  }) : variant = AffixVariant.defaults;

  /// The visual variant selected by the constructor.
  final AffixVariant variant;

  /// The primary child widget.
  final Widget child;

  /// The top.
  final double? top;

  /// The left.
  final double? left;

  /// The bottom.
  final double? bottom;

  /// The right.
  final double? right;

  /// Style overrides merged over theme defaults.
  final AffixStyle? style;

  /// Resolves properties and builds via [AffixDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedTop = top;
    final resolvedLeft = left;
    final resolvedBottom = bottom;
    final resolvedRight = right;

    const fromProps = AffixStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = AffixState();
    final affixContext = AffixContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      top: resolvedTop,
      left: resolvedLeft,
      bottom: resolvedBottom,
      right: resolvedRight,
    );
    final delegate = MantleTheme.of(context).delegate<AffixDelegate>();
    return delegate.root(affixContext);
  }
}
