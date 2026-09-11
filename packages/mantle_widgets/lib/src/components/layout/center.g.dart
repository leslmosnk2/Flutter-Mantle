// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'center.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [MCenter].
enum MCenterVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MCenter].
@immutable
class MCenterStyle {
  /// Creates a [MCenterStyle].
  const MCenterStyle();

  /// Returns a copy of this [MCenterStyle] with selected fields replaced.
  MCenterStyle copyWith() => this;

  /// Merges [other] over this [MCenterStyle]; null fields keep this value.
  MCenterStyle mergeWith(MCenterStyle? other) => this;
}

/// Resolved interaction state for [MCenter].
@immutable
class MCenterState {
  /// Creates a [MCenterState].
  const MCenterState();
}

/// Values passed to [MCenterDelegate] slots during build.
@immutable
class MCenterContext {
  /// Creates a [MCenterContext].
  const MCenterContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.inline,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MCenterStyle style;

  /// Resolved interaction state for this build.
  final MCenterState state;

  /// The visual variant selected by the constructor.
  final MCenterVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether to render inline.
  final bool inline;
}

/// Builder for the root slot.
class MCenterRoot {
  /// Creates a [MCenterRoot] from a builder function.
  const MCenterRoot(this._build);

  final Widget Function(MCenterContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MCenterContext context) => _build(context);
}

/// Theme-owned composition slots for [MCenter].
abstract class MCenterDelegate extends ComponentDelegate {
  /// Creates a [MCenterDelegate].
  const MCenterDelegate();

  /// Builds the composition root.
  Widget root(MCenterContext context);
}

/// A [MCenter] widget resolved through [MCenterDelegate].
class MCenter extends StatelessWidget {
  /// Creates a [MCenter].
  const MCenter({super.key, required this.child, this.inline, this.style})
    : variant = MCenterVariant.defaults;

  /// The visual variant selected by the constructor.
  final MCenterVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether to render inline.
  final bool? inline;

  /// Style overrides merged over theme defaults.
  final MCenterStyle? style;

  /// Resolves properties and builds via [MCenterDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedInline = inline ?? false;

    const fromProps = MCenterStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MCenterState();
    final mCenterContext = MCenterContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      inline: resolvedInline,
    );
    final delegate = MantleTheme.of(context).delegate<MCenterDelegate>();
    return delegate.root(mCenterContext);
  }
}
