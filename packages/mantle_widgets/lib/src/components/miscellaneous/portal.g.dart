// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portal.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Portal].
enum PortalVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Portal].
@immutable
class PortalStyle {
  /// Creates a [PortalStyle].
  const PortalStyle();

  /// Returns a copy of this [PortalStyle] with selected fields replaced.
  PortalStyle copyWith() => this;

  /// Merges [other] over this [PortalStyle]; null fields keep this value.
  PortalStyle mergeWith(PortalStyle? other) => this;
}

/// Resolved interaction state for [Portal].
@immutable
class PortalState {
  /// Creates a [PortalState].
  const PortalState();
}

/// Values passed to [PortalDelegate] slots during build.
@immutable
class PortalContext {
  /// Creates a [PortalContext].
  const PortalContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final PortalStyle style;

  /// Resolved interaction state for this build.
  final PortalState state;

  /// The visual variant selected by the constructor.
  final PortalVariant variant;

  /// The primary child widget.
  final Widget child;
}

/// Builder for the root slot.
class PortalRoot {
  /// Creates a [PortalRoot] from a builder function.
  const PortalRoot(this._build);

  final Widget Function(PortalContext context) _build;

  /// Invokes this slot with [context].
  Widget call(PortalContext context) => _build(context);
}

/// Theme-owned composition slots for [Portal].
abstract class PortalDelegate extends ComponentDelegate {
  /// Creates a [PortalDelegate].
  const PortalDelegate();

  /// Builds the composition root.
  Widget root(PortalContext context);
}

/// A [Portal] widget resolved through [PortalDelegate].
class Portal extends StatelessWidget {
  /// Creates a [Portal].
  const Portal({super.key, required this.child, this.style})
    : variant = PortalVariant.defaults;

  /// The visual variant selected by the constructor.
  final PortalVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Style overrides merged over theme defaults.
  final PortalStyle? style;

  /// Resolves properties and builds via [PortalDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = PortalStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = PortalState();
    final portalContext = PortalContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(context).delegate<PortalDelegate>();
    return delegate.root(portalContext);
  }
}
