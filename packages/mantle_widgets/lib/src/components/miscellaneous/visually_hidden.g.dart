// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visually_hidden.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [VisuallyHidden].
enum VisuallyHiddenVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [VisuallyHidden].
@immutable
class VisuallyHiddenStyle {
  /// Creates a [VisuallyHiddenStyle].
  const VisuallyHiddenStyle();

  /// Returns a copy of this [VisuallyHiddenStyle] with selected fields replaced.
  VisuallyHiddenStyle copyWith() => this;

  /// Merges [other] over this [VisuallyHiddenStyle]; null fields keep this value.
  VisuallyHiddenStyle mergeWith(VisuallyHiddenStyle? other) => this;
}

/// Resolved interaction state for [VisuallyHidden].
@immutable
class VisuallyHiddenState {
  /// Creates a [VisuallyHiddenState].
  const VisuallyHiddenState();
}

/// Values passed to [VisuallyHiddenDelegate] slots during build.
@immutable
class VisuallyHiddenContext {
  /// Creates a [VisuallyHiddenContext].
  const VisuallyHiddenContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final VisuallyHiddenStyle style;

  /// Resolved interaction state for this build.
  final VisuallyHiddenState state;

  /// The visual variant selected by the constructor.
  final VisuallyHiddenVariant variant;

  /// The primary child widget.
  final Widget child;
}

/// Builder for the root slot.
class VisuallyHiddenRoot {
  /// Creates a [VisuallyHiddenRoot] from a builder function.
  const VisuallyHiddenRoot(this._build);

  final Widget Function(VisuallyHiddenContext context) _build;

  /// Invokes this slot with [context].
  Widget call(VisuallyHiddenContext context) => _build(context);
}

/// Theme-owned composition slots for [VisuallyHidden].
abstract class VisuallyHiddenDelegate extends ComponentDelegate {
  /// Creates a [VisuallyHiddenDelegate].
  const VisuallyHiddenDelegate();

  /// Builds the composition root.
  Widget root(VisuallyHiddenContext context);
}

/// A [VisuallyHidden] widget resolved through [VisuallyHiddenDelegate].
class VisuallyHidden extends StatelessWidget {
  /// Creates a [VisuallyHidden].
  const VisuallyHidden({super.key, required this.child, this.style})
    : variant = VisuallyHiddenVariant.defaults;

  /// The visual variant selected by the constructor.
  final VisuallyHiddenVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Style overrides merged over theme defaults.
  final VisuallyHiddenStyle? style;

  /// Resolves properties and builds via [VisuallyHiddenDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = VisuallyHiddenStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = VisuallyHiddenState();
    final visuallyHiddenContext = VisuallyHiddenContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(context).delegate<VisuallyHiddenDelegate>();
    return delegate.root(visuallyHiddenContext);
  }
}
