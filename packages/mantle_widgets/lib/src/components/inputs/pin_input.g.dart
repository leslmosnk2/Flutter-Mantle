// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pin_input.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum PinInputVariant { defaults, filled, unstyled }

@immutable
class PinInputStyle {
  const PinInputStyle();

  PinInputStyle copyWith() => this;

  PinInputStyle mergeWith(PinInputStyle? other) => this;
}

@immutable
class PinInputState {
  const PinInputState();
}

@immutable
class PinInputContext {
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

  final BuildContext context;
  final PinInputStyle style;
  final PinInputState state;
  final PinInputVariant variant;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final void Function(String)? onComplete;
  final int length;
  final String placeholder;
  final String gap;
  final bool disabled;
  final bool readOnly;
  final bool mask;
  final bool error;
  final bool manageFocus;
  final PinInputType type;
  final String size;
  final BorderRadiusGeometry radius;
}

class PinInputRoot {
  const PinInputRoot(this._build);

  final Widget Function(PinInputContext context) _build;

  Widget call(PinInputContext context) => _build(context);
}

abstract class PinInputDelegate extends ComponentDelegate {
  const PinInputDelegate();

  Widget root(PinInputContext context);
}

class PinInput extends StatelessWidget {
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

  final PinInputVariant variant;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final void Function(String)? onComplete;
  final int? length;
  final String? placeholder;
  final String? gap;
  final bool? disabled;
  final bool? readOnly;
  final bool? mask;
  final bool? error;
  final bool? manageFocus;
  final PinInputType? type;
  final String? size;
  final BorderRadiusGeometry? radius;
  final PinInputStyle? style;

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
