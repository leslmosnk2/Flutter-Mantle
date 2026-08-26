// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'switch.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum SwitchVariant { defaults }

@immutable
class SwitchStyle {
  const SwitchStyle();

  SwitchStyle copyWith() => this;

  SwitchStyle mergeWith(SwitchStyle? other) => this;
}

@immutable
class SwitchState {
  const SwitchState();
}

@immutable
class SwitchContext {
  const SwitchContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.checked,
    required this.defaultChecked,
    this.onChanged,
    this.value,
    this.label,
    this.description,
    this.error,
    this.onLabel,
    this.offLabel,
    this.thumbIcon,
    required this.disabled,
    this.color,
    required this.labelPosition,
    required this.size,
    required this.radius,
  });

  final BuildContext context;
  final SwitchStyle style;
  final SwitchState state;
  final SwitchVariant variant;
  final bool? checked;
  final bool defaultChecked;
  final void Function(bool)? onChanged;
  final String? value;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final Widget? onLabel;
  final Widget? offLabel;
  final Widget? thumbIcon;
  final bool disabled;
  final String? color;
  final InputLabelPosition labelPosition;
  final String size;
  final BorderRadiusGeometry radius;
}

class SwitchRoot {
  const SwitchRoot(this._build);

  final Widget Function(SwitchContext context) _build;

  Widget call(SwitchContext context) => _build(context);
}

abstract class SwitchDelegate extends ComponentDelegate {
  const SwitchDelegate();

  Widget root(SwitchContext context);
}

class Switch extends StatelessWidget {
  const Switch({
    super.key,
    this.checked,
    this.defaultChecked,
    this.onChanged,
    this.value,
    this.label,
    this.description,
    this.error,
    this.onLabel,
    this.offLabel,
    this.thumbIcon,
    this.disabled,
    this.color,
    this.labelPosition,
    this.size,
    this.radius,
    this.style,
  }) : variant = SwitchVariant.defaults;

  final SwitchVariant variant;
  final bool? checked;
  final bool? defaultChecked;
  final void Function(bool)? onChanged;
  final String? value;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final Widget? onLabel;
  final Widget? offLabel;
  final Widget? thumbIcon;
  final bool? disabled;
  final String? color;
  final InputLabelPosition? labelPosition;
  final String? size;
  final BorderRadiusGeometry? radius;
  final SwitchStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChecked = checked;
    final resolvedDefaultChecked = defaultChecked ?? false;
    final resolvedOnChanged = onChanged;
    final resolvedValue = value;
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedError = error;
    final resolvedOnLabel = onLabel;
    final resolvedOffLabel = offLabel;
    final resolvedThumbIcon = thumbIcon;
    final resolvedDisabled = disabled ?? false;
    final resolvedColor = color;
    final resolvedLabelPosition = labelPosition ?? InputLabelPosition.right;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius = radius ?? inputPillRadius(context);

    const fromProps = SwitchStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = SwitchState();
    final switchContext = SwitchContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      checked: resolvedChecked,
      defaultChecked: resolvedDefaultChecked,
      onChanged: resolvedOnChanged,
      value: resolvedValue,
      label: resolvedLabel,
      description: resolvedDescription,
      error: resolvedError,
      onLabel: resolvedOnLabel,
      offLabel: resolvedOffLabel,
      thumbIcon: resolvedThumbIcon,
      disabled: resolvedDisabled,
      color: resolvedColor,
      labelPosition: resolvedLabelPosition,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<SwitchDelegate>();
    return delegate.root(switchContext);
  }
}

enum SwitchGroupVariant { defaults }

@immutable
class SwitchGroupStyle {
  const SwitchGroupStyle();

  SwitchGroupStyle copyWith() => this;

  SwitchGroupStyle mergeWith(SwitchGroupStyle? other) => this;
}

@immutable
class SwitchGroupState {
  const SwitchGroupState();
}

@immutable
class SwitchGroupContext {
  const SwitchGroupContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.label,
    this.description,
    this.error,
    required this.disabled,
    required this.readOnly,
    required this.size,
  });

  final BuildContext context;
  final SwitchGroupStyle style;
  final SwitchGroupState state;
  final SwitchGroupVariant variant;
  final List<Widget> children;
  final List<String>? value;
  final List<String>? defaultValue;
  final void Function(List<String>)? onChanged;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final bool disabled;
  final bool readOnly;
  final String size;
}

class SwitchGroupRoot {
  const SwitchGroupRoot(this._build);

  final Widget Function(SwitchGroupContext context) _build;

  Widget call(SwitchGroupContext context) => _build(context);
}

abstract class SwitchGroupDelegate extends ComponentDelegate {
  const SwitchGroupDelegate();

  Widget root(SwitchGroupContext context);
}

class SwitchGroup extends StatelessWidget {
  const SwitchGroup({
    super.key,
    required this.children,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.label,
    this.description,
    this.error,
    this.disabled,
    this.readOnly,
    this.size,
    this.style,
  }) : variant = SwitchGroupVariant.defaults;

  final SwitchGroupVariant variant;
  final List<Widget> children;
  final List<String>? value;
  final List<String>? defaultValue;
  final void Function(List<String>)? onChanged;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final bool? disabled;
  final bool? readOnly;
  final String? size;
  final SwitchGroupStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedValue = value;
    final resolvedDefaultValue = defaultValue;
    final resolvedOnChanged = onChanged;
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedError = error;
    final resolvedDisabled = disabled ?? false;
    final resolvedReadOnly = readOnly ?? false;
    final resolvedSize = size ?? 'sm';

    const fromProps = SwitchGroupStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = SwitchGroupState();
    final switchGroupContext = SwitchGroupContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      value: resolvedValue,
      defaultValue: resolvedDefaultValue,
      onChanged: resolvedOnChanged,
      label: resolvedLabel,
      description: resolvedDescription,
      error: resolvedError,
      disabled: resolvedDisabled,
      readOnly: resolvedReadOnly,
      size: resolvedSize,
    );
    final delegate = MantleTheme.of(context).delegate<SwitchGroupDelegate>();
    return delegate.root(switchGroupContext);
  }
}
