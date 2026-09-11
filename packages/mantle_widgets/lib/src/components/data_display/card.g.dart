// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [MCard].
enum MCardVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MCard].
@immutable
class MCardStyle {
  /// Creates a [MCardStyle].
  const MCardStyle();

  /// Returns a copy of this [MCardStyle] with selected fields replaced.
  MCardStyle copyWith() => this;

  /// Merges [other] over this [MCardStyle]; null fields keep this value.
  MCardStyle mergeWith(MCardStyle? other) => this;
}

/// Resolved interaction state for [MCard].
@immutable
class MCardState {
  /// Creates a [MCardState].
  const MCardState();
}

/// Values passed to [MCardDelegate] slots during build.
@immutable
class MCardContext {
  /// Creates a [MCardContext].
  const MCardContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.padding,
    required this.radius,
    required this.withBorder,
    this.shadow,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MCardStyle style;

  /// Resolved interaction state for this build.
  final MCardState state;

  /// The visual variant selected by the constructor.
  final MCardVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Inner spacing.
  final String padding;

  /// Corner radius.
  final BorderRadiusGeometry radius;

  /// Whether to draw a border.
  final bool withBorder;

  /// Shadow token.
  final String? shadow;
}

/// Builder for the root slot.
class MCardRoot {
  /// Creates a [MCardRoot] from a builder function.
  const MCardRoot(this._build);

  final Widget Function(MCardContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MCardContext context) => _build(context);
}

/// Theme-owned composition slots for [MCard].
abstract class MCardDelegate extends ComponentDelegate {
  /// Creates a [MCardDelegate].
  const MCardDelegate();

  /// Builds the composition root.
  Widget root(MCardContext context);
}

/// A [MCard] widget resolved through [MCardDelegate].
class MCard extends StatelessWidget {
  /// Creates a [MCard].
  const MCard({
    super.key,
    required this.children,
    this.padding,
    this.radius,
    this.withBorder,
    this.shadow,
    this.style,
  }) : variant = MCardVariant.defaults;

  /// The visual variant selected by the constructor.
  final MCardVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Inner spacing.
  final String? padding;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Whether to draw a border.
  final bool? withBorder;

  /// Shadow token.
  final String? shadow;

  /// Style overrides merged over theme defaults.
  final MCardStyle? style;

  /// Resolves properties and builds via [MCardDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedPadding = padding ?? 'md';
    final resolvedRadius = radius ?? dataDisplayDefaultRadius(context);
    final resolvedWithBorder = withBorder ?? false;
    final resolvedShadow = shadow;

    const fromProps = MCardStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MCardState();
    final mCardContext = MCardContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      padding: resolvedPadding,
      radius: resolvedRadius,
      withBorder: resolvedWithBorder,
      shadow: resolvedShadow,
    );
    final delegate = MantleTheme.of(context).delegate<MCardDelegate>();
    return delegate.root(mCardContext);
  }
}

/// Visual variants of [CardSection].
enum CardSectionVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [CardSection].
@immutable
class CardSectionStyle {
  /// Creates a [CardSectionStyle].
  const CardSectionStyle();

  /// Returns a copy of this [CardSectionStyle] with selected fields replaced.
  CardSectionStyle copyWith() => this;

  /// Merges [other] over this [CardSectionStyle]; null fields keep this value.
  CardSectionStyle mergeWith(CardSectionStyle? other) => this;
}

/// Resolved interaction state for [CardSection].
@immutable
class CardSectionState {
  /// Creates a [CardSectionState].
  const CardSectionState();
}

/// Values passed to [CardSectionDelegate] slots during build.
@immutable
class CardSectionContext {
  /// Creates a [CardSectionContext].
  const CardSectionContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.withBorder,
    required this.inheritPadding,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final CardSectionStyle style;

  /// Resolved interaction state for this build.
  final CardSectionState state;

  /// The visual variant selected by the constructor.
  final CardSectionVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether to draw a border.
  final bool withBorder;

  /// Whether inherit padding.
  final bool inheritPadding;
}

/// Builder for the root slot.
class CardSectionRoot {
  /// Creates a [CardSectionRoot] from a builder function.
  const CardSectionRoot(this._build);

  final Widget Function(CardSectionContext context) _build;

  /// Invokes this slot with [context].
  Widget call(CardSectionContext context) => _build(context);
}

/// Theme-owned composition slots for [CardSection].
abstract class CardSectionDelegate extends ComponentDelegate {
  /// Creates a [CardSectionDelegate].
  const CardSectionDelegate();

  /// Builds the composition root.
  Widget root(CardSectionContext context);
}

/// A [CardSection] widget resolved through [CardSectionDelegate].
class CardSection extends StatelessWidget {
  /// Creates a [CardSection].
  const CardSection({
    super.key,
    required this.child,
    this.withBorder,
    this.inheritPadding,
    this.style,
  }) : variant = CardSectionVariant.defaults;

  /// The visual variant selected by the constructor.
  final CardSectionVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether to draw a border.
  final bool? withBorder;

  /// Whether inherit padding.
  final bool? inheritPadding;

  /// Style overrides merged over theme defaults.
  final CardSectionStyle? style;

  /// Resolves properties and builds via [CardSectionDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedWithBorder = withBorder ?? false;
    final resolvedInheritPadding = inheritPadding ?? false;

    const fromProps = CardSectionStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = CardSectionState();
    final cardSectionContext = CardSectionContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      withBorder: resolvedWithBorder,
      inheritPadding: resolvedInheritPadding,
    );
    final delegate = MantleTheme.of(context).delegate<CardSectionDelegate>();
    return delegate.root(cardSectionContext);
  }
}
