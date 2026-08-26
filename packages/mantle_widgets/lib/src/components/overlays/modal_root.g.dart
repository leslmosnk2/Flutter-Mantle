// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modal_root.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum ModalRootVariant { defaults }

@immutable
class ModalRootStyle {
  const ModalRootStyle();

  ModalRootStyle copyWith() => this;

  ModalRootStyle mergeWith(ModalRootStyle? other) => this;
}

@immutable
class ModalRootState {
  const ModalRootState();
}

@immutable
class ModalRootContext {
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

  final BuildContext context;
  final ModalRootStyle style;
  final ModalRootState state;
  final ModalRootVariant variant;
  final bool opened;
  final Widget child;
  final VoidCallback? onClose;
  final bool withOverlay;
}

class ModalRootRoot {
  const ModalRootRoot(this._build);

  final Widget Function(ModalRootContext context) _build;

  Widget call(ModalRootContext context) => _build(context);
}

abstract class ModalRootDelegate extends ComponentDelegate {
  const ModalRootDelegate();

  Widget root(ModalRootContext context);
}

class ModalRoot extends StatelessWidget {
  const ModalRoot({
    super.key,
    required this.child,
    this.opened,
    this.onClose,
    this.withOverlay,
    this.style,
  }) : variant = ModalRootVariant.defaults;

  final ModalRootVariant variant;
  final bool? opened;
  final Widget child;
  final VoidCallback? onClose;
  final bool? withOverlay;
  final ModalRootStyle? style;

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
