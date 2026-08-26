// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'typography.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum TypographyVariant { defaults }

@immutable
class TypographyStyle {
  const TypographyStyle();

  TypographyStyle copyWith() => this;

  TypographyStyle mergeWith(TypographyStyle? other) => this;
}

@immutable
class TypographyState {
  const TypographyState();
}

@immutable
class TypographyContext {
  const TypographyContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  final BuildContext context;
  final TypographyStyle style;
  final TypographyState state;
  final TypographyVariant variant;
  final Widget child;
}

class TypographyRoot {
  const TypographyRoot(this._build);

  final Widget Function(TypographyContext context) _build;

  Widget call(TypographyContext context) => _build(context);
}

abstract class TypographyDelegate extends ComponentDelegate {
  const TypographyDelegate();

  Widget root(TypographyContext context);
}

class Typography extends StatelessWidget {
  const Typography({super.key, required this.child, this.style})
    : variant = TypographyVariant.defaults;

  final TypographyVariant variant;
  final Widget child;
  final TypographyStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = TypographyStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TypographyState();
    final typographyContext = TypographyContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(context).delegate<TypographyDelegate>();
    return delegate.root(typographyContext);
  }
}
