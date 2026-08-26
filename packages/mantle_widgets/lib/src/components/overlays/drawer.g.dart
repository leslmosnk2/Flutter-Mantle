// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drawer.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum DrawerVariant { defaults }

@immutable
class DrawerStyle {
  const DrawerStyle();

  DrawerStyle copyWith() => this;

  DrawerStyle mergeWith(DrawerStyle? other) => this;
}

@immutable
class DrawerState {
  const DrawerState();
}

@immutable
class DrawerContext {
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

  final BuildContext context;
  final DrawerStyle style;
  final DrawerState state;
  final DrawerVariant variant;
  final bool opened;
  final Widget child;
  final Widget? title;
  final VoidCallback? onClose;
  final DrawerPosition position;
  final bool withOverlay;
  final bool withCloseButton;
  final double? size;
}

class DrawerRoot {
  const DrawerRoot(this._build);

  final Widget Function(DrawerContext context) _build;

  Widget call(DrawerContext context) => _build(context);
}

abstract class DrawerDelegate extends ComponentDelegate {
  const DrawerDelegate();

  Widget root(DrawerContext context);
}

class Drawer extends StatelessWidget {
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

  final DrawerVariant variant;
  final bool? opened;
  final Widget child;
  final Widget? title;
  final VoidCallback? onClose;
  final DrawerPosition? position;
  final bool? withOverlay;
  final bool? withCloseButton;
  final double? size;
  final DrawerStyle? style;

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
