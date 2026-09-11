// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'native_select.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [NativeSelect].
enum NativeSelectVariant {
  /// The default variant.
  defaults,

  /// The filled variant.
  filled,

  /// The unstyled variant.
  unstyled,
}

/// Resolved visual values for [NativeSelect].
@immutable
class NativeSelectStyle {
  /// Creates a [NativeSelectStyle].
  const NativeSelectStyle();

  /// Returns a copy of this [NativeSelectStyle] with selected fields replaced.
  NativeSelectStyle copyWith() => this;

  /// Merges [other] over this [NativeSelectStyle]; null fields keep this value.
  NativeSelectStyle mergeWith(NativeSelectStyle? other) => this;
}

/// Resolved interaction state for [NativeSelect].
@immutable
class NativeSelectState {
  /// Creates a [NativeSelectState].
  const NativeSelectState();
}

/// Values passed to [NativeSelectDelegate] slots during build.
@immutable
class NativeSelectContext {
  /// Creates a [NativeSelectContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final NativeSelectStyle style;

  /// Resolved interaction state for this build.
  final NativeSelectState state;

  /// The visual variant selected by the constructor.
  final NativeSelectVariant variant;

  /// Tabular data to render.
  final List<NativeSelectItem> data;

  /// The controlled value.
  final String? value;

  /// Initial value when [value] is omitted.
  final String? defaultValue;

  /// Called when the value changes.
  final void Function(String)? onChanged;

  /// Placeholder text when empty.
  final String? placeholder;

  /// The label.
  final Widget? label;

  /// Supporting description text.
  final Widget? description;

  /// Error text or error state.
  final Widget? error;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether required.
  final bool required;

  /// Whether with asterisk.
  final bool? withAsterisk;

  /// Size token.
  final String size;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class NativeSelectRoot {
  /// Creates a [NativeSelectRoot] from a builder function.
  const NativeSelectRoot(this._build);

  final Widget Function(NativeSelectContext context) _build;

  /// Invokes this slot with [context].
  Widget call(NativeSelectContext context) => _build(context);
}

/// Theme-owned composition slots for [NativeSelect].
abstract class NativeSelectDelegate extends ComponentDelegate {
  /// Creates a [NativeSelectDelegate].
  const NativeSelectDelegate();

  /// Builds the composition root.
  Widget root(NativeSelectContext context);
}

/// A [NativeSelect] widget resolved through [NativeSelectDelegate].
class NativeSelect extends StatelessWidget {
  /// Creates a [NativeSelect].
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

  /// Creates a filled [NativeSelect].
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

  /// Creates an unstyled [NativeSelect].
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

  /// The visual variant selected by the constructor.
  final NativeSelectVariant variant;

  /// Tabular data to render.
  final List<NativeSelectItem> data;

  /// The controlled value.
  final String? value;

  /// Initial value when [value] is omitted.
  final String? defaultValue;

  /// Called when the value changes.
  final void Function(String)? onChanged;

  /// Placeholder text when empty.
  final String? placeholder;

  /// The label.
  final Widget? label;

  /// Supporting description text.
  final Widget? description;

  /// Error text or error state.
  final Widget? error;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Whether required.
  final bool? required;

  /// Whether with asterisk.
  final bool? withAsterisk;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final NativeSelectStyle? style;

  /// Resolves properties and builds via [NativeSelectDelegate].
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
