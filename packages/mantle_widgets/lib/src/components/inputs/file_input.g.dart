// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_input.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [FileInput].
enum FileInputVariant {
  /// The default variant.
  defaults,

  /// The filled variant.
  filled,

  /// The unstyled variant.
  unstyled,
}

/// Resolved visual values for [FileInput].
@immutable
class FileInputStyle {
  /// Creates a [FileInputStyle].
  const FileInputStyle();

  /// Returns a copy of this [FileInputStyle] with selected fields replaced.
  FileInputStyle copyWith() => this;

  /// Merges [other] over this [FileInputStyle]; null fields keep this value.
  FileInputStyle mergeWith(FileInputStyle? other) => this;
}

/// Resolved interaction state for [FileInput].
@immutable
class FileInputState {
  /// Creates a [FileInputState].
  const FileInputState();
}

/// Values passed to [FileInputDelegate] slots during build.
@immutable
class FileInputContext {
  /// Creates a [FileInputContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final FileInputStyle style;

  /// Resolved interaction state for this build.
  final FileInputState state;

  /// The visual variant selected by the constructor.
  final FileInputVariant variant;

  /// The controlled value.
  final List<MantlePickedFile>? value;

  /// Called when the value changes.
  final void Function(List<MantlePickedFile>)? onChanged;

  /// Called when pick.
  final VoidCallback? onPick;

  /// Placeholder text when empty.
  final String? placeholder;

  /// The label.
  final Widget? label;

  /// Supporting description text.
  final Widget? description;

  /// Error text or error state.
  final Widget? error;

  /// Whether more than one item can be selected.
  final bool multiple;

  /// Whether the value can be cleared.
  final bool clearable;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether the value cannot be edited.
  final bool readOnly;

  /// Whether required.
  final bool required;

  /// Whether with asterisk.
  final bool? withAsterisk;

  /// The accept.
  final String? accept;

  /// Size token.
  final String size;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class FileInputRoot {
  /// Creates a [FileInputRoot] from a builder function.
  const FileInputRoot(this._build);

  final Widget Function(FileInputContext context) _build;

  /// Invokes this slot with [context].
  Widget call(FileInputContext context) => _build(context);
}

/// Theme-owned composition slots for [FileInput].
abstract class FileInputDelegate extends ComponentDelegate {
  /// Creates a [FileInputDelegate].
  const FileInputDelegate();

  /// Builds the composition root.
  Widget root(FileInputContext context);
}

/// A [FileInput] widget resolved through [FileInputDelegate].
class FileInput extends StatelessWidget {
  /// Creates a [FileInput].
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

  /// Creates a filled [FileInput].
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

  /// Creates an unstyled [FileInput].
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

  /// The visual variant selected by the constructor.
  final FileInputVariant variant;

  /// The controlled value.
  final List<MantlePickedFile>? value;

  /// Called when the value changes.
  final void Function(List<MantlePickedFile>)? onChanged;

  /// Called when pick.
  final VoidCallback? onPick;

  /// Placeholder text when empty.
  final String? placeholder;

  /// The label.
  final Widget? label;

  /// Supporting description text.
  final Widget? description;

  /// Error text or error state.
  final Widget? error;

  /// Whether more than one item can be selected.
  final bool? multiple;

  /// Whether the value can be cleared.
  final bool? clearable;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Whether the value cannot be edited.
  final bool? readOnly;

  /// Whether required.
  final bool? required;

  /// Whether with asterisk.
  final bool? withAsterisk;

  /// The accept.
  final String? accept;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final FileInputStyle? style;

  /// Resolves properties and builds via [FileInputDelegate].
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
