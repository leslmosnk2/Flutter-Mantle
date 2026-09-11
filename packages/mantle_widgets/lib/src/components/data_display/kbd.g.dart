// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kbd.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Kbd].
enum KbdVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Kbd].
@immutable
class KbdStyle {
  /// Creates a [KbdStyle].
  const KbdStyle();

  /// Returns a copy of this [KbdStyle] with selected fields replaced.
  KbdStyle copyWith() => this;

  /// Merges [other] over this [KbdStyle]; null fields keep this value.
  KbdStyle mergeWith(KbdStyle? other) => this;
}

/// Resolved interaction state for [Kbd].
@immutable
class KbdState {
  /// Creates a [KbdState].
  const KbdState();
}

/// Values passed to [KbdDelegate] slots during build.
@immutable
class KbdContext {
  /// Creates a [KbdContext].
  const KbdContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.size,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final KbdStyle style;

  /// Resolved interaction state for this build.
  final KbdState state;

  /// The visual variant selected by the constructor.
  final KbdVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Size token.
  final String size;
}

/// Builder for the root slot.
class KbdRoot {
  /// Creates a [KbdRoot] from a builder function.
  const KbdRoot(this._build);

  final Widget Function(KbdContext context) _build;

  /// Invokes this slot with [context].
  Widget call(KbdContext context) => _build(context);
}

/// Theme-owned composition slots for [Kbd].
abstract class KbdDelegate extends ComponentDelegate {
  /// Creates a [KbdDelegate].
  const KbdDelegate();

  /// Builds the composition root.
  Widget root(KbdContext context);
}

/// A [Kbd] widget resolved through [KbdDelegate].
class Kbd extends StatelessWidget {
  /// Creates a [Kbd].
  const Kbd({super.key, required this.child, this.size, this.style})
    : variant = KbdVariant.defaults;

  /// The visual variant selected by the constructor.
  final KbdVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Size token.
  final String? size;

  /// Style overrides merged over theme defaults.
  final KbdStyle? style;

  /// Resolves properties and builds via [KbdDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedSize = size ?? 'sm';

    const fromProps = KbdStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = KbdState();
    final kbdContext = KbdContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      size: resolvedSize,
    );
    final delegate = MantleTheme.of(context).delegate<KbdDelegate>();
    return delegate.root(kbdContext);
  }
}
