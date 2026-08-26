// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portal.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum PortalVariant { defaults }

@immutable
class PortalStyle {
  const PortalStyle();

  PortalStyle copyWith() => this;

  PortalStyle mergeWith(PortalStyle? other) => this;
}

@immutable
class PortalState {
  const PortalState();
}

@immutable
class PortalContext {
  const PortalContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  final BuildContext context;
  final PortalStyle style;
  final PortalState state;
  final PortalVariant variant;
  final Widget child;
}

class PortalRoot {
  const PortalRoot(this._build);

  final Widget Function(PortalContext context) _build;

  Widget call(PortalContext context) => _build(context);
}

abstract class PortalDelegate extends ComponentDelegate {
  const PortalDelegate();

  Widget root(PortalContext context);
}

class Portal extends StatelessWidget {
  const Portal({super.key, required this.child, this.style})
    : variant = PortalVariant.defaults;

  final PortalVariant variant;
  final Widget child;
  final PortalStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = PortalStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = PortalState();
    final portalContext = PortalContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(context).delegate<PortalDelegate>();
    return delegate.root(portalContext);
  }
}
