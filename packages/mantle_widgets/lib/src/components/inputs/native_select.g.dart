// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'native_select.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum NativeSelectVariant { defaults, filled, unstyled }

@immutable
class NativeSelectStyle {
  const NativeSelectStyle();

  NativeSelectStyle copyWith() => this;

  NativeSelectStyle mergeWith(NativeSelectStyle? other) => this;
}

@immutable
class NativeSelectState {
  const NativeSelectState();
}

@immutable
class NativeSelectContext {
  const NativeSelectContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.data,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    required this.disabled,
    required this.required,
    this.withAsterisk,
    required this.size,
    required this.radius,
  });

  final BuildContext context;
  final NativeSelectStyle style;
  final NativeSelectState state;
  final NativeSelectVariant variant;
  final List<NativeSelectItem> data;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final String? placeholder;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final bool disabled;
  final bool required;
  final bool? withAsterisk;
  final String size;
  final BorderRadiusGeometry radius;
}

class NativeSelectRoot {
  const NativeSelectRoot(this._build);

  final Widget Function(NativeSelectContext context) _build;

  Widget call(NativeSelectContext context) => _build(context);
}

abstract class NativeSelectDelegate extends ComponentDelegate {
  const NativeSelectDelegate();

  Widget root(NativeSelectContext context);
}

class NativeSelect extends StatelessWidget {
  const NativeSelect({
    super.key,
    required this.data,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.disabled,
    this.required,
    this.withAsterisk,
    this.size,
    this.radius,
    this.style,
  }) : variant = NativeSelectVariant.defaults;

  const NativeSelect.filled({
    super.key,
    required this.data,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.disabled,
    this.required,
    this.withAsterisk,
    this.size,
    this.radius,
    this.style,
  }) : variant = NativeSelectVariant.filled;

  const NativeSelect.unstyled({
    super.key,
    required this.data,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.disabled,
    this.required,
    this.withAsterisk,
    this.size,
    this.radius,
    this.style,
  }) : variant = NativeSelectVariant.unstyled;

  final NativeSelectVariant variant;
  final List<NativeSelectItem> data;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final String? placeholder;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final bool? disabled;
  final bool? required;
  final bool? withAsterisk;
  final String? size;
  final BorderRadiusGeometry? radius;
  final NativeSelectStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedData = data;
    final resolvedValue = value;
    final resolvedDefaultValue = defaultValue;
    final resolvedOnChanged = onChanged;
    final resolvedPlaceholder = placeholder;
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedError = error;
    final resolvedDisabled = disabled ?? false;
    final resolvedRequired = required ?? false;
    final resolvedWithAsterisk = withAsterisk;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius = radius ?? inputDefaultRadius(context);

    const fromProps = NativeSelectStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = NativeSelectState();
    final nativeSelectContext = NativeSelectContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      data: resolvedData,
      value: resolvedValue,
      defaultValue: resolvedDefaultValue,
      onChanged: resolvedOnChanged,
      placeholder: resolvedPlaceholder,
      label: resolvedLabel,
      description: resolvedDescription,
      error: resolvedError,
      disabled: resolvedDisabled,
      required: resolvedRequired,
      withAsterisk: resolvedWithAsterisk,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<NativeSelectDelegate>();
    return delegate.root(nativeSelectContext);
  }
}
