// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum MImageVariant { defaults }

@immutable
class MImageStyle {
  const MImageStyle();

  MImageStyle copyWith() => this;

  MImageStyle mergeWith(MImageStyle? other) => this;
}

@immutable
class MImageState {
  const MImageState();
}

@immutable
class MImageContext {
  const MImageContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.src,
    this.image,
    this.fallback,
    required this.fit,
    required this.radius,
    this.width,
    this.height,
  });

  final BuildContext context;
  final MImageStyle style;
  final MImageState state;
  final MImageVariant variant;
  final String? src;
  final MantleImageProvider? image;
  final Widget? fallback;
  final BoxFit fit;
  final BorderRadiusGeometry radius;
  final double? width;
  final double? height;
}

class MImageRoot {
  const MImageRoot(this._build);

  final Widget Function(MImageContext context) _build;

  Widget call(MImageContext context) => _build(context);
}

abstract class MImageDelegate extends ComponentDelegate {
  const MImageDelegate();

  Widget root(MImageContext context);
}

class MImage extends StatelessWidget {
  const MImage({
    super.key,
    this.src,
    this.image,
    this.fallback,
    this.fit,
    this.radius,
    this.width,
    this.height,
    this.style,
  }) : variant = MImageVariant.defaults;

  final MImageVariant variant;
  final String? src;
  final MantleImageProvider? image;
  final Widget? fallback;
  final BoxFit? fit;
  final BorderRadiusGeometry? radius;
  final double? width;
  final double? height;
  final MImageStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedSrc = src;
    final resolvedImage = image;
    final resolvedFallback = fallback;
    final resolvedFit = fit ?? BoxFit.cover;
    final resolvedRadius = radius ?? _zeroRadius(context);
    final resolvedWidth = width;
    final resolvedHeight = height;

    const fromProps = MImageStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MImageState();
    final mImageContext = MImageContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      src: resolvedSrc,
      image: resolvedImage,
      fallback: resolvedFallback,
      fit: resolvedFit,
      radius: resolvedRadius,
      width: resolvedWidth,
      height: resolvedHeight,
    );
    final delegate = MantleTheme.of(context).delegate<MImageDelegate>();
    return delegate.root(mImageContext);
  }
}
