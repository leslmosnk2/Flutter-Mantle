// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'background_image.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [BackgroundImage].
enum BackgroundImageVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [BackgroundImage].
@immutable
class BackgroundImageStyle {
  /// Creates a [BackgroundImageStyle].
  const BackgroundImageStyle();

  /// Returns a copy of this [BackgroundImageStyle] with selected fields replaced.
  BackgroundImageStyle copyWith() => this;

  /// Merges [other] over this [BackgroundImageStyle]; null fields keep this value.
  BackgroundImageStyle mergeWith(BackgroundImageStyle? other) => this;
}

/// Resolved interaction state for [BackgroundImage].
@immutable
class BackgroundImageState {
  /// Creates a [BackgroundImageState].
  const BackgroundImageState();
}

/// Values passed to [BackgroundImageDelegate] slots during build.
@immutable
class BackgroundImageContext {
  /// Creates a [BackgroundImageContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final BackgroundImageStyle style;

  /// Resolved interaction state for this build.
  final BackgroundImageState state;

  /// The visual variant selected by the constructor.
  final BackgroundImageVariant variant;

  /// The src.
  final String? src;

  /// The image.
  final MantleImageProvider? image;

  /// The primary child widget.
  final Widget child;

  /// The fit.
  final BoxFit fit;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class BackgroundImageRoot {
  /// Creates a [BackgroundImageRoot] from a builder function.
  const BackgroundImageRoot(this._build);

  final Widget Function(BackgroundImageContext context) _build;

  /// Invokes this slot with [context].
  Widget call(BackgroundImageContext context) => _build(context);
}

/// Theme-owned composition slots for [BackgroundImage].
abstract class BackgroundImageDelegate extends ComponentDelegate {
  /// Creates a [BackgroundImageDelegate].
  const BackgroundImageDelegate();

  /// Builds the composition root.
  Widget root(BackgroundImageContext context);
}

/// A [BackgroundImage] widget resolved through [BackgroundImageDelegate].
class BackgroundImage extends StatelessWidget {
  /// Creates a [BackgroundImage].
  const BackgroundImage({
    super.key,
    required this.child,
    this.src,
    this.image,
    this.fit,
    this.radius,
    this.style,
  }) : variant = BackgroundImageVariant.defaults;

  /// The visual variant selected by the constructor.
  final BackgroundImageVariant variant;

  /// The src.
  final String? src;

  /// The image.
  final MantleImageProvider? image;

  /// The primary child widget.
  final Widget child;

  /// The fit.
  final BoxFit? fit;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final BackgroundImageStyle? style;

  /// Resolves properties and builds via [BackgroundImageDelegate].
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
