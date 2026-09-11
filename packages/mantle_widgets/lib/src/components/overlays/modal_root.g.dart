// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modal_root.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [ModalRoot].
enum ModalRootVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [ModalRoot].
@immutable
class ModalRootStyle {
  /// Creates a [ModalRootStyle].
  const ModalRootStyle();

  /// Returns a copy of this [ModalRootStyle] with selected fields replaced.
  ModalRootStyle copyWith() => this;

  /// Merges [other] over this [ModalRootStyle]; null fields keep this value.
  ModalRootStyle mergeWith(ModalRootStyle? other) => this;
}

/// Resolved interaction state for [ModalRoot].
@immutable
class ModalRootState {
  /// Creates a [ModalRootState].
  const ModalRootState();
}

/// Values passed to [ModalRootDelegate] slots during build.
@immutable
class ModalRootContext {
  /// Creates a [ModalRootContext].
  const ModalRootContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.opened,
    required this.child,
    this.onClose,
    required this.withOverlay,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ModalRootStyle style;

  /// Resolved interaction state for this build.
  final ModalRootState state;

  /// The visual variant selected by the constructor.
  final ModalRootVariant variant;

  /// Whether the content is expanded.
  final bool opened;

  /// The primary child widget.
  final Widget child;

  /// Called when the overlay closes.
  final VoidCallback? onClose;

  /// Whether with overlay.
  final bool withOverlay;
}

/// Builder for the root slot.
class ModalRootRoot {
  /// Creates a [ModalRootRoot] from a builder function.
  const ModalRootRoot(this._build);

  final Widget Function(ModalRootContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ModalRootContext context) => _build(context);
}

/// Theme-owned composition slots for [ModalRoot].
abstract class ModalRootDelegate extends ComponentDelegate {
  /// Creates a [ModalRootDelegate].
  const ModalRootDelegate();

  /// Builds the composition root.
  Widget root(ModalRootContext context);
}

/// A [ModalRoot] widget resolved through [ModalRootDelegate].
class ModalRoot extends StatelessWidget {
  /// Creates a [ModalRoot].
  const ModalRoot({
    super.key,
    required this.child,
    this.opened,
    this.onClose,
    this.withOverlay,
    this.style,
  }) : variant = ModalRootVariant.defaults;

  /// The visual variant selected by the constructor.
  final ModalRootVariant variant;

  /// Whether the content is expanded.
  final bool? opened;

  /// The primary child widget.
  final Widget child;

  /// Called when the overlay closes.
  final VoidCallback? onClose;

  /// Whether with overlay.
  final bool? withOverlay;

  /// Style overrides merged over theme defaults.
  final ModalRootStyle? style;

  /// Resolves properties and builds via [ModalRootDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedOpened = opened ?? false;
    final resolvedChild = child;
    final resolvedOnClose = onClose;
    final resolvedWithOverlay = withOverlay ?? true;

    const fromProps = ModalRootStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ModalRootState();
    final modalRootContext = ModalRootContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      opened: resolvedOpened,
      child: resolvedChild,
      onClose: resolvedOnClose,
      withOverlay: resolvedWithOverlay,
    );
    final delegate = MantleTheme.of(context).delegate<ModalRootDelegate>();
    return delegate.root(modalRootContext);
  }
}
