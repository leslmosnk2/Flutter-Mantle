// Widget classes live in sibling libraries; doc links are still useful.
// ignore_for_file: comment_references

import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';

/// Which end of [MText] is ellipsized when [MText.truncate] is set.
enum MTextTruncate {
  /// Ellipsis at the end (Mantine `truncate` / `truncate="end"`).
  end,

  /// Ellipsis at the start (Mantine `truncate="start"`).
  start,
}

/// Marker style for [MList].
enum ListType {
  /// Numbered list (`<ol>`).
  ordered,

  /// Bulleted list (`<ul>`).
  unordered,
}

/// Side of [MTable] that shows [TableCaption].
enum TableCaptionSide {
  /// Caption above the table.
  top,

  /// Caption below the table.
  bottom,
}

/// Which rows [MTable] stripes when `striped` is enabled.
enum TableStriped {
  /// Odd rows (1-based; first body row).
  odd,

  /// Even rows.
  even,
}

/// Head/body/foot cells used to build [MTable] when `children` is omitted.
class TableData {
  /// Creates table data.
  const TableData({
    this.head,
    this.body,
    this.foot,
    this.caption,
  });

  /// Header cells rendered as [TableTh] inside [TableThead].
  final List<Widget>? head;

  /// Body rows of [TableTd] cells inside [TableTbody].
  final List<List<Widget>>? body;

  /// Footer cells rendered as [TableTh] inside [TableTfoot].
  final List<Widget>? foot;

  /// Optional [TableCaption] child.
  final Widget? caption;
}

/// One substring produced by [highlightChunks].
class HighlightChunk {
  /// Creates a chunk.
  const HighlightChunk({
    required this.chunk,
    required this.highlighted,
  });

  /// Original substring.
  final String chunk;

  /// Whether this span matched a highlight term.
  final bool highlighted;
}

/// Splits [value] on case-insensitive matches of [highlight] terms.
List<HighlightChunk> highlightChunks(String value, List<String> highlight) {
  final parts = highlight
      .map((term) => term.trim())
      .where((term) => term.isNotEmpty)
      .toList()
    ..sort((a, b) => b.length.compareTo(a.length));
  if (parts.isEmpty || value.isEmpty) {
    return [HighlightChunk(chunk: value, highlighted: false)];
  }

  final pattern = parts.map(RegExp.escape).join('|');
  final re = RegExp('($pattern)', caseSensitive: false);
  final result = <HighlightChunk>[];
  var start = 0;
  for (final match in re.allMatches(value)) {
    if (match.start > start) {
      result.add(
        HighlightChunk(
          chunk: value.substring(start, match.start),
          highlighted: false,
        ),
      );
    }
    result.add(
      HighlightChunk(
        chunk: match.group(0)!,
        highlighted: true,
      ),
    );
    start = match.end;
  }
  if (start < value.length) {
    result.add(
      HighlightChunk(
        chunk: value.substring(start),
        highlighted: false,
      ),
    );
  }
  if (result.isEmpty) {
    return [HighlightChunk(chunk: value, highlighted: false)];
  }
  return result;
}

/// Theme default radius for typography chrome (Blockquote).
BorderRadiusGeometry typographyDefaultRadius(BuildContext context) {
  return BorderRadius.all(MantleTheme.of(context).resolvedDefaultRadius);
}

/// Marker and spacing published by [MList] for [ListItem].
class ListScope extends InheritedWidget {
  /// Creates a list scope.
  const ListScope({
    required this.type,
    required this.center,
    required this.icon,
    required this.spacing,
    required this.size,
    required this.withPadding,
    required super.child,
    super.key,
  });

  /// Ordered vs unordered markers.
  final ListType type;

  /// Whether item content is vertically centered with the marker.
  final bool center;

  /// Default item icon; [ListItem.icon] overrides.
  final Widget? icon;

  /// Gap between items, in logical pixels.
  final double spacing;

  /// Font-size token.
  final String size;

  /// Extra start padding (nested lists).
  final bool withPadding;

  /// The nearest [ListScope], or null.
  static ListScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ListScope>();
  }

  /// The nearest [ListScope].
  static ListScope of(BuildContext context) {
    final scope = maybeOf(context);
    assert(scope != null, 'ListItem used outside MList');
    return scope!;
  }

  @override
  bool updateShouldNotify(ListScope oldWidget) {
    return type != oldWidget.type ||
        center != oldWidget.center ||
        icon != oldWidget.icon ||
        spacing != oldWidget.spacing ||
        size != oldWidget.size ||
        withPadding != oldWidget.withPadding;
  }
}

/// Zero-based index of a [ListItem] inside [MList].
class ListItemIndex extends InheritedWidget {
  /// Creates a list-item index.
  const ListItemIndex({
    required this.index,
    required super.child,
    super.key,
  });

  /// Zero-based index among list children.
  final int index;

  /// The nearest [ListItemIndex], or null.
  static ListItemIndex? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ListItemIndex>();
  }

  @override
  bool updateShouldNotify(ListItemIndex oldWidget) {
    return index != oldWidget.index;
  }
}

/// Chrome flags published by [MTable] for rows and cells.
class TableScope extends InheritedWidget {
  /// Creates a table scope.
  const TableScope({
    required this.withColumnBorders,
    required this.withRowBorders,
    required this.striped,
    required this.highlightOnHover,
    required this.captionSide,
    required this.stickyHeader,
    required this.horizontalSpacing,
    required this.verticalSpacing,
    required this.borderColor,
    required this.stripedColor,
    required this.hoverColor,
    required super.child,
    super.key,
  });

  /// Borders between columns.
  final bool withColumnBorders;

  /// Borders between rows.
  final bool withRowBorders;

  /// Which rows are striped; `null` is off.
  final TableStriped? striped;

  /// Whether rows highlight on hover.
  final bool highlightOnHover;

  /// Caption placement.
  final TableCaptionSide captionSide;

  /// Whether [TableThead] stays at the top while scrolling.
  final bool stickyHeader;

  /// Cell padding on the inline axis.
  final double horizontalSpacing;

  /// Cell padding on the block axis.
  final double verticalSpacing;

  /// Border color.
  final Color borderColor;

  /// Striped-row fill.
  final Color stripedColor;

  /// Hover-row fill.
  final Color hoverColor;

  /// The nearest [TableScope], or null.
  static TableScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TableScope>();
  }

  /// The nearest [TableScope].
  static TableScope of(BuildContext context) {
    final scope = maybeOf(context);
    assert(scope != null, 'Table parts used outside MTable');
    return scope!;
  }

  @override
  bool updateShouldNotify(TableScope oldWidget) {
    return withColumnBorders != oldWidget.withColumnBorders ||
        withRowBorders != oldWidget.withRowBorders ||
        striped != oldWidget.striped ||
        highlightOnHover != oldWidget.highlightOnHover ||
        captionSide != oldWidget.captionSide ||
        stickyHeader != oldWidget.stickyHeader ||
        horizontalSpacing != oldWidget.horizontalSpacing ||
        verticalSpacing != oldWidget.verticalSpacing ||
        borderColor != oldWidget.borderColor ||
        stripedColor != oldWidget.stripedColor ||
        hoverColor != oldWidget.hoverColor;
  }
}

/// Zero-based row index inside [TableTbody].
class TableRowIndex extends InheritedWidget {
  /// Creates a table-row index.
  const TableRowIndex({
    required this.index,
    required this.isFirst,
    required this.isLast,
    required super.child,
    super.key,
  });

  /// Zero-based index among body rows.
  final int index;

  /// Whether this is the first row in its section.
  final bool isFirst;

  /// Whether this is the last row in its section.
  final bool isLast;

  /// The nearest [TableRowIndex], or null.
  static TableRowIndex? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TableRowIndex>();
  }

  @override
  bool updateShouldNotify(TableRowIndex oldWidget) {
    return index != oldWidget.index ||
        isFirst != oldWidget.isFirst ||
        isLast != oldWidget.isLast;
  }
}

/// Cell index inside a [TableTr], used for column borders.
class TableCellIndex extends InheritedWidget {
  /// Creates a table-cell index.
  const TableCellIndex({
    required this.index,
    required this.isFirst,
    required this.isLast,
    required super.child,
    super.key,
  });

  /// Zero-based index among cells in the row.
  final int index;

  /// Whether this is the first cell.
  final bool isFirst;

  /// Whether this is the last cell.
  final bool isLast;

  /// The nearest [TableCellIndex], or null.
  static TableCellIndex? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TableCellIndex>();
  }

  @override
  bool updateShouldNotify(TableCellIndex oldWidget) {
    return index != oldWidget.index ||
        isFirst != oldWidget.isFirst ||
        isLast != oldWidget.isLast;
  }
}

/// Styles published by [Typography] / [TypographyStylesProvider] for
/// descendant [MText] and [MTitle].
class TypographyScope extends InheritedWidget {
  /// Creates a typography scope.
  const TypographyScope({
    required this.textStyle,
    required super.child,
    super.key,
  });

  /// Body text style applied to descendant [MText] when it does not
  /// set `inherit: true`.
  final TextStyle textStyle;

  /// The nearest [TypographyScope], or null.
  static TypographyScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TypographyScope>();
  }

  @override
  bool updateShouldNotify(TypographyScope oldWidget) {
    return textStyle != oldWidget.textStyle;
  }
}
