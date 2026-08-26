// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'textarea.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum TextareaVariant { defaults, filled, unstyled }

@immutable
class TextareaStyle {
  const TextareaStyle();

  TextareaStyle copyWith() => this;

  TextareaStyle mergeWith(TextareaStyle? other) => this;
}

@immutable
class TextareaState {
  const TextareaState();
}

@immutable
class TextareaContext {
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

  final BuildContext context;
  final TextareaStyle style;
  final TextareaState state;
  final TextareaVariant variant;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final String? placeholder;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final bool disabled;
  final bool readOnly;
  final bool required;
  final bool? withAsterisk;
  final bool autosize;
  final int minRows;
  final int? maxRows;
  final String size;
  final BorderRadiusGeometry radius;
}

class TextareaRoot {
  const TextareaRoot(this._build);

  final Widget Function(TextareaContext context) _build;

  Widget call(TextareaContext context) => _build(context);
}

abstract class TextareaDelegate extends ComponentDelegate {
  const TextareaDelegate();

  Widget root(TextareaContext context);
}

class Textarea extends StatelessWidget {
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

  final TextareaVariant variant;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final String? placeholder;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final bool? disabled;
  final bool? readOnly;
  final bool? required;
  final bool? withAsterisk;
  final bool? autosize;
  final int? minRows;
  final int? maxRows;
  final String? size;
  final BorderRadiusGeometry? radius;
  final TextareaStyle? style;

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
