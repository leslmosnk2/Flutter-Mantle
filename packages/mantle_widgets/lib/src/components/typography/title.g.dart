// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'title.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [MTitle].
enum MTitleVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MTitle].
@immutable
class MTitleStyle {
  /// Creates a [MTitleStyle].
  const MTitleStyle();

  /// Returns a copy of this [MTitleStyle] with selected fields replaced.
  MTitleStyle copyWith() => this;

  /// Merges [other] over this [MTitleStyle]; null fields keep this value.
  MTitleStyle mergeWith(MTitleStyle? other) => this;
}

/// Resolved interaction state for [MTitle].
@immutable
class MTitleState {
  /// Creates a [MTitleState].
  const MTitleState();
}

/// Values passed to [MTitleDelegate] slots during build.
@immutable
class MTitleContext {
  /// Creates a [MTitleContext].
  const MTitleContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.order,
    this.size,
    this.lineClamp,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MTitleStyle style;

  /// Resolved interaction state for this build.
  final MTitleState state;

  /// The visual variant selected by the constructor.
  final MTitleVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Heading level from 1 to 6.
  final int order;

  /// Size token.
  final String? size;

  /// Maximum number of lines before clamping.
  final int? lineClamp;
}

/// Builder for the root slot.
class MTitleRoot {
  /// Creates a [MTitleRoot] from a builder function.
  const MTitleRoot(this._build);

  final Widget Function(MTitleContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MTitleContext context) => _build(context);
}

/// Theme-owned composition slots for [MTitle].
abstract class MTitleDelegate extends ComponentDelegate {
  /// Creates a [MTitleDelegate].
  const MTitleDelegate();

  /// Builds the composition root.
  Widget root(MTitleContext context);
}

/// A [MTitle] widget resolved through [MTitleDelegate].
class MTitle extends StatelessWidget {
  /// Creates a [MTitle].
  const MTitle({
    super.key,
    required this.child,
    this.order,
    this.size,
    this.lineClamp,
    this.style,
  }) : variant = MTitleVariant.defaults;

  /// The visual variant selected by the constructor.
  final MTitleVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Heading level from 1 to 6.
  final int? order;

  /// Size token.
  final String? size;

  /// Maximum number of lines before clamping.
  final int? lineClamp;

  /// Style overrides merged over theme defaults.
  final MTitleStyle? style;

  /// Resolves properties and builds via [MTitleDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedOrder = order ?? 1;
    final resolvedSize = size;
    final resolvedLineClamp = lineClamp;

    const fromProps = MTitleStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MTitleState();
    final mTitleContext = MTitleContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      order: resolvedOrder,
      size: resolvedSize,
      lineClamp: resolvedLineClamp,
    );
    final delegate = MantleTheme.of(context).delegate<MTitleDelegate>();
    return delegate.root(mTitleContext);
  }
}
