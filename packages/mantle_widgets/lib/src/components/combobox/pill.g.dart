// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pill.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum PillVariant { defaults, contrast }

@immutable
class PillStyle {
  const PillStyle({
    this.background,
    this.color,
    this.height,
    this.fontSize,
    this.radius,
  });

  final Color? background;
  final Color? color;
  final double? height;
  final double? fontSize;
  final BorderRadiusGeometry? radius;

  PillStyle copyWith({
    Color? background,
    Color? color,
    double? height,
    double? fontSize,
    BorderRadiusGeometry? radius,
  }) {
    return PillStyle(
      background: background ?? this.background,
      color: color ?? this.color,
      height: height ?? this.height,
      fontSize: fontSize ?? this.fontSize,
      radius: radius ?? this.radius,
    );
  }

  PillStyle mergeWith(PillStyle? other) {
    if (other == null) return this;
    return PillStyle(
      background: background ?? other.background,
      color: color ?? other.color,
      height: height ?? other.height,
      fontSize: fontSize ?? other.fontSize,
      radius: radius ?? other.radius,
    );
  }
}

@immutable
class PillState {
  const PillState({this.disabled = false, this.withRemoveButton = false});

  final bool disabled;
  final bool withRemoveButton;
}

@immutable
class PillContext {
  const PillContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.withRemoveButton,
    this.onRemove,
    required this.disabled,
    this.size,
    required this.radius,
  });

  final BuildContext context;
  final PillStyle style;
  final PillState state;
  final PillVariant variant;
  final Widget child;
  final bool withRemoveButton;
  final VoidCallback? onRemove;
  final bool disabled;
  final String? size;
  final BorderRadiusGeometry radius;
}

class PillRoot {
  const PillRoot(this._build);

  final Widget Function(PillContext context) _build;

  Widget call(PillContext context) => _build(context);
}

abstract class PillDelegate extends ComponentDelegate {
  const PillDelegate();

  Widget root(PillContext context);
}

class Pill extends StatelessWidget {
  const Pill({
    super.key,
    required this.child,
    this.withRemoveButton,
    this.onRemove,
    this.disabled,
    this.size,
    this.radius,
    this.style,
  }) : variant = PillVariant.defaults;

  const Pill.contrast({
    super.key,
    required this.child,
    this.withRemoveButton,
    this.onRemove,
    this.disabled,
    this.size,
    this.radius,
    this.style,
  }) : variant = PillVariant.contrast;

  final PillVariant variant;
  final Widget child;
  final bool? withRemoveButton;
  final VoidCallback? onRemove;
  final bool? disabled;
  final String? size;
  final BorderRadiusGeometry? radius;
  final PillStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedWithRemoveButton = withRemoveButton ?? false;
    final resolvedOnRemove = onRemove;
    final resolvedDisabled = disabled ?? false;
    final resolvedSize = size;
    final resolvedRadius =
        radius ?? style?.radius ?? defaultPillRadius(context);

    final fromProps = PillStyle(radius: radius);
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = PillStyle(
      background: merged.background,
      color: merged.color,
      height: merged.height,
      fontSize: merged.fontSize,
      radius: merged.radius ?? defaultPillRadius(context),
    );
    final resolvedState = PillState(
      disabled: resolvedDisabled,
      withRemoveButton: resolvedWithRemoveButton,
    );
    final pillContext = PillContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      withRemoveButton: resolvedWithRemoveButton,
      onRemove: resolvedOnRemove,
      disabled: resolvedDisabled,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<PillDelegate>();
    return delegate.root(pillContext);
  }
}

enum PillGroupVariant { defaults }

@immutable
class PillGroupStyle {
  const PillGroupStyle();

  PillGroupStyle copyWith() => this;

  PillGroupStyle mergeWith(PillGroupStyle? other) => this;
}

@immutable
class PillGroupState {
  const PillGroupState();
}

@immutable
class PillGroupContext {
  const PillGroupContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    this.size,
    this.gap,
    required this.disabled,
  });

  final BuildContext context;
  final PillGroupStyle style;
  final PillGroupState state;
  final PillGroupVariant variant;
  final List<Widget> children;
  final String? size;
  final String? gap;
  final bool disabled;
}

class PillGroupRoot {
  const PillGroupRoot(this._build);

  final Widget Function(PillGroupContext context) _build;

  Widget call(PillGroupContext context) => _build(context);
}

abstract class PillGroupDelegate extends ComponentDelegate {
  const PillGroupDelegate();

  Widget root(PillGroupContext context);
}

class PillGroup extends StatelessWidget {
  const PillGroup({
    super.key,
    required this.children,
    this.size,
    this.gap,
    this.disabled,
    this.style,
  }) : variant = PillGroupVariant.defaults;

  final PillGroupVariant variant;
  final List<Widget> children;
  final String? size;
  final String? gap;
  final bool? disabled;
  final PillGroupStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedSize = size;
    final resolvedGap = gap;
    final resolvedDisabled = disabled ?? false;

    const fromProps = PillGroupStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = PillGroupState();
    final pillGroupContext = PillGroupContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      size: resolvedSize,
      gap: resolvedGap,
      disabled: resolvedDisabled,
    );
    final delegate = MantleTheme.of(context).delegate<PillGroupDelegate>();
    return delegate.root(pillGroupContext);
  }
}
