// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'segmented_control.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum SegmentedControlVariant { defaults }

@immutable
class SegmentedControlStyle {
  const SegmentedControlStyle();

  SegmentedControlStyle copyWith() => this;

  SegmentedControlStyle mergeWith(SegmentedControlStyle? other) => this;
}

@immutable
class SegmentedControlState {
  const SegmentedControlState();
}

@immutable
class SegmentedControlContext {
  const SegmentedControlContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.data,
    this.value,
    this.defaultValue,
    this.onChanged,
    required this.disabled,
    required this.readOnly,
    required this.fullWidth,
    required this.withItemsBorders,
    required this.orientation,
    this.color,
    required this.size,
    required this.radius,
  });

  final BuildContext context;
  final SegmentedControlStyle style;
  final SegmentedControlState state;
  final SegmentedControlVariant variant;
  final List<SegmentedControlItem> data;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final bool disabled;
  final bool readOnly;
  final bool fullWidth;
  final bool withItemsBorders;
  final Axis orientation;
  final String? color;
  final String size;
  final BorderRadiusGeometry radius;
}

class SegmentedControlRoot {
  const SegmentedControlRoot(this._build);

  final Widget Function(SegmentedControlContext context) _build;

  Widget call(SegmentedControlContext context) => _build(context);
}

abstract class SegmentedControlDelegate extends ComponentDelegate {
  const SegmentedControlDelegate();

  Widget root(SegmentedControlContext context);
}

class SegmentedControl extends StatelessWidget {
  const SegmentedControl({
    super.key,
    required this.data,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.disabled,
    this.readOnly,
    this.fullWidth,
    this.withItemsBorders,
    this.orientation,
    this.color,
    this.size,
    this.radius,
    this.style,
  }) : variant = SegmentedControlVariant.defaults;

  final SegmentedControlVariant variant;
  final List<SegmentedControlItem> data;
  final String? value;
  final String? defaultValue;
  final void Function(String)? onChanged;
  final bool? disabled;
  final bool? readOnly;
  final bool? fullWidth;
  final bool? withItemsBorders;
  final Axis? orientation;
  final String? color;
  final String? size;
  final BorderRadiusGeometry? radius;
  final SegmentedControlStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedData = data;
    final resolvedValue = value;
    final resolvedDefaultValue = defaultValue;
    final resolvedOnChanged = onChanged;
    final resolvedDisabled = disabled ?? false;
    final resolvedReadOnly = readOnly ?? false;
    final resolvedFullWidth = fullWidth ?? false;
    final resolvedWithItemsBorders = withItemsBorders ?? true;
    final resolvedOrientation = orientation ?? Axis.horizontal;
    final resolvedColor = color;
    final resolvedSize = size ?? 'sm';
    final resolvedRadius = radius ?? inputDefaultRadius(context);

    const fromProps = SegmentedControlStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = SegmentedControlState();
    final segmentedControlContext = SegmentedControlContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      data: resolvedData,
      value: resolvedValue,
      defaultValue: resolvedDefaultValue,
      onChanged: resolvedOnChanged,
      disabled: resolvedDisabled,
      readOnly: resolvedReadOnly,
      fullWidth: resolvedFullWidth,
      withItemsBorders: resolvedWithItemsBorders,
      orientation: resolvedOrientation,
      color: resolvedColor,
      size: resolvedSize,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<SegmentedControlDelegate>();
    return delegate.root(segmentedControlContext);
  }
}
