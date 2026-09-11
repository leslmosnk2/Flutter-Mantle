// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drawer.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Drawer].
enum DrawerVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Drawer].
@immutable
class DrawerStyle {
  /// Creates a [DrawerStyle].
  const DrawerStyle();

  /// Returns a copy of this [DrawerStyle] with selected fields replaced.
  DrawerStyle copyWith() => this;

  /// Merges [other] over this [DrawerStyle]; null fields keep this value.
  DrawerStyle mergeWith(DrawerStyle? other) => this;
}

/// Resolved interaction state for [Drawer].
@immutable
class DrawerState {
  /// Creates a [DrawerState].
  const DrawerState();
}

/// Values passed to [DrawerDelegate] slots during build.
@immutable
class DrawerContext {
  /// Creates a [DrawerContext].
  const DrawerContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.opened,
    required this.child,
    this.title,
    this.onClose,
    required this.position,
    required this.withOverlay,
    required this.withCloseButton,
    this.size,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final DrawerStyle style;

  /// Resolved interaction state for this build.
  final DrawerState state;

  /// The visual variant selected by the constructor.
  final DrawerVariant variant;

  /// Whether the content is expanded.
  final bool opened;

  /// The primary child widget.
  final Widget child;

  /// The title.
  final Widget? title;

  /// Called when the overlay closes.
  final VoidCallback? onClose;

  /// The position.
  final DrawerPosition position;

  /// Whether with overlay.
  final bool withOverlay;

  /// Whether with close button.
  final bool withCloseButton;

  /// Size token.
  final double? size;
}

/// Builder for the root slot.
class DrawerRoot {
  /// Creates a [DrawerRoot] from a builder function.
  const DrawerRoot(this._build);

  final Widget Function(DrawerContext context) _build;

  /// Invokes this slot with [context].
  Widget call(DrawerContext context) => _build(context);
}

/// Theme-owned composition slots for [Drawer].
abstract class DrawerDelegate extends ComponentDelegate {
  /// Creates a [DrawerDelegate].
  const DrawerDelegate();

  /// Builds the composition root.
  Widget root(DrawerContext context);
}

/// A [Drawer] widget resolved through [DrawerDelegate].
class Drawer extends StatelessWidget {
  /// Creates a [Drawer].
  const Drawer({
    super.key,
    required this.child,
    this.opened,
    this.title,
    this.onClose,
    this.position,
    this.withOverlay,
    this.withCloseButton,
    this.size,
    this.style,
  }) : variant = DrawerVariant.defaults;

  /// The visual variant selected by the constructor.
  final DrawerVariant variant;

  /// Whether the content is expanded.
  final bool? opened;

  /// The primary child widget.
  final Widget child;

  /// The title.
  final Widget? title;

  /// Called when the overlay closes.
  final VoidCallback? onClose;

  /// The position.
  final DrawerPosition? position;

  /// Whether with overlay.
  final bool? withOverlay;

  /// Whether with close button.
  final bool? withCloseButton;

  /// Size token.
  final double? size;

  /// Style overrides merged over theme defaults.
  final DrawerStyle? style;

  /// Resolves properties and builds via [DrawerDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedOpened = opened ?? false;
    final resolvedChild = child;
    final resolvedTitle = title;
    final resolvedOnClose = onClose;
    final resolvedPosition = position ?? DrawerPosition.left;
    final resolvedWithOverlay = withOverlay ?? true;
    final resolvedWithCloseButton = withCloseButton ?? true;
    final resolvedSize = size;

    const fromProps = DrawerStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = DrawerState();
    final drawerContext = DrawerContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      opened: resolvedOpened,
      child: resolvedChild,
      title: resolvedTitle,
      onClose: resolvedOnClose,
      position: resolvedPosition,
      withOverlay: resolvedWithOverlay,
      withCloseButton: resolvedWithCloseButton,
      size: resolvedSize,
    );
    final delegate = MantleTheme.of(context).delegate<DrawerDelegate>();
    return delegate.root(drawerContext);
  }
}
