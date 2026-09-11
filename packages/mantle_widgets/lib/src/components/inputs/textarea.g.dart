// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'textarea.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Textarea].
enum TextareaVariant {
  /// The default variant.
  defaults,

  /// The filled variant.
  filled,

  /// The unstyled variant.
  unstyled,
}

/// Resolved visual values for [Textarea].
@immutable
class TextareaStyle {
  /// Creates a [TextareaStyle].
  const TextareaStyle();

  /// Returns a copy of this [TextareaStyle] with selected fields replaced.
  TextareaStyle copyWith() => this;

  /// Merges [other] over this [TextareaStyle]; null fields keep this value.
  TextareaStyle mergeWith(TextareaStyle? other) => this;
}

/// Resolved interaction state for [Textarea].
@immutable
class TextareaState {
  /// Creates a [TextareaState].
  const TextareaState();
}

/// Values passed to [TextareaDelegate] slots during build.
@immutable
class TextareaContext {
  /// Creates a [TextareaContext].
  const TextareaContext({
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
    required this.disabled,
    required this.readOnly,
    required this.required,
    this.withAsterisk,
    required this.autosize,
    required this.minRows,
    this.maxRows,
    required this.size,
    required this.radius,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final TextareaStyle style;

  /// Resolved interaction state for this build.
  final TextareaState state;

  /// The visual variant selected by the constructor.
  final TextareaVariant variant;

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

  /// Whether the value cannot be edited.
  final bool readOnly;

  /// Whether required.
  final bool required;

  /// Whether with asterisk.
  final bool? withAsterisk;

  /// Whether autosize.
  final bool autosize;

  /// The min rows.
  final int minRows;

  /// The max rows.
  final int? maxRows;

  /// Size token.
  final String size;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class TextareaRoot {
  /// Creates a [TextareaRoot] from a builder function.
  const TextareaRoot(this._build);

  final Widget Function(TextareaContext context) _build;

  /// Invokes this slot with [context].
  Widget call(TextareaContext context) => _build(context);
}

/// Theme-owned composition slots for [Textarea].
abstract class TextareaDelegate extends ComponentDelegate {
  /// Creates a [TextareaDelegate].
  const TextareaDelegate();

  /// Builds the composition root.
  Widget root(TextareaContext context);
}

/// A [Textarea] widget resolved through [TextareaDelegate].
class Textarea extends StatelessWidget {
  /// Creates a [Textarea].
  const Textarea({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.disabled,
    this.readOnly,
    this.required,
    this.withAsterisk,
    this.autosize,
    this.minRows,
    this.maxRows,
    this.size,
    this.radius,
    this.style,
  }) : variant = TextareaVariant.defaults;

  /// Creates a filled [Textarea].
  const Textarea.filled({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.disabled,
    this.readOnly,
    this.required,
    this.withAsterisk,
    this.autosize,
    this.minRows,
    this.maxRows,
    this.size,
    this.radius,
    this.style,
  }) : variant = TextareaVariant.filled;

  /// Creates an unstyled [Textarea].
  const Textarea.unstyled({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.disabled,
    this.readOnly,
    this.required,
    this.withAsterisk,
    this.autosize,
    this.minRows,
    this.maxRows,
    this.size,
    this.radius,
    this.style,
  }) : variant = TextareaVariant.unstyled;

  /// The visual variant selected by the constructor.
  final TextareaVariant variant;

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

  /// Whether the value cannot be edited.
  final bool? readOnly;

  /// Whether required.
  final bool? required;

  /// Whether with asterisk.
  final bool? withAsterisk;

  /// Whether autosize.
  final bool? autosize;

  /// The min rows.
  final int? minRows;

  /// The max rows.
  final int? maxRows;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final TextareaStyle? style;

  /// Resolves properties and builds via [TextareaDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedDefaultValue = defaultValue;
    final resolvedOnChanged = onChanged;
    final resolvedPlaceholder = placeholder;
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedError = error;
    final resolvedDisabled = disabled ?? false;
    final resolvedReadOnly = readOnly ?? false;
    final resolvedRequired = required ?? false;
    final resolvedWithAsterisk = withAsterisk;
    final resolvedAutosize = autosize ?? false;
    final resolvedMinRows = minRows ?? 2;
    final resolvedMaxRows = maxRows;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius = radius ?? inputDefaultRadius(context);

    const fromProps = TextareaStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = TextareaState();
    final textareaContext = TextareaContext(
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
      disabled: resolvedDisabled,
      readOnly: resolvedReadOnly,
      required: resolvedRequired,
      withAsterisk: resolvedWithAsterisk,
      autosize: resolvedAutosize,
      minRows: resolvedMinRows,
      maxRows: resolvedMaxRows,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<TextareaDelegate>();
    return delegate.root(textareaContext);
  }
}
