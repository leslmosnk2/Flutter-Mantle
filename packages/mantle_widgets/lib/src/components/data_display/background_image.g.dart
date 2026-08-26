// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'background_image.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum BackgroundImageVariant { defaults }

@immutable
class BackgroundImageStyle {
  const BackgroundImageStyle();

  BackgroundImageStyle copyWith() => this;

  BackgroundImageStyle mergeWith(BackgroundImageStyle? other) => this;
}

@immutable
class BackgroundImageState {
  const BackgroundImageState();
}

@immutable
class BackgroundImageContext {
  const BackgroundImageContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.src,
    this.image,
    required this.child,
    required this.fit,
    required this.radius,
  });

  final BuildContext context;
  final BackgroundImageStyle style;
  final BackgroundImageState state;
  final BackgroundImageVariant variant;
  final String? src;
  final MantleImageProvider? image;
  final Widget child;
  final BoxFit fit;
  final BorderRadiusGeometry radius;
}

class BackgroundImageRoot {
  const BackgroundImageRoot(this._build);

  final Widget Function(BackgroundImageContext context) _build;

  Widget call(BackgroundImageContext context) => _build(context);
}

abstract class BackgroundImageDelegate extends ComponentDelegate {
  const BackgroundImageDelegate();

  Widget root(BackgroundImageContext context);
}

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({
    super.key,
    required this.child,
    this.src,
    this.image,
    this.fit,
    this.radius,
    this.style,
  }) : variant = BackgroundImageVariant.defaults;

  final BackgroundImageVariant variant;
  final String? src;
  final MantleImageProvider? image;
  final Widget child;
  final BoxFit? fit;
  final BorderRadiusGeometry? radius;
  final BackgroundImageStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedSrc = src;
    final resolvedImage = image;
    final resolvedChild = child;
    final resolvedFit = fit ?? BoxFit.cover;
    final resolvedRadius = radius ?? _zeroRadius(context);

    const fromProps = BackgroundImageStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = BackgroundImageState();
    final backgroundImageContext = BackgroundImageContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      src: resolvedSrc,
      image: resolvedImage,
      child: resolvedChild,
      fit: resolvedFit,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<BackgroundImageDelegate>();
    return delegate.root(backgroundImageContext);
  }
}
