// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mask_input.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [MaskInput].
enum MaskInputVariant {
  /// The default variant.
  defaults,

  /// The filled variant.
  filled,

  /// The unstyled variant.
  unstyled,
}

/// Resolved visual values for [MaskInput].
@immutable
class MaskInputStyle {
  /// Creates a [MaskInputStyle].
  const MaskInputStyle();

  /// Returns a copy of this [MaskInputStyle] with selected fields replaced.
  MaskInputStyle copyWith() => this;

  /// Merges [other] over this [MaskInputStyle]; null fields keep this value.
  MaskInputStyle mergeWith(MaskInputStyle? other) => this;
}

/// Resolved interaction state for [MaskInput].
@immutable
class MaskInputState {
  /// Creates a [MaskInputState].
  const MaskInputState();
}

/// Values passed to [MaskInputDelegate] slots during build.
@immutable
class MaskInputContext {
  /// Creates a [MaskInputContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MaskInputStyle style;

  /// Resolved interaction state for this build.
  final MaskInputState state;

  /// The visual variant selected by the constructor.
  final MaskInputVariant variant;

  /// The mask.
  final String mask;

  /// The controlled value.
  final String? value;

  /// Initial value when [value] is omitted.
  final String? defaultValue;

  /// Called when the value changes.
  final void Function(String)? onChanged;

  /// Placeholder text when empty.
  final String? placeholder;

  /// The slot char.
  final String slotChar;

  /// The label.
  final Widget? label;

  /// Supporting description text.
  final Widget? description;

  /// Error text or error state.
  final Widget? error;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether the value cannot be edited.
  final bool readOnly;

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
class MaskInputRoot {
  /// Creates a [MaskInputRoot] from a builder function.
  const MaskInputRoot(this._build);

  final Widget Function(MaskInputContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MaskInputContext context) => _build(context);
}

/// Theme-owned composition slots for [MaskInput].
abstract class MaskInputDelegate extends ComponentDelegate {
  /// Creates a [MaskInputDelegate].
  const MaskInputDelegate();

  /// Builds the composition root.
  Widget root(MaskInputContext context);
}

/// A [MaskInput] widget resolved through [MaskInputDelegate].
class MaskInput extends StatelessWidget {
  /// Creates a [MaskInput].
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

  /// Creates a filled [MaskInput].
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

  /// Creates an unstyled [MaskInput].
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

  /// The visual variant selected by the constructor.
  final MaskInputVariant variant;

  /// The mask.
  final String mask;

  /// The controlled value.
  final String? value;

  /// Initial value when [value] is omitted.
  final String? defaultValue;

  /// Called when the value changes.
  final void Function(String)? onChanged;

  /// Placeholder text when empty.
  final String? placeholder;

  /// The slot char.
  final String? slotChar;

  /// The label.
  final Widget? label;

  /// Supporting description text.
  final Widget? description;

  /// Error text or error state.
  final Widget? error;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Whether the value cannot be edited.
  final bool? readOnly;

  /// Whether required.
  final bool? required;

  /// Whether with asterisk.
  final bool? withAsterisk;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final MaskInputStyle? style;

  /// Resolves properties and builds via [MaskInputDelegate].
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
