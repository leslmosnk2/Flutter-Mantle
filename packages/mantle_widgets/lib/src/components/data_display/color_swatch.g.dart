// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_swatch.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum MColorSwatchVariant { defaults }

@immutable
class MColorSwatchStyle {
  const MColorSwatchStyle();

  MColorSwatchStyle copyWith() => this;

  MColorSwatchStyle mergeWith(MColorSwatchStyle? other) => this;
}

@immutable
class MColorSwatchState {
  const MColorSwatchState();
}

@immutable
class MColorSwatchContext {
  const MColorSwatchContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.color,
    required this.size,
    required this.radius,
    required this.withShadow,
    required this.checked,
    this.child,
    this.onTap,
  });

  final BuildContext context;
  final MColorSwatchStyle style;
  final MColorSwatchState state;
  final MColorSwatchVariant variant;
  final Color color;
  final double size;
  final BorderRadiusGeometry radius;
  final bool withShadow;
  final bool checked;
  final Widget? child;
  final VoidCallback? onTap;
}

class MColorSwatchRoot {
  const MColorSwatchRoot(this._build);

  final Widget Function(MColorSwatchContext context) _build;

  Widget call(MColorSwatchContext context) => _build(context);
}

abstract class MColorSwatchDelegate extends ComponentDelegate {
  const MColorSwatchDelegate();

  Widget root(MColorSwatchContext context);
}

class MColorSwatch extends StatelessWidget {
  const MColorSwatch({
    super.key,
    required this.color,
    this.size,
    this.radius,
    this.withShadow,
    this.checked,
    this.child,
    this.onTap,
    this.style,
  }) : variant = MColorSwatchVariant.defaults;

  final MColorSwatchVariant variant;
  final Color color;
  final double? size;
  final BorderRadiusGeometry? radius;
  final bool? withShadow;
  final bool? checked;
  final Widget? child;
  final VoidCallback? onTap;
  final MColorSwatchStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedColor = color;
    final resolvedSize = size ?? 28;
    final resolvedRadius = radius ?? dataDisplayPillRadius(context);
    final resolvedWithShadow = withShadow ?? true;
    final resolvedChecked = checked ?? false;
    final resolvedChild = child;
    final resolvedOnTap = onTap;

    const fromProps = MColorSwatchStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MColorSwatchState();
    final mColorSwatchContext = MColorSwatchContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      color: resolvedColor,
      size: resolvedSize,
      radius: resolvedRadius,
      withShadow: resolvedWithShadow,
      checked: resolvedChecked,
      child: resolvedChild,
      onTap: resolvedOnTap,
    );
    final delegate = MantleTheme.of(context).delegate<MColorSwatchDelegate>();
    return delegate.root(mColorSwatchContext);
  }
}
