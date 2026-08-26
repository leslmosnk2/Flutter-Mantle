// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'radio.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum RadioVariant { defaults, filled, outline }

@immutable
class RadioStyle {
  const RadioStyle();

  RadioStyle copyWith() => this;

  RadioStyle mergeWith(RadioStyle? other) => this;
}

@immutable
class RadioState {
  const RadioState();
}

@immutable
class RadioContext {
  const RadioContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.value,
    this.checked,
    this.onChanged,
    this.label,
    this.description,
    this.error,
    required this.disabled,
    this.color,
    this.iconColor,
    required this.labelPosition,
    required this.size,
    required this.radius,
  });

  final BuildContext context;
  final RadioStyle style;
  final RadioState state;
  final RadioVariant variant;
  final String value;
  final bool? checked;
  final void Function(bool)? onChanged;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final bool disabled;
  final String? color;
  final String? iconColor;
  final InputLabelPosition labelPosition;
  final String size;
  final BorderRadiusGeometry radius;
}

class RadioRoot {
  const RadioRoot(this._build);

  final Widget Function(RadioContext context) _build;

  Widget call(RadioContext context) => _build(context);
}

abstract class RadioDelegate extends ComponentDelegate {
  const RadioDelegate();

  Widget root(RadioContext context);
}

class Radio extends StatelessWidget {
  const Radio({
    super.key,
    required this.value,
    this.checked,
    this.onChanged,
    this.label,
    this.description,
    this.error,
    this.disabled,
    this.color,
    this.iconColor,
    this.labelPosition,
    this.size,
    this.radius,
    this.style,
  }) : variant = RadioVariant.defaults;

  const Radio.filled({
    super.key,
    required this.value,
    this.checked,
    this.onChanged,
    this.label,
    this.description,
    this.error,
    this.disabled,
    this.color,
    this.iconColor,
    this.labelPosition,
    this.size,
    this.radius,
    this.style,
  }) : variant = RadioVariant.filled;

  const Radio.outline({
    super.key,
    required this.value,
    this.checked,
    this.onChanged,
    this.label,
    this.description,
    this.error,
    this.disabled,
    this.color,
    this.iconColor,
    this.labelPosition,
    this.size,
    this.radius,
    this.style,
  }) : variant = RadioVariant.outline;

  final RadioVariant variant;
  final String value;
  final bool? checked;
  final void Function(bool)? onChanged;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final bool? disabled;
  final String? color;
  final String? iconColor;
  final InputLabelPosition? labelPosition;
  final String? size;
  final BorderRadiusGeometry? radius;
  final RadioStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedChecked = checked;
    final resolvedOnChanged = onChanged;
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedError = error;
    final resolvedDisabled = disabled ?? false;
    final resolvedColor = color;
    final resolvedIconColor = iconColor;
    final resolvedLabelPosition = labelPosition ?? InputLabelPosition.right;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius = radius ?? inputPillRadius(context);

    const fromProps = RadioStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = RadioState();
    final radioContext = RadioContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      checked: resolvedChecked,
      onChanged: resolvedOnChanged,
      label: resolvedLabel,
      description: resolvedDescription,
      error: resolvedError,
      disabled: resolvedDisabled,
      color: resolvedColor,
      iconColor: resolvedIconColor,
      labelPosition: resolvedLabelPosition,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<RadioDelegate>();
    return delegate.root(radioContext);
  }
}

enum RadioGroupVariant { defaults }

@immutable
class RadioGroupStyle {
  const RadioGroupStyle();

  RadioGroupStyle copyWith() => this;

  RadioGroupStyle mergeWith(RadioGroupStyle? other) => this;
}

@immutable
class RadioGroupState {
  const RadioGroupState();
}

@immutable
class RadioGroupContext {
  const RadioGroupContext({
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
  final RadioGroupStyle style;
  final RadioGroupState state;
  final RadioGroupVariant variant;
  final List<Widget> children;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final bool disabled;
  final bool readOnly;
  final String size;
}

class RadioGroupRoot {
  const RadioGroupRoot(this._build);

  final Widget Function(RadioGroupContext context) _build;

  Widget call(RadioGroupContext context) => _build(context);
}

abstract class RadioGroupDelegate extends ComponentDelegate {
  const RadioGroupDelegate();

  Widget root(RadioGroupContext context);
}

class RadioGroup extends StatelessWidget {
  const RadioGroup({
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
  }) : variant = RadioGroupVariant.defaults;

  final RadioGroupVariant variant;
  final List<Widget> children;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final bool? disabled;
  final bool? readOnly;
  final String? size;
  final RadioGroupStyle? style;

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

    const fromProps = RadioGroupStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = RadioGroupState();
    final radioGroupContext = RadioGroupContext(
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
    final delegate = MantleTheme.of(context).delegate<RadioGroupDelegate>();
    return delegate.root(radioGroupContext);
  }
}
