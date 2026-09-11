// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modal.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Modal].
enum ModalVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Modal].
@immutable
class ModalStyle {
  /// Creates a [ModalStyle].
  const ModalStyle();

  /// Returns a copy of this [ModalStyle] with selected fields replaced.
  ModalStyle copyWith() => this;

  /// Merges [other] over this [ModalStyle]; null fields keep this value.
  ModalStyle mergeWith(ModalStyle? other) => this;
}

/// Resolved interaction state for [Modal].
@immutable
class ModalState {
  /// Creates a [ModalState].
  const ModalState();
}

/// Values passed to [ModalDelegate] slots during build.
@immutable
class ModalContext {
  /// Creates a [ModalContext].
  const ModalContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.opened,
    required this.child,
    this.title,
    this.onClose,
    required this.withCloseButton,
    required this.withOverlay,
    required this.centered,
    required this.fullScreen,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ModalStyle style;

  /// Resolved interaction state for this build.
  final ModalState state;

  /// The visual variant selected by the constructor.
  final ModalVariant variant;

  /// Whether the content is expanded.
  final bool opened;

  /// The primary child widget.
  final Widget child;

  /// The title.
  final Widget? title;

  /// Called when the overlay closes.
  final VoidCallback? onClose;

  /// Whether with close button.
  final bool withCloseButton;

  /// Whether with overlay.
  final bool withOverlay;

  /// Whether centered.
  final bool centered;

  /// Whether full screen.
  final bool fullScreen;
}

/// Builder for the root slot.
class ModalRoot {
  /// Creates a [ModalRoot] from a builder function.
  const ModalRoot(this._build);

  final Widget Function(ModalContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ModalContext context) => _build(context);
}

/// Theme-owned composition slots for [Modal].
abstract class ModalDelegate extends ComponentDelegate {
  /// Creates a [ModalDelegate].
  const ModalDelegate();

  /// Builds the composition root.
  Widget root(ModalContext context);
}

/// A [Modal] widget resolved through [ModalDelegate].
class Modal extends StatelessWidget {
  /// Creates a [Modal].
  const Modal({
    super.key,
    required this.child,
    this.opened,
    this.title,
    this.onClose,
    this.withCloseButton,
    this.withOverlay,
    this.centered,
    this.fullScreen,
    this.style,
  }) : variant = ModalVariant.defaults;

  /// The visual variant selected by the constructor.
  final ModalVariant variant;

  /// Whether the content is expanded.
  final bool? opened;

  /// The primary child widget.
  final Widget child;

  /// The title.
  final Widget? title;

  /// Called when the overlay closes.
  final VoidCallback? onClose;

  /// Whether with close button.
  final bool? withCloseButton;

  /// Whether with overlay.
  final bool? withOverlay;

  /// Whether centered.
  final bool? centered;

  /// Whether full screen.
  final bool? fullScreen;

  /// Style overrides merged over theme defaults.
  final ModalStyle? style;

  /// Resolves properties and builds via [ModalDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedOpened = opened ?? false;
    final resolvedChild = child;
    final resolvedTitle = title;
    final resolvedOnClose = onClose;
    final resolvedWithCloseButton = withCloseButton ?? true;
    final resolvedWithOverlay = withOverlay ?? true;
    final resolvedCentered = centered ?? false;
    final resolvedFullScreen = fullScreen ?? false;

    const fromProps = ModalStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ModalState();
    final modalContext = ModalContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      opened: resolvedOpened,
      child: resolvedChild,
      title: resolvedTitle,
      onClose: resolvedOnClose,
      withCloseButton: resolvedWithCloseButton,
      withOverlay: resolvedWithOverlay,
      centered: resolvedCentered,
      fullScreen: resolvedFullScreen,
    );
    final delegate = MantleTheme.of(context).delegate<ModalDelegate>();
    return delegate.root(modalContext);
  }
}
