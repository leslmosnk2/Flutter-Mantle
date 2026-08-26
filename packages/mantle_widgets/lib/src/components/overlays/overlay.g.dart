// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overlay.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum MOverlayVariant { defaults }

@immutable
class MOverlayStyle {
  const MOverlayStyle();

  MOverlayStyle copyWith() => this;

  MOverlayStyle mergeWith(MOverlayStyle? other) => this;
}

@immutable
class MOverlayState {
  const MOverlayState();
}

@immutable
class MOverlayContext {
  const MOverlayContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.visible,
    required this.backgroundOpacity,
    this.color,
    this.onTap,
    this.child,
    required this.center,
  });

  final BuildContext context;
  final MOverlayStyle style;
  final MOverlayState state;
  final MOverlayVariant variant;
  final bool visible;
  final double backgroundOpacity;
  final Color? color;
  final VoidCallback? onTap;
  final Widget? child;
  final bool center;
}

class MOverlayRoot {
  const MOverlayRoot(this._build);

  final Widget Function(MOverlayContext context) _build;

  Widget call(MOverlayContext context) => _build(context);
}

abstract class MOverlayDelegate extends ComponentDelegate {
  const MOverlayDelegate();

  Widget root(MOverlayContext context);
}

class MOverlay extends StatelessWidget {
  const MOverlay({
    super.key,
    this.visible,
    this.backgroundOpacity,
    this.color,
    this.onTap,
    this.child,
    this.center,
    this.style,
  }) : variant = MOverlayVariant.defaults;

  final MOverlayVariant variant;
  final bool? visible;
  final double? backgroundOpacity;
  final Color? color;
  final VoidCallback? onTap;
  final Widget? child;
  final bool? center;
  final MOverlayStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedVisible = visible ?? true;
    final resolvedBackgroundOpacity = backgroundOpacity ?? 0.6;
    final resolvedColor = color;
    final resolvedOnTap = onTap;
    final resolvedChild = child;
    final resolvedCenter = center ?? false;

    const fromProps = MOverlayStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MOverlayState();
    final mOverlayContext = MOverlayContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      visible: resolvedVisible,
      backgroundOpacity: resolvedBackgroundOpacity,
      color: resolvedColor,
      onTap: resolvedOnTap,
      child: resolvedChild,
      center: resolvedCenter,
    );
    final delegate = MantleTheme.of(context).delegate<MOverlayDelegate>();
    return delegate.root(mOverlayContext);
  }
}
