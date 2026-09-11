// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Badge].
enum BadgeVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Badge].
@immutable
class BadgeStyle {
  /// Creates a [BadgeStyle].
  const BadgeStyle();

  /// Returns a copy of this [BadgeStyle] with selected fields replaced.
  BadgeStyle copyWith() => this;

  /// Merges [other] over this [BadgeStyle]; null fields keep this value.
  BadgeStyle mergeWith(BadgeStyle? other) => this;
}

/// Resolved interaction state for [Badge].
@immutable
class BadgeState {
  /// Creates a [BadgeState].
  const BadgeState();
}

/// Values passed to [BadgeDelegate] slots during build.
@immutable
class BadgeContext {
  /// Creates a [BadgeContext].
  const BadgeContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.size,
    this.color,
    required this.appearance,
    required this.radius,
    required this.circle,
    required this.fullWidth,
    required this.autoContrast,
    this.leftSection,
    this.rightSection,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final BadgeStyle style;

  /// Resolved interaction state for this build.
  final BadgeState state;

  /// The visual variant selected by the constructor.
  final BadgeVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Size token.
  final String size;

  /// Foreground or accent color.
  final String? color;

  /// Visual appearance token.
  final String appearance;

  /// Corner radius.
  final BorderRadiusGeometry radius;

  /// Whether circle.
  final bool circle;

  /// Whether full width.
  final bool fullWidth;

  /// Whether to pick a contrasting foreground automatically.
  final bool autoContrast;

  /// The left section.
  final Widget? leftSection;

  /// The right section.
  final Widget? rightSection;
}

/// Builder for the root slot.
class BadgeRoot {
  /// Creates a [BadgeRoot] from a builder function.
  const BadgeRoot(this._build);

  final Widget Function(BadgeContext context) _build;

  /// Invokes this slot with [context].
  Widget call(BadgeContext context) => _build(context);
}

/// Theme-owned composition slots for [Badge].
abstract class BadgeDelegate extends ComponentDelegate {
  /// Creates a [BadgeDelegate].
  const BadgeDelegate();

  /// Builds the composition root.
  Widget root(BadgeContext context);
}

/// A [Badge] widget resolved through [BadgeDelegate].
class Badge extends StatelessWidget {
  /// Creates a [Badge].
  const Badge({
    super.key,
    required this.child,
    this.size,
    this.color,
    this.appearance,
    this.radius,
    this.circle,
    this.fullWidth,
    this.autoContrast,
    this.leftSection,
    this.rightSection,
    this.style,
  }) : variant = BadgeVariant.defaults;

  /// The visual variant selected by the constructor.
  final BadgeVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Size token.
  final String? size;

  /// Foreground or accent color.
  final String? color;

  /// Visual appearance token.
  final String? appearance;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Whether circle.
  final bool? circle;

  /// Whether full width.
  final bool? fullWidth;

  /// Whether to pick a contrasting foreground automatically.
  final bool? autoContrast;

  /// The left section.
  final Widget? leftSection;

  /// The right section.
  final Widget? rightSection;

  /// Style overrides merged over theme defaults.
  final BadgeStyle? style;

  /// Resolves properties and builds via [BadgeDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedSize = size ?? 'md';
    final resolvedColor = color;
    final resolvedAppearance = appearance ?? 'filled';
    final resolvedRadius = radius ?? dataDisplayPillRadius(context);
    final resolvedCircle = circle ?? false;
    final resolvedFullWidth = fullWidth ?? false;
    final resolvedAutoContrast = autoContrast ?? false;
    final resolvedLeftSection = leftSection;
    final resolvedRightSection = rightSection;

    const fromProps = BadgeStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = BadgeState();
    final badgeContext = BadgeContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      size: resolvedSize,
      color: resolvedColor,
      appearance: resolvedAppearance,
      radius: resolvedRadius,
      circle: resolvedCircle,
      fullWidth: resolvedFullWidth,
      autoContrast: resolvedAutoContrast,
      leftSection: resolvedLeftSection,
      rightSection: resolvedRightSection,
    );
    final delegate = MantleTheme.of(context).delegate<BadgeDelegate>();
    return delegate.root(badgeContext);
  }
}
