// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dialog.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Dialog].
enum DialogVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Dialog].
@immutable
class DialogStyle {
  /// Creates a [DialogStyle].
  const DialogStyle();

  /// Returns a copy of this [DialogStyle] with selected fields replaced.
  DialogStyle copyWith() => this;

  /// Merges [other] over this [DialogStyle]; null fields keep this value.
  DialogStyle mergeWith(DialogStyle? other) => this;
}

/// Resolved interaction state for [Dialog].
@immutable
class DialogState {
  /// Creates a [DialogState].
  const DialogState();
}

/// Values passed to [DialogDelegate] slots during build.
@immutable
class DialogContext {
  /// Creates a [DialogContext].
  const DialogContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.opened,
    required this.child,
    this.onClose,
    required this.withCloseButton,
    this.top,
    this.left,
    this.bottom,
    this.right,
    this.width,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final DialogStyle style;

  /// Resolved interaction state for this build.
  final DialogState state;

  /// The visual variant selected by the constructor.
  final DialogVariant variant;

  /// Whether the content is expanded.
  final bool opened;

  /// The primary child widget.
  final Widget child;

  /// Called when the overlay closes.
  final VoidCallback? onClose;

  /// Whether with close button.
  final bool withCloseButton;

  /// The top.
  final double? top;

  /// The left.
  final double? left;

  /// The bottom.
  final double? bottom;

  /// The right.
  final double? right;

  /// Width in logical pixels.
  final double? width;
}

/// Builder for the root slot.
class DialogRoot {
  /// Creates a [DialogRoot] from a builder function.
  const DialogRoot(this._build);

  final Widget Function(DialogContext context) _build;

  /// Invokes this slot with [context].
  Widget call(DialogContext context) => _build(context);
}

/// Theme-owned composition slots for [Dialog].
abstract class DialogDelegate extends ComponentDelegate {
  /// Creates a [DialogDelegate].
  const DialogDelegate();

  /// Builds the composition root.
  Widget root(DialogContext context);
}

/// A [Dialog] widget resolved through [DialogDelegate].
class Dialog extends StatelessWidget {
  /// Creates a [Dialog].
  const Dialog({
    super.key,
    required this.child,
    this.opened,
    this.onClose,
    this.withCloseButton,
    this.top,
    this.left,
    this.bottom,
    this.right,
    this.width,
    this.style,
  }) : variant = DialogVariant.defaults;

  /// The visual variant selected by the constructor.
  final DialogVariant variant;

  /// Whether the content is expanded.
  final bool? opened;

  /// The primary child widget.
  final Widget child;

  /// Called when the overlay closes.
  final VoidCallback? onClose;

  /// Whether with close button.
  final bool? withCloseButton;

  /// The top.
  final double? top;

  /// The left.
  final double? left;

  /// The bottom.
  final double? bottom;

  /// The right.
  final double? right;

  /// Width in logical pixels.
  final double? width;

  /// Style overrides merged over theme defaults.
  final DialogStyle? style;

  /// Resolves properties and builds via [DialogDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedOpened = opened ?? false;
    final resolvedChild = child;
    final resolvedOnClose = onClose;
    final resolvedWithCloseButton = withCloseButton ?? true;
    final resolvedTop = top;
    final resolvedLeft = left;
    final resolvedBottom = bottom;
    final resolvedRight = right;
    final resolvedWidth = width;

    const fromProps = DialogStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = DialogState();
    final dialogContext = DialogContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      opened: resolvedOpened,
      child: resolvedChild,
      onClose: resolvedOnClose,
      withCloseButton: resolvedWithCloseButton,
      top: resolvedTop,
      left: resolvedLeft,
      bottom: resolvedBottom,
      right: resolvedRight,
      width: resolvedWidth,
    );
    final delegate = MantleTheme.of(context).delegate<DialogDelegate>();
    return delegate.root(dialogContext);
  }
}
