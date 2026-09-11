// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stepper.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Stepper].
enum StepperVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Stepper].
@immutable
class StepperStyle {
  /// Creates a [StepperStyle].
  const StepperStyle();

  /// Returns a copy of this [StepperStyle] with selected fields replaced.
  StepperStyle copyWith() => this;

  /// Merges [other] over this [StepperStyle]; null fields keep this value.
  StepperStyle mergeWith(StepperStyle? other) => this;
}

/// Resolved interaction state for [Stepper].
@immutable
class StepperState {
  /// Creates a [StepperState].
  const StepperState();
}

/// Values passed to [StepperDelegate] slots during build.
@immutable
class StepperContext {
  /// Creates a [StepperContext].
  const StepperContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.active,
    this.onStepClick,
    required this.orientation,
    required this.iconPosition,
    required this.allowNextStepsSelect,
    required this.wrap,
    required this.size,
    this.color,
    required this.contentPadding,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final StepperStyle style;

  /// Resolved interaction state for this build.
  final StepperState state;

  /// The visual variant selected by the constructor.
  final StepperVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Whether this item is the active option.
  final int active;

  /// Called when step click.
  final StepperOnStepClick? onStepClick;

  /// The orientation.
  final Axis orientation;

  /// The icon position.
  final StepIconPosition iconPosition;

  /// Whether allow next steps select.
  final bool allowNextStepsSelect;

  /// Whether wrap.
  final bool wrap;

  /// Size token.
  final String size;

  /// Foreground or accent color.
  final String? color;

  /// The content padding.
  final String contentPadding;
}

/// Builder for the root slot.
class StepperRoot {
  /// Creates a [StepperRoot] from a builder function.
  const StepperRoot(this._build);

  final Widget Function(StepperContext context) _build;

  /// Invokes this slot with [context].
  Widget call(StepperContext context) => _build(context);
}

/// Theme-owned composition slots for [Stepper].
abstract class StepperDelegate extends ComponentDelegate {
  /// Creates a [StepperDelegate].
  const StepperDelegate();

  /// Builds the composition root.
  Widget root(StepperContext context);
}

/// A [Stepper] widget resolved through [StepperDelegate].
class Stepper extends StatelessWidget {
  /// Creates a [Stepper].
  const Stepper({
    super.key,
    required this.children,
    required this.active,
    this.onStepClick,
    this.orientation,
    this.iconPosition,
    this.allowNextStepsSelect,
    this.wrap,
    this.size,
    this.color,
    this.contentPadding,
    this.style,
  }) : variant = StepperVariant.defaults;

  /// The visual variant selected by the constructor.
  final StepperVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Whether this item is the active option.
  final int active;

  /// Called when step click.
  final StepperOnStepClick? onStepClick;

  /// The orientation.
  final Axis? orientation;

  /// The icon position.
  final StepIconPosition? iconPosition;

  /// Whether allow next steps select.
  final bool? allowNextStepsSelect;

  /// Whether wrap.
  final bool? wrap;

  /// Size token.
  final String? size;

  /// Foreground or accent color.
  final String? color;

  /// The content padding.
  final String? contentPadding;

  /// Style overrides merged over theme defaults.
  final StepperStyle? style;

  /// Resolves properties and builds via [StepperDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedActive = active;
    final resolvedOnStepClick = onStepClick;
    final resolvedOrientation = orientation ?? Axis.horizontal;
    final resolvedIconPosition = iconPosition ?? StepIconPosition.left;
    final resolvedAllowNextStepsSelect = allowNextStepsSelect ?? true;
    final resolvedWrap = wrap ?? true;
    final resolvedSize = size ?? 'md';
    final resolvedColor = color;
    final resolvedContentPadding = contentPadding ?? 'md';

    const fromProps = StepperStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = StepperState();
    final stepperContext = StepperContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      active: resolvedActive,
      onStepClick: resolvedOnStepClick,
      orientation: resolvedOrientation,
      iconPosition: resolvedIconPosition,
      allowNextStepsSelect: resolvedAllowNextStepsSelect,
      wrap: resolvedWrap,
      size: resolvedSize,
      color: resolvedColor,
      contentPadding: resolvedContentPadding,
    );
    final delegate = MantleTheme.of(context).delegate<StepperDelegate>();
    return delegate.root(stepperContext);
  }
}

/// Visual variants of [StepperStep].
enum StepperStepVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [StepperStep].
@immutable
class StepperStepStyle {
  /// Creates a [StepperStepStyle].
  const StepperStepStyle();

  /// Returns a copy of this [StepperStepStyle] with selected fields replaced.
  StepperStepStyle copyWith() => this;

  /// Merges [other] over this [StepperStepStyle]; null fields keep this value.
  StepperStepStyle mergeWith(StepperStepStyle? other) => this;
}

/// Resolved interaction state for [StepperStep].
@immutable
class StepperStepState {
  /// Creates a [StepperStepState].
  const StepperStepState();
}

/// Values passed to [StepperStepDelegate] slots during build.
@immutable
class StepperStepContext {
  /// Creates a [StepperStepContext].
  const StepperStepContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.label,
    this.description,
    this.icon,
    this.child,
    required this.loading,
    this.allowStepSelect,
    required this.withIcon,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final StepperStepStyle style;

  /// Resolved interaction state for this build.
  final StepperStepState state;

  /// The visual variant selected by the constructor.
  final StepperStepVariant variant;

  /// The label.
  final Widget? label;

  /// Supporting description text.
  final Widget? description;

  /// Leading or decorative icon.
  final Widget? icon;

  /// The primary child widget.
  final Widget? child;

  /// Whether a loading indicator is shown.
  final bool loading;

  /// Whether allow step select.
  final bool? allowStepSelect;

  /// Whether with icon.
  final bool withIcon;
}

/// Builder for the root slot.
class StepperStepRoot {
  /// Creates a [StepperStepRoot] from a builder function.
  const StepperStepRoot(this._build);

  final Widget Function(StepperStepContext context) _build;

  /// Invokes this slot with [context].
  Widget call(StepperStepContext context) => _build(context);
}

/// Theme-owned composition slots for [StepperStep].
abstract class StepperStepDelegate extends ComponentDelegate {
  /// Creates a [StepperStepDelegate].
  const StepperStepDelegate();

  /// Builds the composition root.
  Widget root(StepperStepContext context);
}

/// A [StepperStep] widget resolved through [StepperStepDelegate].
class StepperStep extends StatelessWidget {
  /// Creates a [StepperStep].
  const StepperStep({
    super.key,
    this.label,
    this.description,
    this.icon,
    this.child,
    this.loading,
    this.allowStepSelect,
    this.withIcon,
    this.style,
  }) : variant = StepperStepVariant.defaults;

  /// The visual variant selected by the constructor.
  final StepperStepVariant variant;

  /// The label.
  final Widget? label;

  /// Supporting description text.
  final Widget? description;

  /// Leading or decorative icon.
  final Widget? icon;

  /// The primary child widget.
  final Widget? child;

  /// Whether a loading indicator is shown.
  final bool? loading;

  /// Whether allow step select.
  final bool? allowStepSelect;

  /// Whether with icon.
  final bool? withIcon;

  /// Style overrides merged over theme defaults.
  final StepperStepStyle? style;

  /// Resolves properties and builds via [StepperStepDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedIcon = icon;
    final resolvedChild = child;
    final resolvedLoading = loading ?? false;
    final resolvedAllowStepSelect = allowStepSelect;
    final resolvedWithIcon = withIcon ?? true;

    const fromProps = StepperStepStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = StepperStepState();
    final stepperStepContext = StepperStepContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      label: resolvedLabel,
      description: resolvedDescription,
      icon: resolvedIcon,
      child: resolvedChild,
      loading: resolvedLoading,
      allowStepSelect: resolvedAllowStepSelect,
      withIcon: resolvedWithIcon,
    );
    final delegate = MantleTheme.of(context).delegate<StepperStepDelegate>();
    return delegate.root(stepperStepContext);
  }
}

/// Visual variants of [StepperCompleted].
enum StepperCompletedVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [StepperCompleted].
@immutable
class StepperCompletedStyle {
  /// Creates a [StepperCompletedStyle].
  const StepperCompletedStyle();

  /// Returns a copy of this [StepperCompletedStyle] with selected fields replaced.
  StepperCompletedStyle copyWith() => this;

  /// Merges [other] over this [StepperCompletedStyle]; null fields keep this value.
  StepperCompletedStyle mergeWith(StepperCompletedStyle? other) => this;
}

/// Resolved interaction state for [StepperCompleted].
@immutable
class StepperCompletedState {
  /// Creates a [StepperCompletedState].
  const StepperCompletedState();
}

/// Values passed to [StepperCompletedDelegate] slots during build.
@immutable
class StepperCompletedContext {
  /// Creates a [StepperCompletedContext].
  const StepperCompletedContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final StepperCompletedStyle style;

  /// Resolved interaction state for this build.
  final StepperCompletedState state;

  /// The visual variant selected by the constructor.
  final StepperCompletedVariant variant;

  /// The primary child widget.
  final Widget child;
}

/// Builder for the root slot.
class StepperCompletedRoot {
  /// Creates a [StepperCompletedRoot] from a builder function.
  const StepperCompletedRoot(this._build);

  final Widget Function(StepperCompletedContext context) _build;

  /// Invokes this slot with [context].
  Widget call(StepperCompletedContext context) => _build(context);
}

/// Theme-owned composition slots for [StepperCompleted].
abstract class StepperCompletedDelegate extends ComponentDelegate {
  /// Creates a [StepperCompletedDelegate].
  const StepperCompletedDelegate();

  /// Builds the composition root.
  Widget root(StepperCompletedContext context);
}

/// A [StepperCompleted] widget resolved through [StepperCompletedDelegate].
class StepperCompleted extends StatelessWidget {
  /// Creates a [StepperCompleted].
  const StepperCompleted({super.key, required this.child, this.style})
    : variant = StepperCompletedVariant.defaults;

  /// The visual variant selected by the constructor.
  final StepperCompletedVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Style overrides merged over theme defaults.
  final StepperCompletedStyle? style;

  /// Resolves properties and builds via [StepperCompletedDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = StepperCompletedStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = StepperCompletedState();
    final stepperCompletedContext = StepperCompletedContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<StepperCompletedDelegate>();
    return delegate.root(stepperCompletedContext);
  }
}
