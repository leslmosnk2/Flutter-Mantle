// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blockquote.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Blockquote].
enum BlockquoteVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Blockquote].
@immutable
class BlockquoteStyle {
  /// Creates a [BlockquoteStyle].
  const BlockquoteStyle();

  /// Returns a copy of this [BlockquoteStyle] with selected fields replaced.
  BlockquoteStyle copyWith() => this;

  /// Merges [other] over this [BlockquoteStyle]; null fields keep this value.
  BlockquoteStyle mergeWith(BlockquoteStyle? other) => this;
}

/// Resolved interaction state for [Blockquote].
@immutable
class BlockquoteState {
  /// Creates a [BlockquoteState].
  const BlockquoteState();
}

/// Values passed to [BlockquoteDelegate] slots during build.
@immutable
class BlockquoteContext {
  /// Creates a [BlockquoteContext].
  const BlockquoteContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.cite,
    this.icon,
    required this.iconSize,
    this.color,
    required this.radius,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final BlockquoteStyle style;

  /// Resolved interaction state for this build.
  final BlockquoteState state;

  /// The visual variant selected by the constructor.
  final BlockquoteVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Citation shown with the quote.
  final Widget? cite;

  /// Leading or decorative icon.
  final Widget? icon;

  /// Icon size in logical pixels.
  final double iconSize;

  /// Foreground or accent color.
  final String? color;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class BlockquoteRoot {
  /// Creates a [BlockquoteRoot] from a builder function.
  const BlockquoteRoot(this._build);

  final Widget Function(BlockquoteContext context) _build;

  /// Invokes this slot with [context].
  Widget call(BlockquoteContext context) => _build(context);
}

/// Theme-owned composition slots for [Blockquote].
abstract class BlockquoteDelegate extends ComponentDelegate {
  /// Creates a [BlockquoteDelegate].
  const BlockquoteDelegate();

  /// Builds the composition root.
  Widget root(BlockquoteContext context);
}

/// A [Blockquote] widget resolved through [BlockquoteDelegate].
class Blockquote extends StatelessWidget {
  /// Creates a [Blockquote].
  const Blockquote({
    super.key,
    required this.child,
    this.cite,
    this.icon,
    this.iconSize,
    this.color,
    this.radius,
    this.style,
  }) : variant = BlockquoteVariant.defaults;

  /// The visual variant selected by the constructor.
  final BlockquoteVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Citation shown with the quote.
  final Widget? cite;

  /// Leading or decorative icon.
  final Widget? icon;

  /// Icon size in logical pixels.
  final double? iconSize;

  /// Foreground or accent color.
  final String? color;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final BlockquoteStyle? style;

  /// Resolves properties and builds via [BlockquoteDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedCite = cite;
    final resolvedIcon = icon;
    final resolvedIconSize = iconSize ?? 48;
    final resolvedColor = color;
    final resolvedRadius = radius ?? typographyDefaultRadius(context);

    const fromProps = BlockquoteStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = BlockquoteState();
    final blockquoteContext = BlockquoteContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      cite: resolvedCite,
      icon: resolvedIcon,
      iconSize: resolvedIconSize,
      color: resolvedColor,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<BlockquoteDelegate>();
    return delegate.root(blockquoteContext);
  }
}
