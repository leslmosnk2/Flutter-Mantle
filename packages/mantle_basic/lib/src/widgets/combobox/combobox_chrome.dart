import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Option vertical/horizontal padding by size (Mantine `--combobox-option-padding-*`).
const Map<String, EdgeInsets> comboboxOptionPadding = {
  'xs': EdgeInsets.symmetric(horizontal: 8, vertical: 4),
  'sm': EdgeInsets.symmetric(horizontal: 10, vertical: 6),
  'md': EdgeInsets.symmetric(horizontal: 12, vertical: 8),
  'lg': EdgeInsets.symmetric(horizontal: 16, vertical: 10),
  'xl': EdgeInsets.symmetric(horizontal: 20, vertical: 14),
};

/// Chevron box size by size token.
const Map<String, double> comboboxChevronSizes = {
  'xs': 14,
  'sm': 18,
  'md': 20,
  'lg': 24,
  'xl': 28,
};

/// Pill height by size token.
const Map<String, double> pillHeights = {
  'xs': 18,
  'sm': 22,
  'md': 25,
  'lg': 28,
  'xl': 32,
};

/// Pill font size by size token.
const Map<String, double> pillFontSizes = {
  'xs': 10,
  'sm': 12,
  'md': 14,
  'lg': 16,
  'xl': 18,
};

/// Pill group gap by size token.
const Map<String, double> pillGroupGaps = {
  'xs': 6,
  'sm': 8,
  'md': 10,
  'lg': 12,
  'xl': 12,
};

/// Key on the visible dropdown panel.
const Key comboboxDropdownKey = ValueKey<String>('mantle.combobox.dropdown');

/// Key for an option with [value].
Key comboboxOptionKey(String value) =>
    ValueKey<String>('mantle.combobox.option.$value');

/// Resolves option padding for [size].
EdgeInsets optionPaddingFor(String size) =>
    comboboxOptionPadding[size] ?? comboboxOptionPadding['sm']!;

/// Wraps [child] with [InputWrapper] when label/description/error are set.
Widget wrapComboboxField({
  required String size,
  required Widget child,
  String? label,
  String? description,
  String? error,
}) {
  if (label == null && description == null && error == null) {
    return child;
  }
  return InputWrapper(
    size: size,
    label: label == null ? null : Text(label),
    description: description == null ? null : Text(description),
    error: error == null ? null : Text(error),
    child: child,
  );
}

/// Builds grouped [ComboboxOption] widgets from [items].
List<Widget> buildComboboxOptions({
  required List<ComboboxItem> items,
  required Set<String> selected,
  bool withCheckIcon = false,
  ComboboxCheckIconPosition checkIconPosition = ComboboxCheckIconPosition.left,
}) {
  final widgets = <Widget>[];
  String? currentGroup;
  var groupItems = <Widget>[];

  void flush() {
    if (groupItems.isEmpty) {
      return;
    }
    if (currentGroup != null) {
      widgets.add(
        ComboboxGroup(
          label: currentGroup,
          children: List<Widget>.of(groupItems),
        ),
      );
    } else {
      widgets.addAll(groupItems);
    }
    groupItems = <Widget>[];
  }

  for (final item in items) {
    if (item.group != currentGroup) {
      flush();
      currentGroup = item.group;
    }
    final isSelected = selected.contains(item.value);
    groupItems.add(
      ComboboxOption(
        key: comboboxOptionKey(item.value),
        value: item.value,
        selected: isSelected,
        disabled: item.disabled,
        child: ComboboxOptionLabel(
          label: item.label,
          checked: isSelected,
          withCheckIcon: withCheckIcon,
          checkIconPosition: checkIconPosition,
        ),
      ),
    );
  }
  flush();
  return widgets;
}

/// Default option row: optional check + label.
class ComboboxOptionLabel extends StatelessWidget {
  /// Creates an option label.
  const ComboboxOptionLabel({
    required this.label,
    required this.checked,
    required this.withCheckIcon,
    required this.checkIconPosition,
    super.key,
  });

  /// Display text.
  final String label;

  /// Whether this option is selected.
  final bool checked;

  /// Whether to reserve/show a check icon.
  final bool withCheckIcon;

  /// Check icon side.
  final ComboboxCheckIconPosition checkIconPosition;

  @override
  Widget build(BuildContext context) {
    final text = Text(label);
    if (!withCheckIcon) {
      return text;
    }
    final check = SizedBox(
      width: 12,
      height: 12,
      child: checked
          ? const CustomPaint(painter: _CheckPainter())
          : const SizedBox.shrink(),
    );
    final children = checkIconPosition == ComboboxCheckIconPosition.left
        ? [check, const SizedBox(width: 8), Expanded(child: text)]
        : [Expanded(child: text), const SizedBox(width: 8), check];
    return Row(children: children);
  }
}

/// Dropdown paper matching Combobox.module.css `.dropdown`.
Widget comboboxDropdownPanel({
  required BuildContext context,
  required Widget child,
  required double padding,
  required double maxHeight,
  required bool withScrollArea,
  BorderRadiusGeometry? radius,
  Color? background,
  Color? borderColor,
}) {
  final theme = MantleTheme.of(context);
  final scheme = MantleProvider.colorSchemeOf(context);
  final isDark = scheme == MantleColorScheme.dark;
  final panel = DecoratedBox(
    decoration: BoxDecoration(
      color: background ?? (isDark ? theme.colors['dark'][6] : theme.white),
      borderRadius: radius ?? BorderRadius.all(theme.resolvedDefaultRadius),
      border: Border.all(
        color:
            borderColor ??
            (isDark ? theme.colors['dark'][4] : theme.colors['gray'][2]),
      ),
    ),
    child: Padding(
      padding: EdgeInsets.all(padding),
      child: child,
    ),
  );
  if (!withScrollArea) {
    return KeyedSubtree(key: comboboxDropdownKey, child: panel);
  }
  return KeyedSubtree(
    key: comboboxDropdownKey,
    child: ConstrainedBox(
      constraints: BoxConstraints(maxHeight: maxHeight),
      child: SingleChildScrollView(child: panel),
    ),
  );
}

/// Looks up [ComboboxItem] with [value] in [data].
ComboboxItem? itemForValue(List<ComboboxItem> data, String? value) {
  if (value == null) {
    return null;
  }
  for (final item in data) {
    if (item.value == value) {
      return item;
    }
  }
  return null;
}

/// Filter + limit helper used by composed widgets.
List<ComboboxItem> visibleComboboxItems({
  required List<ComboboxItem> data,
  required String search,
  int? limit,
  Set<String> hideValues = const {},
}) {
  final source = hideValues.isEmpty
      ? data
      : [
          for (final item in data)
            if (!hideValues.contains(item.value)) item,
        ];
  return filterComboboxItems(data: source, search: search, limit: limit);
}

class _CheckPainter extends CustomPainter {
  const _CheckPainter();

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFFFFFFF)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.6
      ..strokeCap = StrokeCap.round;
    final path = Path()
      ..moveTo(size.width * 0.15, size.height * 0.55)
      ..lineTo(size.width * 0.4, size.height * 0.8)
      ..lineTo(size.width * 0.85, size.height * 0.25);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

/// Chevron painter used by [ComboboxChevron].
class ComboboxChevronPainter extends CustomPainter {
  /// Creates a chevron painter.
  const ComboboxChevronPainter({required this.color});

  /// Stroke / fill color.
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.4
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;
    final path = Path()
      ..moveTo(size.width * 0.25, size.height * 0.38)
      ..lineTo(size.width * 0.5, size.height * 0.62)
      ..lineTo(size.width * 0.75, size.height * 0.38);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant ComboboxChevronPainter oldDelegate) {
    return oldDelegate.color != color;
  }
}

/// Size used by input chrome for combobox fields.
double comboboxInputHeight(MantleTheme theme, String size) {
  return inputSizeToken(inputHeights, size) * theme.scale;
}
