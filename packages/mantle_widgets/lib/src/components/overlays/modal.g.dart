// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modal.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum ModalVariant { defaults }

@immutable
class ModalStyle {
  const ModalStyle();

  ModalStyle copyWith() => this;

  ModalStyle mergeWith(ModalStyle? other) => this;
}

@immutable
class ModalState {
  const ModalState();
}

@immutable
class ModalContext {
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

  final BuildContext context;
  final ModalStyle style;
  final ModalState state;
  final ModalVariant variant;
  final bool opened;
  final Widget child;
  final Widget? title;
  final VoidCallback? onClose;
  final bool withCloseButton;
  final bool withOverlay;
  final bool centered;
  final bool fullScreen;
}

class ModalRoot {
  const ModalRoot(this._build);

  final Widget Function(ModalContext context) _build;

  Widget call(ModalContext context) => _build(context);
}

abstract class ModalDelegate extends ComponentDelegate {
  const ModalDelegate();

  Widget root(ModalContext context);
}

class Modal extends StatelessWidget {
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

  final ModalVariant variant;
  final bool? opened;
  final Widget child;
  final Widget? title;
  final VoidCallback? onClose;
  final bool? withCloseButton;
  final bool? withOverlay;
  final bool? centered;
  final bool? fullScreen;
  final ModalStyle? style;

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
