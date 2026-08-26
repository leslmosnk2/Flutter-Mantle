// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dialog.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum DialogVariant { defaults }

@immutable
class DialogStyle {
  const DialogStyle();

  DialogStyle copyWith() => this;

  DialogStyle mergeWith(DialogStyle? other) => this;
}

@immutable
class DialogState {
  const DialogState();
}

@immutable
class DialogContext {
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

  final BuildContext context;
  final DialogStyle style;
  final DialogState state;
  final DialogVariant variant;
  final bool opened;
  final Widget child;
  final VoidCallback? onClose;
  final bool withCloseButton;
  final double? top;
  final double? left;
  final double? bottom;
  final double? right;
  final double? width;
}

class DialogRoot {
  const DialogRoot(this._build);

  final Widget Function(DialogContext context) _build;

  Widget call(DialogContext context) => _build(context);
}

abstract class DialogDelegate extends ComponentDelegate {
  const DialogDelegate();

  Widget root(DialogContext context);
}

class Dialog extends StatelessWidget {
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

  final DialogVariant variant;
  final bool? opened;
  final Widget child;
  final VoidCallback? onClose;
  final bool? withCloseButton;
  final double? top;
  final double? left;
  final double? bottom;
  final double? right;
  final double? width;
  final DialogStyle? style;

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
