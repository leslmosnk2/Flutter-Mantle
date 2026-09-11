// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Space].
enum SpaceVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Space].
@immutable
class SpaceStyle {
  /// Creates a [SpaceStyle].
  const SpaceStyle();

  /// Returns a copy of this [SpaceStyle] with selected fields replaced.
  SpaceStyle copyWith() => this;

  /// Merges [other] over this [SpaceStyle]; null fields keep this value.
  SpaceStyle mergeWith(SpaceStyle? other) => this;
}

/// Resolved interaction state for [Space].
@immutable
class SpaceState {
  /// Creates a [SpaceState].
  const SpaceState();
}

/// Values passed to [SpaceDelegate] slots during build.
@immutable
class SpaceContext {
  /// Creates a [SpaceContext].
  const SpaceContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.width,
    this.height,
    this.w,
    this.h,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final SpaceStyle style;

  /// Resolved interaction state for this build.
  final SpaceState state;

  /// The visual variant selected by the constructor.
  final SpaceVariant variant;

  /// Width in logical pixels.
  final double? width;

  /// Height in logical pixels.
  final double? height;

  /// The w.
  final String? w;

  /// The h.
  final String? h;
}

/// Builder for the root slot.
class SpaceRoot {
  /// Creates a [SpaceRoot] from a builder function.
  const SpaceRoot(this._build);

  final Widget Function(SpaceContext context) _build;

  /// Invokes this slot with [context].
  Widget call(SpaceContext context) => _build(context);
}

/// Theme-owned composition slots for [Space].
abstract class SpaceDelegate extends ComponentDelegate {
  /// Creates a [SpaceDelegate].
  const SpaceDelegate();

  /// Builds the composition root.
  Widget root(SpaceContext context);
}

/// A [Space] widget resolved through [SpaceDelegate].
class Space extends StatelessWidget {
  /// Creates a [Space].
  const Space({super.key, this.width, this.height, this.w, this.h, this.style})
    : variant = SpaceVariant.defaults;

  /// The visual variant selected by the constructor.
  final SpaceVariant variant;

  /// Width in logical pixels.
  final double? width;

  /// Height in logical pixels.
  final double? height;

  /// The w.
  final String? w;

  /// The h.
  final String? h;

  /// Style overrides merged over theme defaults.
  final SpaceStyle? style;

  /// Resolves properties and builds via [SpaceDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedWidth = width;
    final resolvedHeight = height;
    final resolvedW = w;
    final resolvedH = h;

    const fromProps = SpaceStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = SpaceState();
    final spaceContext = SpaceContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      width: resolvedWidth,
      height: resolvedHeight,
      w: resolvedW,
      h: resolvedH,
    );
    final delegate = MantleTheme.of(context).delegate<SpaceDelegate>();
    return delegate.root(spaceContext);
  }
}
