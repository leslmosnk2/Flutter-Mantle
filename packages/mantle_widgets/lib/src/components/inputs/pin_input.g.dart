// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin_input.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [PinInput].
enum PinInputVariant {
  /// The default variant.
  defaults,

  /// The filled variant.
  filled,

  /// The unstyled variant.
  unstyled,
}

/// Resolved visual values for [PinInput].
@immutable
class PinInputStyle {
  /// Creates a [PinInputStyle].
  const PinInputStyle();

  /// Returns a copy of this [PinInputStyle] with selected fields replaced.
  PinInputStyle copyWith() => this;

  /// Merges [other] over this [PinInputStyle]; null fields keep this value.
  PinInputStyle mergeWith(PinInputStyle? other) => this;
}

/// Resolved interaction state for [PinInput].
@immutable
class PinInputState {
  /// Creates a [PinInputState].
  const PinInputState();
}

/// Values passed to [PinInputDelegate] slots during build.
@immutable
class PinInputContext {
  /// Creates a [PinInputContext].
  const PinInputContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.onComplete,
    required this.length,
    required this.placeholder,
    required this.gap,
    required this.disabled,
    required this.readOnly,
    required this.mask,
    required this.error,
    required this.manageFocus,
    required this.type,
    required this.size,
    required this.radius,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final PinInputStyle style;

  /// Resolved interaction state for this build.
  final PinInputState state;

  /// The visual variant selected by the constructor.
  final PinInputVariant variant;

  /// The controlled value.
  final String? value;

  /// Initial value when [value] is omitted.
  final String? defaultValue;

  /// Called when the value changes.
  final void Function(String)? onChanged;

  /// Called when complete.
  final void Function(String)? onComplete;

  /// The length.
  final int length;

  /// Placeholder text when empty.
  final String placeholder;

  /// Spacing token between items.
  final String gap;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether the value cannot be edited.
  final bool readOnly;

  /// Whether mask.
  final bool mask;

  /// Error text or error state.
  final bool error;

  /// Whether manage focus.
  final bool manageFocus;

  /// The type.
  final PinInputType type;

  /// Size token.
  final String size;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class PinInputRoot {
  /// Creates a [PinInputRoot] from a builder function.
  const PinInputRoot(this._build);

  final Widget Function(PinInputContext context) _build;

  /// Invokes this slot with [context].
  Widget call(PinInputContext context) => _build(context);
}

/// Theme-owned composition slots for [PinInput].
abstract class PinInputDelegate extends ComponentDelegate {
  /// Creates a [PinInputDelegate].
  const PinInputDelegate();

  /// Builds the composition root.
  Widget root(PinInputContext context);
}

/// A [PinInput] widget resolved through [PinInputDelegate].
class PinInput extends StatelessWidget {
  /// Creates a [PinInput].
  const PinInput({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.onComplete,
    this.length,
    this.placeholder,
    this.gap,
    this.disabled,
    this.readOnly,
    this.mask,
    this.error,
    this.manageFocus,
    this.type,
    this.size,
    this.radius,
    this.style,
  }) : variant = PinInputVariant.defaults;

  /// Creates a filled [PinInput].
  const PinInput.filled({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.onComplete,
    this.length,
    this.placeholder,
    this.gap,
    this.disabled,
    this.readOnly,
    this.mask,
    this.error,
    this.manageFocus,
    this.type,
    this.size,
    this.radius,
    this.style,
  }) : variant = PinInputVariant.filled;

  /// Creates an unstyled [PinInput].
  const PinInput.unstyled({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.onComplete,
    this.length,
    this.placeholder,
    this.gap,
    this.disabled,
    this.readOnly,
    this.mask,
    this.error,
    this.manageFocus,
    this.type,
    this.size,
    this.radius,
    this.style,
  }) : variant = PinInputVariant.unstyled;

  /// The visual variant selected by the constructor.
  final PinInputVariant variant;

  /// The controlled value.
  final String? value;

  /// Initial value when [value] is omitted.
  final String? defaultValue;

  /// Called when the value changes.
  final void Function(String)? onChanged;

  /// Called when complete.
  final void Function(String)? onComplete;

  /// The length.
  final int? length;

  /// Placeholder text when empty.
  final String? placeholder;

  /// Spacing token between items.
  final String? gap;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Whether the value cannot be edited.
  final bool? readOnly;

  /// Whether mask.
  final bool? mask;

  /// Error text or error state.
  final bool? error;

  /// Whether manage focus.
  final bool? manageFocus;

  /// The type.
  final PinInputType? type;

  /// Size token.
  final String? size;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final PinInputStyle? style;

  /// Resolves properties and builds via [PinInputDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedDefaultValue = defaultValue;
    final resolvedOnChanged = onChanged;
    final resolvedOnComplete = onComplete;
    final resolvedLength = length ?? 4;
    final resolvedPlaceholder = placeholder ?? '○';
    final resolvedGap = gap ?? 'sm';
    final resolvedDisabled = disabled ?? false;
    final resolvedReadOnly = readOnly ?? false;
    final resolvedMask = mask ?? false;
    final resolvedError = error ?? false;
    final resolvedManageFocus = manageFocus ?? true;
    final resolvedType = type ?? PinInputType.alphanumeric;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius = radius ?? inputDefaultRadius(context);

    const fromProps = PinInputStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = PinInputState();
    final pinInputContext = PinInputContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      defaultValue: resolvedDefaultValue,
      onChanged: resolvedOnChanged,
      onComplete: resolvedOnComplete,
      length: resolvedLength,
      placeholder: resolvedPlaceholder,
      gap: resolvedGap,
      disabled: resolvedDisabled,
      readOnly: resolvedReadOnly,
      mask: resolvedMask,
      error: resolvedError,
      manageFocus: resolvedManageFocus,
      type: resolvedType,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<PinInputDelegate>();
    return delegate.root(pinInputContext);
  }
}
