// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'burger.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Burger].
enum BurgerVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Burger].
@immutable
class BurgerStyle {
  /// Creates a [BurgerStyle].
  const BurgerStyle();

  /// Returns a copy of this [BurgerStyle] with selected fields replaced.
  BurgerStyle copyWith() => this;

  /// Merges [other] over this [BurgerStyle]; null fields keep this value.
  BurgerStyle mergeWith(BurgerStyle? other) => this;
}

/// Resolved interaction state for [Burger].
@immutable
class BurgerState {
  /// Creates a [BurgerState].
  const BurgerState();
}

/// Values passed to [BurgerDelegate] slots during build.
@immutable
class BurgerContext {
  /// Creates a [BurgerContext].
  const BurgerContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.opened,
    this.onTap,
    required this.size,
    this.color,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final BurgerStyle style;

  /// Resolved interaction state for this build.
  final BurgerState state;

  /// The visual variant selected by the constructor.
  final BurgerVariant variant;

  /// Whether the content is expanded.
  final bool opened;

  /// Called when tap.
  final BurgerOnTap? onTap;

  /// Size token.
  final String size;

  /// Foreground or accent color.
  final String? color;
}

/// Builder for the root slot.
class BurgerRoot {
  /// Creates a [BurgerRoot] from a builder function.
  const BurgerRoot(this._build);

  final Widget Function(BurgerContext context) _build;

  /// Invokes this slot with [context].
  Widget call(BurgerContext context) => _build(context);
}

/// Theme-owned composition slots for [Burger].
abstract class BurgerDelegate extends ComponentDelegate {
  /// Creates a [BurgerDelegate].
  const BurgerDelegate();

  /// Builds the composition root.
  Widget root(BurgerContext context);
}

/// A [Burger] widget resolved through [BurgerDelegate].
class Burger extends StatelessWidget {
  /// Creates a [Burger].
  const Burger({
    super.key,
    this.opened,
    this.onTap,
    this.size,
    this.color,
    this.style,
  }) : variant = BurgerVariant.defaults;

  /// The visual variant selected by the constructor.
  final BurgerVariant variant;

  /// Whether the content is expanded.
  final bool? opened;

  /// Called when tap.
  final BurgerOnTap? onTap;

  /// Size token.
  final String? size;

  /// Foreground or accent color.
  final String? color;

  /// Style overrides merged over theme defaults.
  final BurgerStyle? style;

  /// Resolves properties and builds via [BurgerDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedOpened = opened ?? false;
    final resolvedOnTap = onTap;
    final resolvedSize = size ?? 'md';
    final resolvedColor = color;

    const fromProps = BurgerStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = BurgerState();
    final burgerContext = BurgerContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      opened: resolvedOpened,
      onTap: resolvedOnTap,
      size: resolvedSize,
      color: resolvedColor,
    );
    final delegate = MantleTheme.of(context).delegate<BurgerDelegate>();
    return delegate.root(burgerContext);
  }
}
