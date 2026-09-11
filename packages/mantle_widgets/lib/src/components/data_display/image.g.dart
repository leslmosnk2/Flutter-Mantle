// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [MImage].
enum MImageVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MImage].
@immutable
class MImageStyle {
  /// Creates a [MImageStyle].
  const MImageStyle();

  /// Returns a copy of this [MImageStyle] with selected fields replaced.
  MImageStyle copyWith() => this;

  /// Merges [other] over this [MImageStyle]; null fields keep this value.
  MImageStyle mergeWith(MImageStyle? other) => this;
}

/// Resolved interaction state for [MImage].
@immutable
class MImageState {
  /// Creates a [MImageState].
  const MImageState();
}

/// Values passed to [MImageDelegate] slots during build.
@immutable
class MImageContext {
  /// Creates a [MImageContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MImageStyle style;

  /// Resolved interaction state for this build.
  final MImageState state;

  /// The visual variant selected by the constructor.
  final MImageVariant variant;

  /// The src.
  final String? src;

  /// The image.
  final MantleImageProvider? image;

  /// The fallback.
  final Widget? fallback;

  /// The fit.
  final BoxFit fit;

  /// Corner radius.
  final BorderRadiusGeometry radius;

  /// Width in logical pixels.
  final double? width;

  /// Height in logical pixels.
  final double? height;
}

/// Builder for the root slot.
class MImageRoot {
  /// Creates a [MImageRoot] from a builder function.
  const MImageRoot(this._build);

  final Widget Function(MImageContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MImageContext context) => _build(context);
}

/// Theme-owned composition slots for [MImage].
abstract class MImageDelegate extends ComponentDelegate {
  /// Creates a [MImageDelegate].
  const MImageDelegate();

  /// Builds the composition root.
  Widget root(MImageContext context);
}

/// A [MImage] widget resolved through [MImageDelegate].
class MImage extends StatelessWidget {
  /// Creates a [MImage].
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

  /// The visual variant selected by the constructor.
  final MImageVariant variant;

  /// The src.
  final String? src;

  /// The image.
  final MantleImageProvider? image;

  /// The fallback.
  final Widget? fallback;

  /// The fit.
  final BoxFit? fit;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Width in logical pixels.
  final double? width;

  /// Height in logical pixels.
  final double? height;

  /// Style overrides merged over theme defaults.
  final MImageStyle? style;

  /// Resolves properties and builds via [MImageDelegate].
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
