// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chip.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum ChipVariant { defaults, outline, filled, light }

@immutable
class ChipStyle {
  const ChipStyle();

  ChipStyle copyWith() => this;

  ChipStyle mergeWith(ChipStyle? other) => this;
}

@immutable
class ChipState {
  const ChipState();
}

@immutable
class ChipContext {
  const ChipContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.value,
    this.checked,
    required this.defaultChecked,
    this.onChanged,
    required this.disabled,
    this.icon,
    this.color,
    required this.size,
    required this.radius,
  });

  final BuildContext context;
  final ChipStyle style;
  final ChipState state;
  final ChipVariant variant;
  final Widget child;
  final String? value;
  final bool? checked;
  final bool defaultChecked;
  final void Function(bool)? onChanged;
  final bool disabled;
  final Widget? icon;
  final String? color;
  final String size;
  final BorderRadiusGeometry radius;
}

class ChipRoot {
  const ChipRoot(this._build);

  final Widget Function(ChipContext context) _build;

  Widget call(ChipContext context) => _build(context);
}

abstract class ChipDelegate extends ComponentDelegate {
  const ChipDelegate();

  Widget root(ChipContext context);
}

class Chip extends StatelessWidget {
  const Chip({
    super.key,
    required this.child,
    this.value,
    this.checked,
    this.defaultChecked,
    this.onChanged,
    this.disabled,
    this.icon,
    this.color,
    this.size,
    this.radius,
    this.style,
  }) : variant = ChipVariant.defaults;

  const Chip.outline({
    super.key,
    required this.child,
    this.value,
    this.checked,
    this.defaultChecked,
    this.onChanged,
    this.disabled,
    this.icon,
    this.color,
    this.size,
    this.radius,
    this.style,
  }) : variant = ChipVariant.outline;

  const Chip.filled({
    super.key,
    required this.child,
    this.value,
    this.checked,
    this.defaultChecked,
    this.onChanged,
    this.disabled,
    this.icon,
    this.color,
    this.size,
    this.radius,
    this.style,
  }) : variant = ChipVariant.filled;

  const Chip.light({
    super.key,
    required this.child,
    this.value,
    this.checked,
    this.defaultChecked,
    this.onChanged,
    this.disabled,
    this.icon,
    this.color,
    this.size,
    this.radius,
    this.style,
  }) : variant = ChipVariant.light;

  final ChipVariant variant;
  final Widget child;
  final String? value;
  final bool? checked;
  final bool? defaultChecked;
  final void Function(bool)? onChanged;
  final bool? disabled;
  final Widget? icon;
  final String? color;
  final String? size;
  final BorderRadiusGeometry? radius;
  final ChipStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedValue = value;
    final resolvedChecked = checked;
    final resolvedDefaultChecked = defaultChecked ?? false;
    final resolvedOnChanged = onChanged;
    final resolvedDisabled = disabled ?? false;
    final resolvedIcon = icon;
    final resolvedColor = color;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius = radius ?? inputPillRadius(context);

    const fromProps = ChipStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ChipState();
    final chipContext = ChipContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      value: resolvedValue,
      checked: resolvedChecked,
      defaultChecked: resolvedDefaultChecked,
      onChanged: resolvedOnChanged,
      disabled: resolvedDisabled,
      icon: resolvedIcon,
      color: resolvedColor,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<ChipDelegate>();
    return delegate.root(chipContext);
  }
}

enum ChipGroupVariant { defaults }

@immutable
class ChipGroupStyle {
  const ChipGroupStyle();

  ChipGroupStyle copyWith() => this;

  ChipGroupStyle mergeWith(ChipGroupStyle? other) => this;
}

@immutable
class ChipGroupState {
  const ChipGroupState();
}

@immutable
class ChipGroupContext {
  const ChipGroupContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    this.value,
    this.defaultValue,
    this.onChanged,
    required this.multiple,
  });

  final BuildContext context;
  final ChipGroupStyle style;
  final ChipGroupState state;
  final ChipGroupVariant variant;
  final List<Widget> children;
  final List<String>? value;
  final List<String>? defaultValue;
  final void Function(List<String>)? onChanged;
  final bool multiple;
}

class ChipGroupRoot {
  const ChipGroupRoot(this._build);

  final Widget Function(ChipGroupContext context) _build;

  Widget call(ChipGroupContext context) => _build(context);
}

abstract class ChipGroupDelegate extends ComponentDelegate {
  const ChipGroupDelegate();

  Widget root(ChipGroupContext context);
}

class ChipGroup extends StatelessWidget {
  const ChipGroup({
    super.key,
    required this.children,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.multiple,
    this.style,
  }) : variant = ChipGroupVariant.defaults;

  final ChipGroupVariant variant;
  final List<Widget> children;
  final List<String>? value;
  final List<String>? defaultValue;
  final void Function(List<String>)? onChanged;
  final bool? multiple;
  final ChipGroupStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedValue = value;
    final resolvedDefaultValue = defaultValue;
    final resolvedOnChanged = onChanged;
    final resolvedMultiple = multiple ?? false;

    const fromProps = ChipGroupStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ChipGroupState();
    final chipGroupContext = ChipGroupContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      value: resolvedValue,
      defaultValue: resolvedDefaultValue,
      onChanged: resolvedOnChanged,
      multiple: resolvedMultiple,
    );
    final delegate = MantleTheme.of(context).delegate<ChipGroupDelegate>();
    return delegate.root(chipGroupContext);
  }
}
