// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Avatar].
enum AvatarVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Avatar].
@immutable
class AvatarStyle {
  /// Creates an [AvatarStyle].
  const AvatarStyle();

  /// Returns a copy of this [AvatarStyle] with selected fields replaced.
  AvatarStyle copyWith() => this;

  /// Merges [other] over this [AvatarStyle]; null fields keep this value.
  AvatarStyle mergeWith(AvatarStyle? other) => this;
}

/// Resolved interaction state for [Avatar].
@immutable
class AvatarState {
  /// Creates an [AvatarState].
  const AvatarState();
}

/// Values passed to [AvatarDelegate] slots during build.
@immutable
class AvatarContext {
  /// Creates an [AvatarContext].
  const AvatarContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.src,
    this.name,
    this.child,
    required this.size,
    required this.color,
    required this.appearance,
    required this.radius,
    this.alt,
    required this.autoContrast,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final AvatarStyle style;

  /// Resolved interaction state for this build.
  final AvatarState state;

  /// The visual variant selected by the constructor.
  final AvatarVariant variant;

  /// The src.
  final String? src;

  /// The name.
  final String? name;

  /// The primary child widget.
  final Widget? child;

  /// Size token.
  final String size;

  /// Foreground or accent color.
  final String color;

  /// Visual appearance token.
  final String appearance;

  /// Corner radius.
  final BorderRadiusGeometry radius;

  /// The alt.
  final String? alt;

  /// Whether to pick a contrasting foreground automatically.
  final bool autoContrast;
}

/// Builder for the root slot.
class AvatarRoot {
  /// Creates an [AvatarRoot] from a builder function.
  const AvatarRoot(this._build);

  final Widget Function(AvatarContext context) _build;

  /// Invokes this slot with [context].
  Widget call(AvatarContext context) => _build(context);
}

/// Theme-owned composition slots for [Avatar].
abstract class AvatarDelegate extends ComponentDelegate {
  /// Creates an [AvatarDelegate].
  const AvatarDelegate();

  /// Builds the composition root.
  Widget root(AvatarContext context);
}

/// An [Avatar] widget resolved through [AvatarDelegate].
class Avatar extends StatelessWidget {
  /// Creates an [Avatar].
  const Avatar({
    super.key,
    this.src,
    this.name,
    this.child,
    this.size,
    this.color,
    this.appearance,
    this.radius,
    this.alt,
    this.autoContrast,
    this.style,
  }) : variant = AvatarVariant.defaults;

  /// The visual variant selected by the constructor.
  final AvatarVariant variant;

  /// The src.
  final String? src;

  /// The name.
  final String? name;

  /// The primary child widget.
  final Widget? child;

  /// Size token.
  final String? size;

  /// Foreground or accent color.
  final String? color;

  /// Visual appearance token.
  final String? appearance;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// The alt.
  final String? alt;

  /// Whether to pick a contrasting foreground automatically.
  final bool? autoContrast;

  /// Style overrides merged over theme defaults.
  final AvatarStyle? style;

  /// Resolves properties and builds via [AvatarDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedSrc = src;
    final resolvedName = name;
    final resolvedChild = child;
    final resolvedSize = size ?? 'md';
    final resolvedColor = color ?? 'gray';
    final resolvedAppearance = appearance ?? 'light';
    final resolvedRadius = radius ?? dataDisplayPillRadius(context);
    final resolvedAlt = alt;
    final resolvedAutoContrast = autoContrast ?? false;

    const fromProps = AvatarStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = AvatarState();
    final avatarContext = AvatarContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      src: resolvedSrc,
      name: resolvedName,
      child: resolvedChild,
      size: resolvedSize,
      color: resolvedColor,
      appearance: resolvedAppearance,
      radius: resolvedRadius,
      alt: resolvedAlt,
      autoContrast: resolvedAutoContrast,
    );
    final delegate = MantleTheme.of(context).delegate<AvatarDelegate>();
    return delegate.root(avatarContext);
  }
}

/// Visual variants of [AvatarGroup].
enum AvatarGroupVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [AvatarGroup].
@immutable
class AvatarGroupStyle {
  /// Creates an [AvatarGroupStyle].
  const AvatarGroupStyle();

  /// Returns a copy of this [AvatarGroupStyle] with selected fields replaced.
  AvatarGroupStyle copyWith() => this;

  /// Merges [other] over this [AvatarGroupStyle]; null fields keep this value.
  AvatarGroupStyle mergeWith(AvatarGroupStyle? other) => this;
}

/// Resolved interaction state for [AvatarGroup].
@immutable
class AvatarGroupState {
  /// Creates an [AvatarGroupState].
  const AvatarGroupState();
}

/// Values passed to [AvatarGroupDelegate] slots during build.
@immutable
class AvatarGroupContext {
  /// Creates an [AvatarGroupContext].
  const AvatarGroupContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.spacing,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final AvatarGroupStyle style;

  /// Resolved interaction state for this build.
  final AvatarGroupState state;

  /// The visual variant selected by the constructor.
  final AvatarGroupVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Spacing token between items.
  final String spacing;
}

/// Builder for the root slot.
class AvatarGroupRoot {
  /// Creates an [AvatarGroupRoot] from a builder function.
  const AvatarGroupRoot(this._build);

  final Widget Function(AvatarGroupContext context) _build;

  /// Invokes this slot with [context].
  Widget call(AvatarGroupContext context) => _build(context);
}

/// Theme-owned composition slots for [AvatarGroup].
abstract class AvatarGroupDelegate extends ComponentDelegate {
  /// Creates an [AvatarGroupDelegate].
  const AvatarGroupDelegate();

  /// Builds the composition root.
  Widget root(AvatarGroupContext context);
}

/// An [AvatarGroup] widget resolved through [AvatarGroupDelegate].
class AvatarGroup extends StatelessWidget {
  /// Creates an [AvatarGroup].
  const AvatarGroup({
    super.key,
    required this.children,
    this.spacing,
    this.style,
  }) : variant = AvatarGroupVariant.defaults;

  /// The visual variant selected by the constructor.
  final AvatarGroupVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Spacing token between items.
  final String? spacing;

  /// Style overrides merged over theme defaults.
  final AvatarGroupStyle? style;

  /// Resolves properties and builds via [AvatarGroupDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedSpacing = spacing ?? 'sm';

    const fromProps = AvatarGroupStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = AvatarGroupState();
    final avatarGroupContext = AvatarGroupContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      spacing: resolvedSpacing,
    );
    final delegate = MantleTheme.of(context).delegate<AvatarGroupDelegate>();
    return delegate.root(avatarGroupContext);
  }
}
