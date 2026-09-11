// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fieldset.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Fieldset].
enum FieldsetVariant {
  /// The default variant.
  defaults,

  /// The filled variant.
  filled,

  /// The unstyled variant.
  unstyled,
}

/// Resolved visual values for [Fieldset].
@immutable
class FieldsetStyle {
  /// Creates a [FieldsetStyle].
  const FieldsetStyle();

  /// Returns a copy of this [FieldsetStyle] with selected fields replaced.
  FieldsetStyle copyWith() => this;

  /// Merges [other] over this [FieldsetStyle]; null fields keep this value.
  FieldsetStyle mergeWith(FieldsetStyle? other) => this;
}

/// Resolved interaction state for [Fieldset].
@immutable
class FieldsetState {
  /// Creates a [FieldsetState].
  const FieldsetState();
}

/// Values passed to [FieldsetDelegate] slots during build.
@immutable
class FieldsetContext {
  /// Creates a [FieldsetContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final FieldsetStyle style;

  /// Resolved interaction state for this build.
  final FieldsetState state;

  /// The visual variant selected by the constructor.
  final FieldsetVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The legend.
  final Widget? legend;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class FieldsetRoot {
  /// Creates a [FieldsetRoot] from a builder function.
  const FieldsetRoot(this._build);

  final Widget Function(FieldsetContext context) _build;

  /// Invokes this slot with [context].
  Widget call(FieldsetContext context) => _build(context);
}

/// Theme-owned composition slots for [Fieldset].
abstract class FieldsetDelegate extends ComponentDelegate {
  /// Creates a [FieldsetDelegate].
  const FieldsetDelegate();

  /// Builds the composition root.
  Widget root(FieldsetContext context);
}

/// A [Fieldset] widget resolved through [FieldsetDelegate].
class Fieldset extends StatelessWidget {
  /// Creates a [Fieldset].
  const Fieldset({
    super.key,
    required this.children,
    this.legend,
    this.disabled,
    this.radius,
    this.style,
  }) : variant = FieldsetVariant.defaults;

  /// Creates a filled [Fieldset].
  const Fieldset.filled({
    super.key,
    required this.children,
    this.legend,
    this.disabled,
    this.radius,
    this.style,
  }) : variant = FieldsetVariant.filled;

  /// Creates an unstyled [Fieldset].
  const Fieldset.unstyled({
    super.key,
    required this.children,
    this.legend,
    this.disabled,
    this.radius,
    this.style,
  }) : variant = FieldsetVariant.unstyled;

  /// The visual variant selected by the constructor.
  final FieldsetVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The legend.
  final Widget? legend;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final FieldsetStyle? style;

  /// Resolves properties and builds via [FieldsetDelegate].
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
