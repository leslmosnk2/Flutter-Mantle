// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_grid.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [SimpleGrid].
enum SimpleGridVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [SimpleGrid].
@immutable
class SimpleGridStyle {
  /// Creates a [SimpleGridStyle].
  const SimpleGridStyle();

  /// Returns a copy of this [SimpleGridStyle] with selected fields replaced.
  SimpleGridStyle copyWith() => this;

  /// Merges [other] over this [SimpleGridStyle]; null fields keep this value.
  SimpleGridStyle mergeWith(SimpleGridStyle? other) => this;
}

/// Resolved interaction state for [SimpleGrid].
@immutable
class SimpleGridState {
  /// Creates a [SimpleGridState].
  const SimpleGridState();
}

/// Values passed to [SimpleGridDelegate] slots during build.
@immutable
class SimpleGridContext {
  /// Creates a [SimpleGridContext].
  const SimpleGridContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.cols,
    required this.spacing,
    this.verticalSpacing,
    this.responsiveCols,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final SimpleGridStyle style;

  /// Resolved interaction state for this build.
  final SimpleGridState state;

  /// The visual variant selected by the constructor.
  final SimpleGridVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The cols.
  final int cols;

  /// Spacing token between items.
  final String spacing;

  /// The vertical spacing.
  final String? verticalSpacing;

  /// The responsive cols.
  final MantleResponsive<int>? responsiveCols;
}

/// Builder for the root slot.
class SimpleGridRoot {
  /// Creates a [SimpleGridRoot] from a builder function.
  const SimpleGridRoot(this._build);

  final Widget Function(SimpleGridContext context) _build;

  /// Invokes this slot with [context].
  Widget call(SimpleGridContext context) => _build(context);
}

/// Theme-owned composition slots for [SimpleGrid].
abstract class SimpleGridDelegate extends ComponentDelegate {
  /// Creates a [SimpleGridDelegate].
  const SimpleGridDelegate();

  /// Builds the composition root.
  Widget root(SimpleGridContext context);
}

/// A [SimpleGrid] widget resolved through [SimpleGridDelegate].
class SimpleGrid extends StatelessWidget {
  /// Creates a [SimpleGrid].
  const SimpleGrid({
    super.key,
    required this.children,
    this.cols,
    this.spacing,
    this.verticalSpacing,
    this.responsiveCols,
    this.style,
  }) : variant = SimpleGridVariant.defaults;

  /// The visual variant selected by the constructor.
  final SimpleGridVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The cols.
  final int? cols;

  /// Spacing token between items.
  final String? spacing;

  /// The vertical spacing.
  final String? verticalSpacing;

  /// The responsive cols.
  final MantleResponsive<int>? responsiveCols;

  /// Style overrides merged over theme defaults.
  final SimpleGridStyle? style;

  /// Resolves properties and builds via [SimpleGridDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedCols = cols ?? 1;
    final resolvedSpacing = spacing ?? 'md';
    final resolvedVerticalSpacing = verticalSpacing;
    final resolvedResponsiveCols = responsiveCols;

    const fromProps = SimpleGridStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = SimpleGridState();
    final simpleGridContext = SimpleGridContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      cols: resolvedCols,
      spacing: resolvedSpacing,
      verticalSpacing: resolvedVerticalSpacing,
      responsiveCols: resolvedResponsiveCols,
    );
    final delegate = MantleTheme.of(context).delegate<SimpleGridDelegate>();
    return delegate.root(simpleGridContext);
  }
}
