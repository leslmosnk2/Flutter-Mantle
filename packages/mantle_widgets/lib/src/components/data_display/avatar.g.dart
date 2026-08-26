// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum AvatarVariant { defaults }

@immutable
class AvatarStyle {
  const AvatarStyle();

  AvatarStyle copyWith() => this;

  AvatarStyle mergeWith(AvatarStyle? other) => this;
}

@immutable
class AvatarState {
  const AvatarState();
}

@immutable
class AvatarContext {
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

  final BuildContext context;
  final AvatarStyle style;
  final AvatarState state;
  final AvatarVariant variant;
  final String? src;
  final String? name;
  final Widget? child;
  final String size;
  final String color;
  final String appearance;
  final BorderRadiusGeometry radius;
  final String? alt;
  final bool autoContrast;
}

class AvatarRoot {
  const AvatarRoot(this._build);

  final Widget Function(AvatarContext context) _build;

  Widget call(AvatarContext context) => _build(context);
}

abstract class AvatarDelegate extends ComponentDelegate {
  const AvatarDelegate();

  Widget root(AvatarContext context);
}

class Avatar extends StatelessWidget {
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

  final AvatarVariant variant;
  final String? src;
  final String? name;
  final Widget? child;
  final String? size;
  final String? color;
  final String? appearance;
  final BorderRadiusGeometry? radius;
  final String? alt;
  final bool? autoContrast;
  final AvatarStyle? style;

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

enum AvatarGroupVariant { defaults }

@immutable
class AvatarGroupStyle {
  const AvatarGroupStyle();

  AvatarGroupStyle copyWith() => this;

  AvatarGroupStyle mergeWith(AvatarGroupStyle? other) => this;
}

@immutable
class AvatarGroupState {
  const AvatarGroupState();
}

@immutable
class AvatarGroupContext {
  const AvatarGroupContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.spacing,
  });

  final BuildContext context;
  final AvatarGroupStyle style;
  final AvatarGroupState state;
  final AvatarGroupVariant variant;
  final List<Widget> children;
  final String spacing;
}

class AvatarGroupRoot {
  const AvatarGroupRoot(this._build);

  final Widget Function(AvatarGroupContext context) _build;

  Widget call(AvatarGroupContext context) => _build(context);
}

abstract class AvatarGroupDelegate extends ComponentDelegate {
  const AvatarGroupDelegate();

  Widget root(AvatarGroupContext context);
}

class AvatarGroup extends StatelessWidget {
  const AvatarGroup({
    super.key,
    required this.children,
    this.spacing,
    this.style,
  }) : variant = AvatarGroupVariant.defaults;

  final AvatarGroupVariant variant;
  final List<Widget> children;
  final String? spacing;
  final AvatarGroupStyle? style;

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
