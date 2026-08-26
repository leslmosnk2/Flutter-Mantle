import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';

/// Label placement relative to a checkbox, switch, or radio.
enum InputLabelPosition {
  /// Label sits after the control (end in LTR).
  right,

  /// Label sits before the control (start in LTR).
  left,
}

/// How NumberInput applies `min` / `max`.
enum NumberClampBehavior {
  /// Clamp when the field loses focus.
  blur,

  /// Reject keystrokes outside the range.
  strict,

  /// No clamping; range only applies to stepper controls.
  none,
}

/// Which characters PinInput accepts.
enum PinInputType {
  /// Letters and digits.
  alphanumeric,

  /// Digits only.
  number,
}

/// Color string encoding for ColorPicker / ColorInput.
enum ColorFormat {
  /// `#rrggbb`
  hex,

  /// `#rrggbbaa`
  hexa,

  /// `rgb(r, g, b)`
  rgb,

  /// `rgba(r, g, b, a)`
  rgba,

  /// `hsl(h, s%, l%)`
  hsl,

  /// `hsla(h, s%, l%, a)`
  hsla,
}

/// A start/end pair for RangeSlider.
@immutable
class RangeSliderValue {
  /// Creates a range.
  const RangeSliderValue(this.start, this.end);

  /// Lower thumb value.
  final double start;

  /// Upper thumb value.
  final double end;

  @override
  bool operator ==(Object other) {
    return other is RangeSliderValue &&
        other.start == start &&
        other.end == end;
  }

  @override
  int get hashCode => Object.hash(start, end);

  @override
  String toString() => 'RangeSliderValue($start, $end)';
}

/// A labeled tick on Slider or RangeSlider.
@immutable
class SliderMark {
  /// Creates a mark.
  const SliderMark({required this.value, this.label});

  /// Value along the slider domain.
  final double value;

  /// Optional caption under the tick.
  final Widget? label;
}

/// An option in NativeSelect.
@immutable
class NativeSelectItem {
  /// Creates an option.
  const NativeSelectItem({
    required this.value,
    required this.label,
    this.disabled = false,
  });

  /// Submitted value.
  final String value;

  /// Displayed label.
  final String label;

  /// When true, the option cannot be selected.
  final bool disabled;
}

/// A segment in SegmentedControl.
@immutable
class SegmentedControlItem {
  /// Creates a segment.
  const SegmentedControlItem({
    required this.value,
    required this.label,
    this.disabled = false,
  });

  /// Submitted value.
  final String value;

  /// Visible label.
  final Widget label;

  /// When true, the segment cannot be selected.
  final bool disabled;
}

/// A file chosen through FileInput (platform picker is a stub in v1).
@immutable
class MantlePickedFile {
  /// Creates a picked-file description.
  const MantlePickedFile({
    required this.name,
    this.path,
    this.size,
  });

  /// File name shown in the field.
  final String name;

  /// Optional filesystem path.
  final String? path;

  /// Optional size in bytes.
  final int? size;
}

/// Theme default radius for input chrome.
BorderRadiusGeometry inputDefaultRadius(BuildContext context) {
  return BorderRadius.all(MantleTheme.of(context).resolvedDefaultRadius);
}

/// Pill radius (`xl`) used by Switch, Radio, and Chip.
BorderRadiusGeometry inputPillRadius(BuildContext context) {
  return BorderRadius.all(MantleTheme.of(context).radius.circular('xl'));
}

/// Values published by CheckboxGroup for descendant checkboxes.
class CheckboxGroupScope extends InheritedWidget {
  /// Creates a checkbox group scope.
  const CheckboxGroupScope({
    required this.value,
    required this.disabled,
    required this.readOnly,
    required this.size,
    required super.child,
    this.onChanged,
    super.key,
  });

  /// Currently selected values.
  final List<String> value;

  /// Called when a child is toggled.
  final void Function(List<String>)? onChanged;

  /// When true, children cannot be toggled.
  final bool disabled;

  /// When true, children cannot be toggled.
  final bool readOnly;

  /// Size token forwarded to unlabeled children.
  final String size;

  /// The nearest scope, or null.
  static CheckboxGroupScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CheckboxGroupScope>();
  }

  @override
  bool updateShouldNotify(CheckboxGroupScope oldWidget) {
    return value != oldWidget.value ||
        disabled != oldWidget.disabled ||
        readOnly != oldWidget.readOnly ||
        size != oldWidget.size;
  }
}

/// Value published by RadioGroup for descendant radios.
class RadioGroupScope extends InheritedWidget {
  /// Creates a radio group scope.
  const RadioGroupScope({
    required this.value,
    required this.disabled,
    required this.readOnly,
    required this.size,
    required super.child,
    this.onChanged,
    super.key,
  });

  /// Currently selected value.
  final String? value;

  /// Called when a child is selected.
  final void Function(String)? onChanged;

  /// When true, children cannot be selected.
  final bool disabled;

  /// When true, children cannot be selected.
  final bool readOnly;

  /// Size token forwarded to unlabeled children.
  final String size;

  /// The nearest scope, or null.
  static RadioGroupScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<RadioGroupScope>();
  }

  @override
  bool updateShouldNotify(RadioGroupScope oldWidget) {
    return value != oldWidget.value ||
        disabled != oldWidget.disabled ||
        readOnly != oldWidget.readOnly ||
        size != oldWidget.size;
  }
}

/// Values published by SwitchGroup for descendant switches.
class SwitchGroupScope extends InheritedWidget {
  /// Creates a switch group scope.
  const SwitchGroupScope({
    required this.value,
    required this.disabled,
    required this.readOnly,
    required this.size,
    required super.child,
    this.onChanged,
    super.key,
  });

  /// Currently selected values.
  final List<String> value;

  /// Called when a child is toggled.
  final void Function(List<String>)? onChanged;

  /// When true, children cannot be toggled.
  final bool disabled;

  /// When true, children cannot be toggled.
  final bool readOnly;

  /// Size token forwarded to unlabeled children.
  final String size;

  /// The nearest scope, or null.
  static SwitchGroupScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<SwitchGroupScope>();
  }

  @override
  bool updateShouldNotify(SwitchGroupScope oldWidget) {
    return value != oldWidget.value ||
        disabled != oldWidget.disabled ||
        readOnly != oldWidget.readOnly ||
        size != oldWidget.size;
  }
}

/// Values published by ChipGroup for descendant chips.
class ChipGroupScope extends InheritedWidget {
  /// Creates a chip group scope.
  const ChipGroupScope({
    required this.value,
    required this.multiple,
    required super.child,
    this.onChanged,
    super.key,
  });

  /// Selected values (one item when [multiple] is false).
  final List<String> value;

  /// When true, several chips can be selected.
  final bool multiple;

  /// Called when a child is toggled.
  final void Function(List<String>)? onChanged;

  /// The nearest scope, or null.
  static ChipGroupScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ChipGroupScope>();
  }

  @override
  bool updateShouldNotify(ChipGroupScope oldWidget) {
    return value != oldWidget.value || multiple != oldWidget.multiple;
  }
}
