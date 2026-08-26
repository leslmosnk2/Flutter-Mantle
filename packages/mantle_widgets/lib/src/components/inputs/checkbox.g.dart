// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'checkbox.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum CheckboxVariant { defaults, filled, outline }

@immutable
class CheckboxStyle {
  const CheckboxStyle();

  CheckboxStyle copyWith() => this;

  CheckboxStyle mergeWith(CheckboxStyle? other) => this;
}

@immutable
class CheckboxState {
  const CheckboxState();
}

@immutable
class CheckboxContext {
  const CheckboxContext({
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
    required this.indeterminate,
    required this.disabled,
    this.color,
    this.iconColor,
    required this.labelPosition,
    required this.size,
    required this.radius,
  });

  final BuildContext context;
  final CheckboxStyle style;
  final CheckboxState state;
  final CheckboxVariant variant;
  final bool? checked;
  final bool defaultChecked;
  final void Function(bool)? onChanged;
  final String? value;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final bool indeterminate;
  final bool disabled;
  final String? color;
  final String? iconColor;
  final InputLabelPosition labelPosition;
  final String size;
  final BorderRadiusGeometry radius;
}

class CheckboxRoot {
  const CheckboxRoot(this._build);

  final Widget Function(CheckboxContext context) _build;

  Widget call(CheckboxContext context) => _build(context);
}

abstract class CheckboxDelegate extends ComponentDelegate {
  const CheckboxDelegate();

  Widget root(CheckboxContext context);
}

class Checkbox extends StatelessWidget {
  const Checkbox({
    super.key,
    this.checked,
    this.defaultChecked,
    this.onChanged,
    this.value,
    this.label,
    this.description,
    this.error,
    this.indeterminate,
    this.disabled,
    this.color,
    this.iconColor,
    this.labelPosition,
    this.size,
    this.radius,
    this.style,
  }) : variant = CheckboxVariant.defaults;

  const Checkbox.filled({
    super.key,
    this.checked,
    this.defaultChecked,
    this.onChanged,
    this.value,
    this.label,
    this.description,
    this.error,
    this.indeterminate,
    this.disabled,
    this.color,
    this.iconColor,
    this.labelPosition,
    this.size,
    this.radius,
    this.style,
  }) : variant = CheckboxVariant.filled;

  const Checkbox.outline({
    super.key,
    this.checked,
    this.defaultChecked,
    this.onChanged,
    this.value,
    this.label,
    this.description,
    this.error,
    this.indeterminate,
    this.disabled,
    this.color,
    this.iconColor,
    this.labelPosition,
    this.size,
    this.radius,
    this.style,
  }) : variant = CheckboxVariant.outline;

  final CheckboxVariant variant;
  final bool? checked;
  final bool? defaultChecked;
  final void Function(bool)? onChanged;
  final String? value;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final bool? indeterminate;
  final bool? disabled;
  final String? color;
  final String? iconColor;
  final InputLabelPosition? labelPosition;
  final String? size;
  final BorderRadiusGeometry? radius;
  final CheckboxStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChecked = checked;
    final resolvedDefaultChecked = defaultChecked ?? false;
    final resolvedOnChanged = onChanged;
    final resolvedValue = value;
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedError = error;
    final resolvedIndeterminate = indeterminate ?? false;
    final resolvedDisabled = disabled ?? false;
    final resolvedColor = color;
    final resolvedIconColor = iconColor;
    final resolvedLabelPosition = labelPosition ?? InputLabelPosition.right;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius = radius ?? inputDefaultRadius(context);

    const fromProps = CheckboxStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = CheckboxState();
    final checkboxContext = CheckboxContext(
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
      indeterminate: resolvedIndeterminate,
      disabled: resolvedDisabled,
      color: resolvedColor,
      iconColor: resolvedIconColor,
      labelPosition: resolvedLabelPosition,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<CheckboxDelegate>();
    return delegate.root(checkboxContext);
  }
}

enum CheckboxGroupVariant { defaults }

@immutable
class CheckboxGroupStyle {
  const CheckboxGroupStyle();

  CheckboxGroupStyle copyWith() => this;

  CheckboxGroupStyle mergeWith(CheckboxGroupStyle? other) => this;
}

@immutable
class CheckboxGroupState {
  const CheckboxGroupState();
}

@immutable
class CheckboxGroupContext {
  const CheckboxGroupContext({
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
  final CheckboxGroupStyle style;
  final CheckboxGroupState state;
  final CheckboxGroupVariant variant;
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

class CheckboxGroupRoot {
  const CheckboxGroupRoot(this._build);

  final Widget Function(CheckboxGroupContext context) _build;

  Widget call(CheckboxGroupContext context) => _build(context);
}

abstract class CheckboxGroupDelegate extends ComponentDelegate {
  const CheckboxGroupDelegate();

  Widget root(CheckboxGroupContext context);
}

class CheckboxGroup extends StatelessWidget {
  const CheckboxGroup({
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
  }) : variant = CheckboxGroupVariant.defaults;

  final CheckboxGroupVariant variant;
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
  final CheckboxGroupStyle? style;

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

    const fromProps = CheckboxGroupStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = CheckboxGroupState();
    final checkboxGroupContext = CheckboxGroupContext(
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
    final delegate = MantleTheme.of(context).delegate<CheckboxGroupDelegate>();
    return delegate.root(checkboxGroupContext);
  }
}
