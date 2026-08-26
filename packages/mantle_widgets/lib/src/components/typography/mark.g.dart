// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mark.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum MarkVariant { defaults }

@immutable
class MarkStyle {
  const MarkStyle();

  MarkStyle copyWith() => this;

  MarkStyle mergeWith(MarkStyle? other) => this;
}

@immutable
class MarkState {
  const MarkState();
}

@immutable
class MarkContext {
  const MarkContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.color,
  });

  final BuildContext context;
  final MarkStyle style;
  final MarkState state;
  final MarkVariant variant;
  final Widget child;
  final String color;
}

class MarkRoot {
  const MarkRoot(this._build);

  final Widget Function(MarkContext context) _build;

  Widget call(MarkContext context) => _build(context);
}

abstract class MarkDelegate extends ComponentDelegate {
  const MarkDelegate();

  Widget root(MarkContext context);
}

class Mark extends StatelessWidget {
  const Mark({super.key, required this.child, this.color, this.style})
    : variant = MarkVariant.defaults;

  final MarkVariant variant;
  final Widget child;
  final String? color;
  final MarkStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedColor = color ?? 'yellow';

    const fromProps = MarkStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MarkState();
    final markContext = MarkContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      color: resolvedColor,
    );
    final delegate = MantleTheme.of(context).delegate<MarkDelegate>();
    return delegate.root(markContext);
  }
}
