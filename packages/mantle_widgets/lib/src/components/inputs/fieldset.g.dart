// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fieldset.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum FieldsetVariant { defaults, filled, unstyled }

@immutable
class FieldsetStyle {
  const FieldsetStyle();

  FieldsetStyle copyWith() => this;

  FieldsetStyle mergeWith(FieldsetStyle? other) => this;
}

@immutable
class FieldsetState {
  const FieldsetState();
}

@immutable
class FieldsetContext {
  const FieldsetContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    this.legend,
    required this.disabled,
    required this.radius,
  });

  final BuildContext context;
  final FieldsetStyle style;
  final FieldsetState state;
  final FieldsetVariant variant;
  final List<Widget> children;
  final Widget? legend;
  final bool disabled;
  final BorderRadiusGeometry radius;
}

class FieldsetRoot {
  const FieldsetRoot(this._build);

  final Widget Function(FieldsetContext context) _build;

  Widget call(FieldsetContext context) => _build(context);
}

abstract class FieldsetDelegate extends ComponentDelegate {
  const FieldsetDelegate();

  Widget root(FieldsetContext context);
}

class Fieldset extends StatelessWidget {
  const Fieldset({
    super.key,
    required this.children,
    this.legend,
    this.disabled,
    this.radius,
    this.style,
  }) : variant = FieldsetVariant.defaults;

  const Fieldset.filled({
    super.key,
    required this.children,
    this.legend,
    this.disabled,
    this.radius,
    this.style,
  }) : variant = FieldsetVariant.filled;

  const Fieldset.unstyled({
    super.key,
    required this.children,
    this.legend,
    this.disabled,
    this.radius,
    this.style,
  }) : variant = FieldsetVariant.unstyled;

  final FieldsetVariant variant;
  final List<Widget> children;
  final Widget? legend;
  final bool? disabled;
  final BorderRadiusGeometry? radius;
  final FieldsetStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedLegend = legend;
    final resolvedDisabled = disabled ?? false;
    final resolvedRadius = radius ?? inputDefaultRadius(context);

    const fromProps = FieldsetStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = FieldsetState();
    final fieldsetContext = FieldsetContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      legend: resolvedLegend,
      disabled: resolvedDisabled,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<FieldsetDelegate>();
    return delegate.root(fieldsetContext);
  }
}
