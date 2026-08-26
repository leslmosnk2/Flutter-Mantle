// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_input.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum FileInputVariant { defaults, filled, unstyled }

@immutable
class FileInputStyle {
  const FileInputStyle();

  FileInputStyle copyWith() => this;

  FileInputStyle mergeWith(FileInputStyle? other) => this;
}

@immutable
class FileInputState {
  const FileInputState();
}

@immutable
class FileInputContext {
  const FileInputContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.value,
    this.onChanged,
    this.onPick,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    required this.multiple,
    required this.clearable,
    required this.disabled,
    required this.readOnly,
    required this.required,
    this.withAsterisk,
    this.accept,
    required this.size,
    required this.radius,
  });

  final BuildContext context;
  final FileInputStyle style;
  final FileInputState state;
  final FileInputVariant variant;
  final List<MantlePickedFile>? value;
  final void Function(List<MantlePickedFile>)? onChanged;
  final VoidCallback? onPick;
  final String? placeholder;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final bool multiple;
  final bool clearable;
  final bool disabled;
  final bool readOnly;
  final bool required;
  final bool? withAsterisk;
  final String? accept;
  final String size;
  final BorderRadiusGeometry radius;
}

class FileInputRoot {
  const FileInputRoot(this._build);

  final Widget Function(FileInputContext context) _build;

  Widget call(FileInputContext context) => _build(context);
}

abstract class FileInputDelegate extends ComponentDelegate {
  const FileInputDelegate();

  Widget root(FileInputContext context);
}

class FileInput extends StatelessWidget {
  const FileInput({
    super.key,
    this.value,
    this.onChanged,
    this.onPick,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.multiple,
    this.clearable,
    this.disabled,
    this.readOnly,
    this.required,
    this.withAsterisk,
    this.accept,
    this.size,
    this.radius,
    this.style,
  }) : variant = FileInputVariant.defaults;

  const FileInput.filled({
    super.key,
    this.value,
    this.onChanged,
    this.onPick,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.multiple,
    this.clearable,
    this.disabled,
    this.readOnly,
    this.required,
    this.withAsterisk,
    this.accept,
    this.size,
    this.radius,
    this.style,
  }) : variant = FileInputVariant.filled;

  const FileInput.unstyled({
    super.key,
    this.value,
    this.onChanged,
    this.onPick,
    this.placeholder,
    this.label,
    this.description,
    this.error,
    this.multiple,
    this.clearable,
    this.disabled,
    this.readOnly,
    this.required,
    this.withAsterisk,
    this.accept,
    this.size,
    this.radius,
    this.style,
  }) : variant = FileInputVariant.unstyled;

  final FileInputVariant variant;
  final List<MantlePickedFile>? value;
  final void Function(List<MantlePickedFile>)? onChanged;
  final VoidCallback? onPick;
  final String? placeholder;
  final Widget? label;
  final Widget? description;
  final Widget? error;
  final bool? multiple;
  final bool? clearable;
  final bool? disabled;
  final bool? readOnly;
  final bool? required;
  final bool? withAsterisk;
  final String? accept;
  final String? size;
  final BorderRadiusGeometry? radius;
  final FileInputStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedOnChanged = onChanged;
    final resolvedOnPick = onPick;
    final resolvedPlaceholder = placeholder;
    final resolvedLabel = label;
    final resolvedDescription = description;
    final resolvedError = error;
    final resolvedMultiple = multiple ?? false;
    final resolvedClearable = clearable ?? false;
    final resolvedDisabled = disabled ?? false;
    final resolvedReadOnly = readOnly ?? false;
    final resolvedRequired = required ?? false;
    final resolvedWithAsterisk = withAsterisk;
    final resolvedAccept = accept;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius = radius ?? inputDefaultRadius(context);

    const fromProps = FileInputStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = FileInputState();
    final fileInputContext = FileInputContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      onChanged: resolvedOnChanged,
      onPick: resolvedOnPick,
      placeholder: resolvedPlaceholder,
      label: resolvedLabel,
      description: resolvedDescription,
      error: resolvedError,
      multiple: resolvedMultiple,
      clearable: resolvedClearable,
      disabled: resolvedDisabled,
      readOnly: resolvedReadOnly,
      required: resolvedRequired,
      withAsterisk: resolvedWithAsterisk,
      accept: resolvedAccept,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<FileInputDelegate>();
    return delegate.root(fileInputContext);
  }
}
