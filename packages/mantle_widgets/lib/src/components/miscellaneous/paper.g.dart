// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paper.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Paper].
enum PaperVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Paper].
@immutable
class PaperStyle {
  /// Creates a [PaperStyle].
  const PaperStyle();

  /// Returns a copy of this [PaperStyle] with selected fields replaced.
  PaperStyle copyWith() => this;

  /// Merges [other] over this [PaperStyle]; null fields keep this value.
  PaperStyle mergeWith(PaperStyle? other) => this;
}

/// Resolved interaction state for [Paper].
@immutable
class PaperState {
  /// Creates a [PaperState].
  const PaperState();
}

/// Values passed to [PaperDelegate] slots during build.
@immutable
class PaperContext {
  /// Creates a [PaperContext].
  const PaperContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.child,
    required this.radius,
    this.shadow,
    required this.withBorder,
    this.padding,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final PaperStyle style;

  /// Resolved interaction state for this build.
  final PaperState state;

  /// The visual variant selected by the constructor.
  final PaperVariant variant;

  /// The primary child widget.
  final Widget? child;

  /// Corner radius.
  final BorderRadiusGeometry radius;

  /// Shadow token.
  final String? shadow;

  /// Whether to draw a border.
  final bool withBorder;

  /// Inner spacing.
  final String? padding;
}

/// Builder for the root slot.
class PaperRoot {
  /// Creates a [PaperRoot] from a builder function.
  const PaperRoot(this._build);

  final Widget Function(PaperContext context) _build;

  /// Invokes this slot with [context].
  Widget call(PaperContext context) => _build(context);
}

/// Theme-owned composition slots for [Paper].
abstract class PaperDelegate extends ComponentDelegate {
  /// Creates a [PaperDelegate].
  const PaperDelegate();

  /// Builds the composition root.
  Widget root(PaperContext context);
}

/// A [Paper] widget resolved through [PaperDelegate].
class Paper extends StatelessWidget {
  /// Creates a [Paper].
  const Paper({
    super.key,
    this.child,
    this.radius,
    this.shadow,
    this.withBorder,
    this.padding,
    this.style,
  }) : variant = PaperVariant.defaults;

  /// The visual variant selected by the constructor.
  final PaperVariant variant;

  /// The primary child widget.
  final Widget? child;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Shadow token.
  final String? shadow;

  /// Whether to draw a border.
  final bool? withBorder;

  /// Inner spacing.
  final String? padding;

  /// Style overrides merged over theme defaults.
  final PaperStyle? style;

  /// Resolves properties and builds via [PaperDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedRadius = radius ?? miscellaneousDefaultRadius(context);
    final resolvedShadow = shadow;
    final resolvedWithBorder = withBorder ?? false;
    final resolvedPadding = padding;

    const fromProps = PaperStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = PaperState();
    final paperContext = PaperContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      radius: resolvedRadius,
      shadow: resolvedShadow,
      withBorder: resolvedWithBorder,
      padding: resolvedPadding,
    );
    final delegate = MantleTheme.of(context).delegate<PaperDelegate>();
    return delegate.root(paperContext);
  }
}
