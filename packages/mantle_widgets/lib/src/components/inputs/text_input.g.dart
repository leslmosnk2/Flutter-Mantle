// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_input.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [TextInput].
enum TextInputVariant {
  /// The default variant.
  defaults,

  /// The filled variant.
  filled,

  /// The unstyled variant.
  unstyled,
}

/// Resolved visual values for [TextInput].
@immutable
class TextInputStyle {
  /// Creates a [TextInputStyle].
  const TextInputStyle();

  /// Returns a copy of this [TextInputStyle] with selected fields replaced.
  TextInputStyle copyWith() => this;

  /// Merges [other] over this [TextInputStyle]; null fields keep this value.
  TextInputStyle mergeWith(TextInputStyle? other) => this;
}

/// Resolved interaction state for [TextInput].
@immutable
class TextInputState {
  /// Creates a [TextInputState].
  const TextInputState();
}

/// Values passed to [TextInputDelegate] slots during build.
@immutable
class TextInputContext {
  /// Creates a [TextInputContext].
  const TextInputContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.leftSection,
    this.rightSection,
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
  final TextInputStyle style;

  /// Resolved interaction state for this build.
  final TextInputState state;

  /// The visual variant selected by the constructor.
  final TextInputVariant variant;

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

  /// The left section.
  final Widget? leftSection;

  /// The right section.
  final Widget? rightSection;

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
class TextInputRoot {
  /// Creates a [TextInputRoot] from a builder function.
  const TextInputRoot(this._build);

  final Widget Function(TextInputContext context) _build;

  /// Invokes this slot with [context].
  Widget call(TextInputContext context) => _build(context);
}

/// Theme-owned composition slots for [TextInput].
abstract class TextInputDelegate extends ComponentDelegate {
  /// Creates a [TextInputDelegate].
  const TextInputDelegate();

  /// Builds the composition root.
  Widget root(TextInputContext context);
}

/// A [TextInput] widget resolved through [TextInputDelegate].
class TextInput extends StatelessWidget {
  /// Creates a [TextInput].
  const TextInput({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.leftSection,
    this.rightSection,
    this.disabled,
    this.readOnly,
    this.required,
    this.withAsterisk,
    this.size,
    this.radius,
    this.style,
  }) : variant = TextInputVariant.defaults;

  /// Creates a filled [TextInput].
  const TextInput.filled({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.leftSection,
    this.rightSection,
    this.disabled,
    this.readOnly,
    this.required,
    this.withAsterisk,
    this.size,
    this.radius,
    this.style,
  }) : variant = TextInputVariant.filled;

  /// Creates an unstyled [TextInput].
  const TextInput.unstyled({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.leftSection,
    this.rightSection,
    this.disabled,
    this.readOnly,
    this.required,
    this.withAsterisk,
    this.size,
    this.radius,
    this.style,
  }) : variant = TextInputVariant.unstyled;

  /// The visual variant selected by the constructor.
  final TextInputVariant variant;

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

  /// The left section.
  final Widget? leftSection;

  /// The right section.
  final Widget? rightSection;

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
  final TextInputStyle? style;

  /// Resolves properties and builds via [TextInputDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedDefaultValue = defaultValue;
    final resolvedOnChanged = onChanged;
    final resolvedPlaceholder = placeholder;
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedError = error;
    final resolvedLeftSection = leftSection;
    final resolvedRightSection = rightSection;
    final resolvedDisabled = disabled ?? false;
    final resolvedReadOnly = readOnly ?? false;
    final resolvedRequired = required ?? false;
    final resolvedWithAsterisk = withAsterisk;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius = radius ?? inputDefaultRadius(context);

    const fromProps = TextInputStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TextInputState();
    final textInputContext = TextInputContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      defaultValue: resolvedDefaultValue,
      onChanged: resolvedOnChanged,
      placeholder: resolvedPlaceholder,
      label: resolvedLabel,
      description: resolvedDescription,
      error: resolvedError,
      leftSection: resolvedLeftSection,
      rightSection: resolvedRightSection,
      disabled: resolvedDisabled,
      readOnly: resolvedReadOnly,
      required: resolvedRequired,
      withAsterisk: resolvedWithAsterisk,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<TextInputDelegate>();
    return delegate.root(textInputContext);
  }
}
