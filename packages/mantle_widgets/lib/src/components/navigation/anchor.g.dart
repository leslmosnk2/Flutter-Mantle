// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anchor.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Anchor].
enum AnchorVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Anchor].
@immutable
class AnchorStyle {
  /// Creates an [AnchorStyle].
  const AnchorStyle();

  /// Returns a copy of this [AnchorStyle] with selected fields replaced.
  AnchorStyle copyWith() => this;

  /// Merges [other] over this [AnchorStyle]; null fields keep this value.
  AnchorStyle mergeWith(AnchorStyle? other) => this;
}

/// Resolved interaction state for [Anchor].
@immutable
class AnchorState {
  /// Creates an [AnchorState].
  const AnchorState();
}

/// Values passed to [AnchorDelegate] slots during build.
@immutable
class AnchorContext {
  /// Creates an [AnchorContext].
  const AnchorContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.onPressed,
    this.href,
    required this.underline,
    required this.size,
    this.color,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final AnchorStyle style;

  /// Resolved interaction state for this build.
  final AnchorState state;

  /// The visual variant selected by the constructor.
  final AnchorVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Called when the control is pressed.
  final AnchorOnPressed? onPressed;

  /// The href.
  final String? href;

  /// The underline.
  final AnchorUnderline underline;

  /// Size token.
  final String size;

  /// Foreground or accent color.
  final String? color;
}

/// Builder for the root slot.
class AnchorRoot {
  /// Creates an [AnchorRoot] from a builder function.
  const AnchorRoot(this._build);

  final Widget Function(AnchorContext context) _build;

  /// Invokes this slot with [context].
  Widget call(AnchorContext context) => _build(context);
}

/// Theme-owned composition slots for [Anchor].
abstract class AnchorDelegate extends ComponentDelegate {
  /// Creates an [AnchorDelegate].
  const AnchorDelegate();

  /// Builds the composition root.
  Widget root(AnchorContext context);
}

/// An [Anchor] widget resolved through [AnchorDelegate].
class Anchor extends StatelessWidget {
  /// Creates an [Anchor].
  const Anchor({
    super.key,
    required this.child,
    this.onPressed,
    this.href,
    this.underline,
    this.size,
    this.color,
    this.style,
  }) : variant = AnchorVariant.defaults;

  /// The visual variant selected by the constructor.
  final AnchorVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Called when the control is pressed.
  final AnchorOnPressed? onPressed;

  /// The href.
  final String? href;

  /// The underline.
  final AnchorUnderline? underline;

  /// Size token.
  final String? size;

  /// Foreground or accent color.
  final String? color;

  /// Style overrides merged over theme defaults.
  final AnchorStyle? style;

  /// Resolves properties and builds via [AnchorDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedOnPressed = onPressed;
    final resolvedHref = href;
    final resolvedUnderline = underline ?? AnchorUnderline.hover;
    final resolvedSize = size ?? 'sm';
    final resolvedColor = color;

    const fromProps = AnchorStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = AnchorState();
    final anchorContext = AnchorContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      onPressed: resolvedOnPressed,
      href: resolvedHref,
      underline: resolvedUnderline,
      size: resolvedSize,
      color: resolvedColor,
    );
    final delegate = MantleTheme.of(context).delegate<AnchorDelegate>();
    return delegate.root(anchorContext);
  }
}
