// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mark.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Mark].
enum MarkVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Mark].
@immutable
class MarkStyle {
  /// Creates a [MarkStyle].
  const MarkStyle();

  /// Returns a copy of this [MarkStyle] with selected fields replaced.
  MarkStyle copyWith() => this;

  /// Merges [other] over this [MarkStyle]; null fields keep this value.
  MarkStyle mergeWith(MarkStyle? other) => this;
}

/// Resolved interaction state for [Mark].
@immutable
class MarkState {
  /// Creates a [MarkState].
  const MarkState();
}

/// Values passed to [MarkDelegate] slots during build.
@immutable
class MarkContext {
  /// Creates a [MarkContext].
  const MarkContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.color,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MarkStyle style;

  /// Resolved interaction state for this build.
  final MarkState state;

  /// The visual variant selected by the constructor.
  final MarkVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Foreground or accent color.
  final String color;
}

/// Builder for the root slot.
class MarkRoot {
  /// Creates a [MarkRoot] from a builder function.
  const MarkRoot(this._build);

  final Widget Function(MarkContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MarkContext context) => _build(context);
}

/// Theme-owned composition slots for [Mark].
abstract class MarkDelegate extends ComponentDelegate {
  /// Creates a [MarkDelegate].
  const MarkDelegate();

  /// Builds the composition root.
  Widget root(MarkContext context);
}

/// A [Mark] widget resolved through [MarkDelegate].
class Mark extends StatelessWidget {
  /// Creates a [Mark].
  const Mark({super.key, required this.child, this.color, this.style})
    : variant = MarkVariant.defaults;

  /// The visual variant selected by the constructor.
  final MarkVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Foreground or accent color.
  final String? color;

  /// Style overrides merged over theme defaults.
  final MarkStyle? style;

  /// Resolves properties and builds via [MarkDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedColor = color ?? 'yellow';

    const fromProps = MarkStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MarkState();
    final markContext = MarkContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      color: resolvedColor,
    );
    final delegate = MantleTheme.of(context).delegate<MarkDelegate>();
    return delegate.root(markContext);
  }
}
