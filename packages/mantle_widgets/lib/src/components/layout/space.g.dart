// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'space.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum SpaceVariant { defaults }

@immutable
class SpaceStyle {
  const SpaceStyle();

  SpaceStyle copyWith() => this;

  SpaceStyle mergeWith(SpaceStyle? other) => this;
}

@immutable
class SpaceState {
  const SpaceState();
}

@immutable
class SpaceContext {
  const SpaceContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.width,
    this.height,
    this.w,
    this.h,
  });

  final BuildContext context;
  final SpaceStyle style;
  final SpaceState state;
  final SpaceVariant variant;
  final double? width;
  final double? height;
  final String? w;
  final String? h;
}

class SpaceRoot {
  const SpaceRoot(this._build);

  final Widget Function(SpaceContext context) _build;

  Widget call(SpaceContext context) => _build(context);
}

abstract class SpaceDelegate extends ComponentDelegate {
  const SpaceDelegate();

  Widget root(SpaceContext context);
}

class Space extends StatelessWidget {
  const Space({super.key, this.width, this.height, this.w, this.h, this.style})
    : variant = SpaceVariant.defaults;

  final SpaceVariant variant;
  final double? width;
  final double? height;
  final String? w;
  final String? h;
  final SpaceStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedWidth = width;
    final resolvedHeight = height;
    final resolvedW = w;
    final resolvedH = h;

    const fromProps = SpaceStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = SpaceState();
    final spaceContext = SpaceContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      width: resolvedWidth,
      height: resolvedHeight,
      w: resolvedW,
      h: resolvedH,
    );
    final delegate = MantleTheme.of(context).delegate<SpaceDelegate>();
    return delegate.root(spaceContext);
  }
}
