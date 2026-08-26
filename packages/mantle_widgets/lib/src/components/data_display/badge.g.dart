// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum BadgeVariant { defaults }

@immutable
class BadgeStyle {
  const BadgeStyle();

  BadgeStyle copyWith() => this;

  BadgeStyle mergeWith(BadgeStyle? other) => this;
}

@immutable
class BadgeState {
  const BadgeState();
}

@immutable
class BadgeContext {
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

  final BuildContext context;
  final BadgeStyle style;
  final BadgeState state;
  final BadgeVariant variant;
  final Widget child;
  final String size;
  final String? color;
  final String appearance;
  final BorderRadiusGeometry radius;
  final bool circle;
  final bool fullWidth;
  final bool autoContrast;
  final Widget? leftSection;
  final Widget? rightSection;
}

class BadgeRoot {
  const BadgeRoot(this._build);

  final Widget Function(BadgeContext context) _build;

  Widget call(BadgeContext context) => _build(context);
}

abstract class BadgeDelegate extends ComponentDelegate {
  const BadgeDelegate();

  Widget root(BadgeContext context);
}

class Badge extends StatelessWidget {
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

  final BadgeVariant variant;
  final Widget child;
  final String? size;
  final String? color;
  final String? appearance;
  final BorderRadiusGeometry? radius;
  final bool? circle;
  final bool? fullWidth;
  final bool? autoContrast;
  final Widget? leftSection;
  final Widget? rightSection;
  final BadgeStyle? style;

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
