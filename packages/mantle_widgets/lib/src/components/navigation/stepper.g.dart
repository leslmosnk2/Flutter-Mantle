// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stepper.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum StepperVariant { defaults }

@immutable
class StepperStyle {
  const StepperStyle();

  StepperStyle copyWith() => this;

  StepperStyle mergeWith(StepperStyle? other) => this;
}

@immutable
class StepperState {
  const StepperState();
}

@immutable
class StepperContext {
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

  final BuildContext context;
  final StepperStyle style;
  final StepperState state;
  final StepperVariant variant;
  final List<Widget> children;
  final int active;
  final StepperOnStepClick? onStepClick;
  final Axis orientation;
  final StepIconPosition iconPosition;
  final bool allowNextStepsSelect;
  final bool wrap;
  final String size;
  final String? color;
  final String contentPadding;
}

class StepperRoot {
  const StepperRoot(this._build);

  final Widget Function(StepperContext context) _build;

  Widget call(StepperContext context) => _build(context);
}

abstract class StepperDelegate extends ComponentDelegate {
  const StepperDelegate();

  Widget root(StepperContext context);
}

class Stepper extends StatelessWidget {
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

  final StepperVariant variant;
  final List<Widget> children;
  final int active;
  final StepperOnStepClick? onStepClick;
  final Axis? orientation;
  final StepIconPosition? iconPosition;
  final bool? allowNextStepsSelect;
  final bool? wrap;
  final String? size;
  final String? color;
  final String? contentPadding;
  final StepperStyle? style;

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

enum StepperStepVariant { defaults }

@immutable
class StepperStepStyle {
  const StepperStepStyle();

  StepperStepStyle copyWith() => this;

  StepperStepStyle mergeWith(StepperStepStyle? other) => this;
}

@immutable
class StepperStepState {
  const StepperStepState();
}

@immutable
class StepperStepContext {
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

  final BuildContext context;
  final StepperStepStyle style;
  final StepperStepState state;
  final StepperStepVariant variant;
  final Widget? label;
  final Widget? description;
  final Widget? icon;
  final Widget? child;
  final bool loading;
  final bool? allowStepSelect;
  final bool withIcon;
}

class StepperStepRoot {
  const StepperStepRoot(this._build);

  final Widget Function(StepperStepContext context) _build;

  Widget call(StepperStepContext context) => _build(context);
}

abstract class StepperStepDelegate extends ComponentDelegate {
  const StepperStepDelegate();

  Widget root(StepperStepContext context);
}

class StepperStep extends StatelessWidget {
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

  final StepperStepVariant variant;
  final Widget? label;
  final Widget? description;
  final Widget? icon;
  final Widget? child;
  final bool? loading;
  final bool? allowStepSelect;
  final bool? withIcon;
  final StepperStepStyle? style;

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

enum StepperCompletedVariant { defaults }

@immutable
class StepperCompletedStyle {
  const StepperCompletedStyle();

  StepperCompletedStyle copyWith() => this;

  StepperCompletedStyle mergeWith(StepperCompletedStyle? other) => this;
}

@immutable
class StepperCompletedState {
  const StepperCompletedState();
}

@immutable
class StepperCompletedContext {
  const StepperCompletedContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  final BuildContext context;
  final StepperCompletedStyle style;
  final StepperCompletedState state;
  final StepperCompletedVariant variant;
  final Widget child;
}

class StepperCompletedRoot {
  const StepperCompletedRoot(this._build);

  final Widget Function(StepperCompletedContext context) _build;

  Widget call(StepperCompletedContext context) => _build(context);
}

abstract class StepperCompletedDelegate extends ComponentDelegate {
  const StepperCompletedDelegate();

  Widget root(StepperCompletedContext context);
}

class StepperCompleted extends StatelessWidget {
  const StepperCompleted({super.key, required this.child, this.style})
    : variant = StepperCompletedVariant.defaults;

  final StepperCompletedVariant variant;
  final Widget child;
  final StepperCompletedStyle? style;

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
