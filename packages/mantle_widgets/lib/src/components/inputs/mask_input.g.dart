// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mask_input.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum MaskInputVariant { defaults, filled, unstyled }

@immutable
class MaskInputStyle {
  const MaskInputStyle();

  MaskInputStyle copyWith() => this;

  MaskInputStyle mergeWith(MaskInputStyle? other) => this;
}

@immutable
class MaskInputState {
  const MaskInputState();
}

@immutable
class MaskInputContext {
  const MaskInputContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.mask,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    required this.slotChar,
    this.label,
    this.description,
    this.error,
    required this.disabled,
    required this.readOnly,
    required this.required,
    this.withAsterisk,
    required this.size,
    required this.radius,
  });

  final BuildContext context;
  final MaskInputStyle style;
  final MaskInputState state;
  final MaskInputVariant variant;
  final String mask;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final String? placeholder;
  final String slotChar;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final bool disabled;
  final bool readOnly;
  final bool required;
  final bool? withAsterisk;
  final String size;
  final BorderRadiusGeometry radius;
}

class MaskInputRoot {
  const MaskInputRoot(this._build);

  final Widget Function(MaskInputContext context) _build;

  Widget call(MaskInputContext context) => _build(context);
}

abstract class MaskInputDelegate extends ComponentDelegate {
  const MaskInputDelegate();

  Widget root(MaskInputContext context);
}

class MaskInput extends StatelessWidget {
  const MaskInput({
    super.key,
    required this.mask,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.slotChar,
    this.label,
    this.description,
    this.error,
    this.disabled,
    this.readOnly,
    this.required,
    this.withAsterisk,
    this.size,
    this.radius,
    this.style,
  }) : variant = MaskInputVariant.defaults;

  const MaskInput.filled({
    super.key,
    required this.mask,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.slotChar,
    this.label,
    this.description,
    this.error,
    this.disabled,
    this.readOnly,
    this.required,
    this.withAsterisk,
    this.size,
    this.radius,
    this.style,
  }) : variant = MaskInputVariant.filled;

  const MaskInput.unstyled({
    super.key,
    required this.mask,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.slotChar,
    this.label,
    this.description,
    this.error,
    this.disabled,
    this.readOnly,
    this.required,
    this.withAsterisk,
    this.size,
    this.radius,
    this.style,
  }) : variant = MaskInputVariant.unstyled;

  final MaskInputVariant variant;
  final String mask;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final String? placeholder;
  final String? slotChar;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final bool? disabled;
  final bool? readOnly;
  final bool? required;
  final bool? withAsterisk;
  final String? size;
  final BorderRadiusGeometry? radius;
  final MaskInputStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedMask = mask;
    final resolvedValue = value;
    final resolvedDefaultValue = defaultValue;
    final resolvedOnChanged = onChanged;
    final resolvedPlaceholder = placeholder;
    final resolvedSlotChar = slotChar ?? '_';
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedError = error;
    final resolvedDisabled = disabled ?? false;
    final resolvedReadOnly = readOnly ?? false;
    final resolvedRequired = required ?? false;
    final resolvedWithAsterisk = withAsterisk;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius = radius ?? inputDefaultRadius(context);

    const fromProps = MaskInputStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MaskInputState();
    final maskInputContext = MaskInputContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      mask: resolvedMask,
      value: resolvedValue,
      defaultValue: resolvedDefaultValue,
      onChanged: resolvedOnChanged,
      placeholder: resolvedPlaceholder,
      slotChar: resolvedSlotChar,
      label: resolvedLabel,
      description: resolvedDescription,
      error: resolvedError,
      disabled: resolvedDisabled,
      readOnly: resolvedReadOnly,
      required: resolvedRequired,
      withAsterisk: resolvedWithAsterisk,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<MaskInputDelegate>();
    return delegate.root(maskInputContext);
  }
}
