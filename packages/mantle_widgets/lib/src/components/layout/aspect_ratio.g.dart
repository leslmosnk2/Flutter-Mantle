// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'aspect_ratio.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum MAspectRatioVariant { defaults }

@immutable
class MAspectRatioStyle {
  const MAspectRatioStyle();

  MAspectRatioStyle copyWith() => this;

  MAspectRatioStyle mergeWith(MAspectRatioStyle? other) => this;
}

@immutable
class MAspectRatioState {
  const MAspectRatioState();
}

@immutable
class MAspectRatioContext {
  const MAspectRatioContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.ratio,
  });

  final BuildContext context;
  final MAspectRatioStyle style;
  final MAspectRatioState state;
  final MAspectRatioVariant variant;
  final Widget child;
  final double ratio;
}

class MAspectRatioRoot {
  const MAspectRatioRoot(this._build);

  final Widget Function(MAspectRatioContext context) _build;

  Widget call(MAspectRatioContext context) => _build(context);
}

abstract class MAspectRatioDelegate extends ComponentDelegate {
  const MAspectRatioDelegate();

  Widget root(MAspectRatioContext context);
}

class MAspectRatio extends StatelessWidget {
  const MAspectRatio({super.key, required this.child, this.ratio, this.style})
    : variant = MAspectRatioVariant.defaults;

  final MAspectRatioVariant variant;
  final Widget child;
  final double? ratio;
  final MAspectRatioStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedRatio = ratio ?? 1;

    const fromProps = MAspectRatioStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MAspectRatioState();
    final mAspectRatioContext = MAspectRatioContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      ratio: resolvedRatio,
    );
    final delegate = MantleTheme.of(context).delegate<MAspectRatioDelegate>();
    return delegate.root(mAspectRatioContext);
  }
}
