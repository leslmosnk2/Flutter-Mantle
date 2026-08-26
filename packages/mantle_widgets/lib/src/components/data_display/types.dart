// Widget classes live in sibling libraries; doc links are still useful.
// ignore_for_file: comment_references

import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';

/// Called when open Accordion values change.
typedef AccordionOnChange = void Function(List<String> value);

/// Chevron side relative to an AccordionItem label.
enum AccordionChevronPosition {
  /// Chevron after the label (end in LTR).
  right,

  /// Chevron before the label (start in LTR).
  left,
}

/// Thousand-grouping style for NumberFormatter and RollingNumber.
enum ThousandsGroupStyle {
  /// Groups of three from the right (`1,234,567`).
  thousand,

  /// Indian grouping (`12,34,567`).
  lakh,

  /// East-Asian grouping of four (`1,2345,6789`).
  wan,

  /// No grouping.
  none,
}

/// Badge / indicator overlay placement on a child.
enum IndicatorPosition {
  /// Top start corner.
  topStart,

  /// Top center.
  topCenter,

  /// Top end corner.
  topEnd,

  /// Vertical center, start edge.
  middleStart,

  /// Center of the child.
  middleCenter,

  /// Vertical center, end edge.
  middleEnd,

  /// Bottom start corner.
  bottomStart,

  /// Bottom center.
  bottomCenter,

  /// Bottom end corner.
  bottomEnd,
}

/// Label/value layout inside a DataListItem.
enum DataListOrientation {
  /// Label and value on one row.
  horizontal,

  /// Label stacked above the value.
  vertical,
}

/// Which end of an [OverflowList] collapses first.
enum OverflowCollapseFrom {
  /// Hide trailing items.
  end,

  /// Hide leading items.
  start,
}

/// Content side relative to a [Timeline] bullet.
enum TimelineAlign {
  /// Content after the bullet (right of the line in LTR).
  left,

  /// Content before the bullet (left of the line in LTR).
  right,
}

/// Line style between [TimelineItem] bullets.
enum TimelineLineVariant {
  /// Solid connector.
  solid,

  /// Dashed connector.
  dashed,

  /// Dotted connector.
  dotted,
}

/// Called when Spoiler expanded state changes.
// ignore: avoid_positional_boolean_parameters - Mantine onExpandedChange(bool)
typedef SpoilerOnExpandedChange = void Function(bool expanded);

/// Builds the collapsed-count widget for [OverflowList].
typedef OverflowListOverflowBuilder = Widget Function(int hiddenCount);

/// Image provider without a type argument (codegen-safe).
typedef MantleImageProvider = ImageProvider<Object>;

/// Pill radius used by Avatar, Badge, ColorSwatch, and Indicator.
BorderRadiusGeometry dataDisplayPillRadius(BuildContext context) {
  return BorderRadius.circular(1000);
}

/// Theme default radius.
BorderRadiusGeometry dataDisplayDefaultRadius(BuildContext context) {
  return BorderRadius.all(MantleTheme.of(context).resolvedDefaultRadius);
}

/// Formats a number with optional grouping, decimals, prefix, and suffix.
String formatMantleNumber({
  required num value,
  bool allowNegative = true,
  int? decimalScale,
  String decimalSeparator = '.',
  bool fixedDecimalScale = false,
  String prefix = '',
  String suffix = '',
  ThousandsGroupStyle thousandsGroupStyle = ThousandsGroupStyle.thousand,
  String? thousandSeparator,
}) {
  var number = value.toDouble();
  if (!allowNegative && number < 0) {
    number = number.abs();
  }

  final negative = number < 0;
  number = number.abs();

  String intPart;
  String fracPart;
  if (decimalScale != null) {
    final fixed = number.toStringAsFixed(decimalScale);
    final parts = fixed.split('.');
    intPart = parts[0];
    fracPart = parts.length > 1 ? parts[1] : '';
    if (!fixedDecimalScale) {
      fracPart = fracPart.replaceFirst(RegExp(r'0+$'), '');
    }
  } else {
    final raw = number == number.roundToDouble()
        ? number.round().toString()
        : number.toString();
    final parts = raw.split('.');
    intPart = parts[0];
    fracPart = parts.length > 1 ? parts[1] : '';
  }

  final grouping = thousandSeparator == null || thousandSeparator.isEmpty
      ? ThousandsGroupStyle.none
      : thousandsGroupStyle;
  final grouped = _groupInteger(intPart, thousandSeparator ?? ',', grouping);

  final buffer = StringBuffer();
  if (negative) {
    buffer.write('-');
  }
  buffer
    ..write(prefix)
    ..write(grouped);
  if (fracPart.isNotEmpty) {
    buffer
      ..write(decimalSeparator)
      ..write(fracPart);
  }
  buffer.write(suffix);
  return buffer.toString();
}

String _groupInteger(
  String digits,
  String separator,
  ThousandsGroupStyle style,
) {
  if (style == ThousandsGroupStyle.none || digits.length <= 1) {
    return digits;
  }
  final signless = digits.startsWith('-') ? digits.substring(1) : digits;
  switch (style) {
    case ThousandsGroupStyle.none:
      return digits;
    case ThousandsGroupStyle.thousand:
      return _groupFromRight(signless, separator, 3);
    case ThousandsGroupStyle.wan:
      return _groupFromRight(signless, separator, 4);
    case ThousandsGroupStyle.lakh:
      return _groupLakh(signless, separator);
  }
}

String _groupFromRight(String digits, String separator, int size) {
  final buffer = StringBuffer();
  var remaining = digits;
  while (remaining.length > size) {
    final chunk = remaining.substring(remaining.length - size);
    remaining = remaining.substring(0, remaining.length - size);
    final prefix = buffer.isEmpty ? chunk : '$chunk$separator$buffer';
    buffer
      ..clear()
      ..write(prefix);
  }
  if (buffer.isEmpty) {
    return remaining;
  }
  return '$remaining$separator$buffer';
}

String _groupLakh(String digits, String separator) {
  if (digits.length <= 3) {
    return digits;
  }
  final lastThree = digits.substring(digits.length - 3);
  final head = _groupFromRight(
    digits.substring(0, digits.length - 3),
    separator,
    2,
  );
  return '$head$separator$lastThree';
}

/// Initials from a display name (`Ada Lovelace` → `AL`).
String avatarInitials(String name, {int limit = 2}) {
  final parts = name
      .trim()
      .split(RegExp(r'\s+'))
      .where((part) => part.isNotEmpty)
      .toList();
  if (parts.isEmpty) {
    return '';
  }
  if (parts.length == 1) {
    final word = parts.first;
    return word
        .substring(0, word.length < limit ? word.length : limit)
        .toUpperCase();
  }
  return parts
      .take(limit)
      .map((part) => part[0])
      .join()
      .toUpperCase();
}

/// Open values and chrome published by [Accordion] for [AccordionItem].
class AccordionScope extends InheritedWidget {
  /// Creates an accordion scope.
  const AccordionScope({
    required this.value,
    required this.multiple,
    required this.onToggle,
    required this.chevronPosition,
    required this.disableChevronRotation,
    required this.chevron,
    required this.appearance,
    required super.child,
    super.key,
  });

  /// Currently open item values.
  final List<String> value;

  /// Whether more than one item may be open.
  final bool multiple;

  /// Toggles [itemValue] in [value].
  final ValueChanged<String> onToggle;

  /// Chevron side.
  final AccordionChevronPosition chevronPosition;

  /// When true, the chevron does not rotate when open.
  final bool disableChevronRotation;

  /// Custom chevron; `null` uses the default caret.
  final Widget? chevron;

  /// Visual recipe (`default`, `contained`, `filled`, `separated`).
  final String appearance;

  /// The nearest [AccordionScope], or null.
  static AccordionScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AccordionScope>();
  }

  /// The nearest [AccordionScope].
  static AccordionScope of(BuildContext context) {
    final scope = maybeOf(context);
    assert(scope != null, 'AccordionItem used outside Accordion');
    return scope!;
  }

  /// Whether [itemValue] is open.
  bool isOpen(String itemValue) => value.contains(itemValue);

  @override
  bool updateShouldNotify(AccordionScope oldWidget) {
    return value != oldWidget.value ||
        multiple != oldWidget.multiple ||
        chevronPosition != oldWidget.chevronPosition ||
        disableChevronRotation != oldWidget.disableChevronRotation ||
        chevron != oldWidget.chevron ||
        appearance != oldWidget.appearance;
  }
}

/// Overlap spacing published by [AvatarGroup].
class AvatarGroupScope extends InheritedWidget {
  /// Creates an avatar-group scope.
  const AvatarGroupScope({
    required this.spacing,
    required super.child,
    super.key,
  });

  /// Negative start overlap in logical pixels.
  final double spacing;

  /// The nearest [AvatarGroupScope], or null.
  static AvatarGroupScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AvatarGroupScope>();
  }

  @override
  bool updateShouldNotify(AvatarGroupScope oldWidget) {
    return spacing != oldWidget.spacing;
  }
}

/// Padding published by [MCard] for [CardSection].
class CardScope extends InheritedWidget {
  /// Creates a card scope.
  const CardScope({
    required this.padding,
    required this.withBorder,
    required super.child,
    super.key,
  });

  /// Resolved card padding.
  final double padding;

  /// Whether the card itself draws a border.
  final bool withBorder;

  /// The nearest [CardScope], or null.
  static CardScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CardScope>();
  }

  /// The nearest [CardScope].
  static CardScope of(BuildContext context) {
    final scope = maybeOf(context);
    assert(scope != null, 'CardSection used outside MCard');
    return scope!;
  }

  @override
  bool updateShouldNotify(CardScope oldWidget) {
    return padding != oldWidget.padding || withBorder != oldWidget.withBorder;
  }
}

/// First/last flags for a child inside [MCard].
class CardChildScope extends InheritedWidget {
  /// Creates a card-child scope.
  const CardChildScope({
    required this.isFirst,
    required this.isLast,
    required super.child,
    super.key,
  });

  /// Whether this child is the first in the card.
  final bool isFirst;

  /// Whether this child is the last in the card.
  final bool isLast;

  /// The nearest [CardChildScope], or null.
  static CardChildScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CardChildScope>();
  }

  @override
  bool updateShouldNotify(CardChildScope oldWidget) {
    return isFirst != oldWidget.isFirst || isLast != oldWidget.isLast;
  }
}

/// Active index and bullet metrics published by [Timeline].
class TimelineScope extends InheritedWidget {
  /// Creates a timeline scope.
  const TimelineScope({
    required this.active,
    required this.color,
    required this.bulletSize,
    required this.lineWidth,
    required this.align,
    required this.reverseActive,
    required this.itemCount,
    required super.child,
    super.key,
  });

  /// Index of the last active item (`-1` = none).
  final int active;

  /// Palette name for active bullets and lines.
  final String? color;

  /// Bullet diameter.
  final double bulletSize;

  /// Connector width.
  final double lineWidth;

  /// Content side.
  final TimelineAlign align;

  /// When true, active state is counted from the last item.
  final bool reverseActive;

  /// Number of [TimelineItem] children.
  final int itemCount;

  /// The nearest [TimelineScope], or null.
  static TimelineScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TimelineScope>();
  }

  /// The nearest [TimelineScope].
  static TimelineScope of(BuildContext context) {
    final scope = maybeOf(context);
    assert(scope != null, 'TimelineItem used outside Timeline');
    return scope!;
  }

  /// Whether the item at [index] is active.
  bool isActive(int index) {
    if (reverseActive) {
      return active >= itemCount - index - 1;
    }
    return active >= index;
  }

  /// Whether the line below the item at [index] is active.
  bool isLineActive(int index) {
    if (reverseActive) {
      return active >= itemCount - index - 1;
    }
    return active - 1 >= index;
  }

  @override
  bool updateShouldNotify(TimelineScope oldWidget) {
    return active != oldWidget.active ||
        color != oldWidget.color ||
        bulletSize != oldWidget.bulletSize ||
        lineWidth != oldWidget.lineWidth ||
        align != oldWidget.align ||
        reverseActive != oldWidget.reverseActive ||
        itemCount != oldWidget.itemCount;
  }
}

/// Index of a [TimelineItem] inside [Timeline].
class TimelineItemIndex extends InheritedWidget {
  /// Creates a timeline item index.
  const TimelineItemIndex({
    required this.index,
    required this.isLast,
    required super.child,
    super.key,
  });

  /// Zero-based index among timeline children.
  final int index;

  /// Whether this is the last item (no connector below).
  final bool isLast;

  /// The nearest [TimelineItemIndex], or null.
  static TimelineItemIndex? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TimelineItemIndex>();
  }

  @override
  bool updateShouldNotify(TimelineItemIndex oldWidget) {
    return index != oldWidget.index || isLast != oldWidget.isLast;
  }
}

/// Layout flags published by [DataList] for items.
class DataListScope extends InheritedWidget {
  /// Creates a data-list scope.
  const DataListScope({
    required this.orientation,
    required this.withDivider,
    required this.gap,
    required this.labelWidth,
    required super.child,
    super.key,
  });

  /// Label/value arrangement.
  final DataListOrientation orientation;

  /// Whether items draw a trailing divider.
  final bool withDivider;

  /// Gap between items.
  final double gap;

  /// Minimum label width in horizontal orientation.
  final double labelWidth;

  /// The nearest [DataListScope], or null.
  static DataListScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<DataListScope>();
  }

  /// The nearest [DataListScope].
  static DataListScope of(BuildContext context) {
    final scope = maybeOf(context);
    assert(scope != null, 'DataListItem used outside DataList');
    return scope!;
  }

  @override
  bool updateShouldNotify(DataListScope oldWidget) {
    return orientation != oldWidget.orientation ||
        withDivider != oldWidget.withDivider ||
        gap != oldWidget.gap ||
        labelWidth != oldWidget.labelWidth;
  }
}
