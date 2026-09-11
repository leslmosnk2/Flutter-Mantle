// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'color_swatch.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [MColorSwatch].
enum MColorSwatchVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MColorSwatch].
@immutable
class MColorSwatchStyle {
  /// Creates a [MColorSwatchStyle].
  const MColorSwatchStyle();

  /// Returns a copy of this [MColorSwatchStyle] with selected fields replaced.
  MColorSwatchStyle copyWith() => this;

  /// Merges [other] over this [MColorSwatchStyle]; null fields keep this value.
  MColorSwatchStyle mergeWith(MColorSwatchStyle? other) => this;
}

/// Resolved interaction state for [MColorSwatch].
@immutable
class MColorSwatchState {
  /// Creates a [MColorSwatchState].
  const MColorSwatchState();
}

/// Values passed to [MColorSwatchDelegate] slots during build.
@immutable
class MColorSwatchContext {
  /// Creates a [MColorSwatchContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MColorSwatchStyle style;

  /// Resolved interaction state for this build.
  final MColorSwatchState state;

  /// The visual variant selected by the constructor.
  final MColorSwatchVariant variant;

  /// Foreground or accent color.
  final Color color;

  /// Size token.
  final double size;

  /// Corner radius.
  final BorderRadiusGeometry radius;

  /// Whether with shadow.
  final bool withShadow;

  /// Whether checked.
  final bool checked;

  /// The primary child widget.
  final Widget? child;

  /// Called when tap.
  final VoidCallback? onTap;
}

/// Builder for the root slot.
class MColorSwatchRoot {
  /// Creates a [MColorSwatchRoot] from a builder function.
  const MColorSwatchRoot(this._build);

  final Widget Function(MColorSwatchContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MColorSwatchContext context) => _build(context);
}

/// Theme-owned composition slots for [MColorSwatch].
abstract class MColorSwatchDelegate extends ComponentDelegate {
  /// Creates a [MColorSwatchDelegate].
  const MColorSwatchDelegate();

  /// Builds the composition root.
  Widget root(MColorSwatchContext context);
}

/// A [MColorSwatch] widget resolved through [MColorSwatchDelegate].
class MColorSwatch extends StatelessWidget {
  /// Creates a [MColorSwatch].
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

  /// The visual variant selected by the constructor.
  final MColorSwatchVariant variant;

  /// Foreground or accent color.
  final Color color;

  /// Size token.
  final double? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Whether with shadow.
  final bool? withShadow;

  /// Whether checked.
  final bool? checked;

  /// The primary child widget.
  final Widget? child;

  /// Called when tap.
  final VoidCallback? onTap;

  /// Style overrides merged over theme defaults.
  final MColorSwatchStyle? style;

  /// Resolves properties and builds via [MColorSwatchDelegate].
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
