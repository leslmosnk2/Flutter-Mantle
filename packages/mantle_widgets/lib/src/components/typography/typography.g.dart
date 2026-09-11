// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'typography.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Typography].
enum TypographyVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Typography].
@immutable
class TypographyStyle {
  /// Creates a [TypographyStyle].
  const TypographyStyle();

  /// Returns a copy of this [TypographyStyle] with selected fields replaced.
  TypographyStyle copyWith() => this;

  /// Merges [other] over this [TypographyStyle]; null fields keep this value.
  TypographyStyle mergeWith(TypographyStyle? other) => this;
}

/// Resolved interaction state for [Typography].
@immutable
class TypographyState {
  /// Creates a [TypographyState].
  const TypographyState();
}

/// Values passed to [TypographyDelegate] slots during build.
@immutable
class TypographyContext {
  /// Creates a [TypographyContext].
  const TypographyContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final TypographyStyle style;

  /// Resolved interaction state for this build.
  final TypographyState state;

  /// The visual variant selected by the constructor.
  final TypographyVariant variant;

  /// The primary child widget.
  final Widget child;
}

/// Builder for the root slot.
class TypographyRoot {
  /// Creates a [TypographyRoot] from a builder function.
  const TypographyRoot(this._build);

  final Widget Function(TypographyContext context) _build;

  /// Invokes this slot with [context].
  Widget call(TypographyContext context) => _build(context);
}

/// Theme-owned composition slots for [Typography].
abstract class TypographyDelegate extends ComponentDelegate {
  /// Creates a [TypographyDelegate].
  const TypographyDelegate();

  /// Builds the composition root.
  Widget root(TypographyContext context);
}

/// A [Typography] widget resolved through [TypographyDelegate].
class Typography extends StatelessWidget {
  /// Creates a [Typography].
  const Typography({super.key, required this.child, this.style})
    : variant = TypographyVariant.defaults;

  /// The visual variant selected by the constructor.
  final TypographyVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Style overrides merged over theme defaults.
  final TypographyStyle? style;

  /// Resolves properties and builds via [TypographyDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = TypographyStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TypographyState();
    final typographyContext = TypographyContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(context).delegate<TypographyDelegate>();
    return delegate.root(typographyContext);
  }
}
