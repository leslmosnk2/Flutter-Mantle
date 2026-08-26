// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visually_hidden.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum VisuallyHiddenVariant { defaults }

@immutable
class VisuallyHiddenStyle {
  const VisuallyHiddenStyle();

  VisuallyHiddenStyle copyWith() => this;

  VisuallyHiddenStyle mergeWith(VisuallyHiddenStyle? other) => this;
}

@immutable
class VisuallyHiddenState {
  const VisuallyHiddenState();
}

@immutable
class VisuallyHiddenContext {
  const VisuallyHiddenContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  final BuildContext context;
  final VisuallyHiddenStyle style;
  final VisuallyHiddenState state;
  final VisuallyHiddenVariant variant;
  final Widget child;
}

class VisuallyHiddenRoot {
  const VisuallyHiddenRoot(this._build);

  final Widget Function(VisuallyHiddenContext context) _build;

  Widget call(VisuallyHiddenContext context) => _build(context);
}

abstract class VisuallyHiddenDelegate extends ComponentDelegate {
  const VisuallyHiddenDelegate();

  Widget root(VisuallyHiddenContext context);
}

class VisuallyHidden extends StatelessWidget {
  const VisuallyHidden({super.key, required this.child, this.style})
    : variant = VisuallyHiddenVariant.defaults;

  final VisuallyHiddenVariant variant;
  final Widget child;
  final VisuallyHiddenStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = VisuallyHiddenStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = VisuallyHiddenState();
    final visuallyHiddenContext = VisuallyHiddenContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(context).delegate<VisuallyHiddenDelegate>();
    return delegate.root(visuallyHiddenContext);
  }
}
