// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loading_overlay.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum LoadingOverlayVariant { defaults }

@immutable
class LoadingOverlayStyle {
  const LoadingOverlayStyle();

  LoadingOverlayStyle copyWith() => this;

  LoadingOverlayStyle mergeWith(LoadingOverlayStyle? other) => this;
}

@immutable
class LoadingOverlayState {
  const LoadingOverlayState();
}

@immutable
class LoadingOverlayContext {
  const LoadingOverlayContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.visible,
    required this.backgroundOpacity,
  });

  final BuildContext context;
  final LoadingOverlayStyle style;
  final LoadingOverlayState state;
  final LoadingOverlayVariant variant;
  final Widget child;
  final bool visible;
  final double backgroundOpacity;
}

class LoadingOverlayRoot {
  const LoadingOverlayRoot(this._build);

  final Widget Function(LoadingOverlayContext context) _build;

  Widget call(LoadingOverlayContext context) => _build(context);
}

abstract class LoadingOverlayDelegate extends ComponentDelegate {
  const LoadingOverlayDelegate();

  Widget root(LoadingOverlayContext context);
}

class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({
    super.key,
    required this.child,
    this.visible,
    this.backgroundOpacity,
    this.style,
  }) : variant = LoadingOverlayVariant.defaults;

  final LoadingOverlayVariant variant;
  final Widget child;
  final bool? visible;
  final double? backgroundOpacity;
  final LoadingOverlayStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedVisible = visible ?? false;
    final resolvedBackgroundOpacity = backgroundOpacity ?? 0.75;

    const fromProps = LoadingOverlayStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = LoadingOverlayState();
    final loadingOverlayContext = LoadingOverlayContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      visible: resolvedVisible,
      backgroundOpacity: resolvedBackgroundOpacity,
    );
    final delegate = MantleTheme.of(context).delegate<LoadingOverlayDelegate>();
    return delegate.root(loadingOverlayContext);
  }
}
