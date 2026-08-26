import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_basic/src/widgets/typography/tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [MTableDelegate]: scope + column of sections.
class BasicMTableDelegate extends MTableDelegate {
  /// Creates a baseline table delegate.
  const BasicMTableDelegate();

  @override
  Widget root(MTableContext context) {
    final theme = MantleTheme.of(context.context);
    final dark = isDarkScheme(context.context);
    final border = context.borderColor == null
        ? (dark ? theme.colors['dark'][4] : theme.colors['gray'][3])
        : paletteColor(context.context, context.borderColor);
    final striped = context.stripedColor == null
        ? (dark ? theme.colors['dark'][6] : theme.colors['gray'][0])
        : paletteColor(context.context, context.stripedColor);
    final hover = context.highlightOnHoverColor == null
        ? (dark ? theme.colors['dark'][5] : theme.colors['gray'][1])
        : paletteColor(context.context, context.highlightOnHoverColor);

    final children = _resolveChildren(context);
    Widget? caption;
    final body = <Widget>[];
    for (final child in children) {
      if (child is TableCaption) {
        caption = child;
      } else {
        body.add(child);
      }
    }

    final column = Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (caption != null && context.captionSide == TableCaptionSide.top)
          caption,
        ...body,
        if (caption != null && context.captionSide == TableCaptionSide.bottom)
          caption,
      ],
    );

    return TableScope(
      withColumnBorders: context.withColumnBorders,
      withRowBorders: context.withRowBorders,
      striped: context.striped
          ? (context.stripedFrom ?? TableStriped.odd)
          : null,
      highlightOnHover: context.highlightOnHover,
      captionSide: context.captionSide,
      stickyHeader: context.stickyHeader,
      horizontalSpacing: resolveSpacing(theme, context.horizontalSpacing),
      verticalSpacing: resolveSpacing(theme, context.verticalSpacing),
      borderColor: border,
      stripedColor: striped,
      hoverColor: hover,
      child: DefaultTextStyle.merge(
        style: TextStyle(
          fontSize: fontSizeToken(theme, 'sm'),
          height: lineHeightToken(theme, 'md'),
          color: textColor(context.context),
          fontFeatures: context.tabularNums
              ? const [FontFeature.tabularFigures()]
              : null,
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            border: context.withTableBorder ? Border.all(color: border) : null,
          ),
          child: column,
        ),
      ),
    );
  }
}

List<Widget> _resolveChildren(MTableContext context) {
  final children = context.children;
  if (children != null && children.isNotEmpty) {
    return children;
  }
  final data = context.data;
  if (data == null) {
    return const [];
  }
  return [
    if (data.caption != null) TableCaption(child: data.caption!),
    if (data.head != null)
      TableThead(
        children: [
          TableTr(
            children: [
              for (final cell in data.head!) TableTh(child: cell),
            ],
          ),
        ],
      ),
    if (data.body != null)
      TableTbody(
        children: [
          for (final row in data.body!)
            TableTr(
              children: [
                for (final cell in row) TableTd(child: cell),
              ],
            ),
        ],
      ),
    if (data.foot != null)
      TableTfoot(
        children: [
          TableTr(
            children: [
              for (final cell in data.foot!) TableTh(child: cell),
            ],
          ),
        ],
      ),
  ];
}

/// Baseline [TableTheadDelegate]: header rows.
class BasicTableTheadDelegate extends TableTheadDelegate {
  /// Creates a baseline table-head delegate.
  const BasicTableTheadDelegate();

  @override
  Widget root(TableTheadContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: _indexedRows(context.children),
    );
  }
}

/// Baseline [TableTbodyDelegate]: indexed body rows for stripes.
class BasicTableTbodyDelegate extends TableTbodyDelegate {
  /// Creates a baseline table-body delegate.
  const BasicTableTbodyDelegate();

  @override
  Widget root(TableTbodyContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: _indexedRows(context.children),
    );
  }
}

/// Baseline [TableTfootDelegate]: footer rows.
class BasicTableTfootDelegate extends TableTfootDelegate {
  /// Creates a baseline table-foot delegate.
  const BasicTableTfootDelegate();

  @override
  Widget root(TableTfootContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: _indexedRows(context.children),
    );
  }
}

List<Widget> _indexedRows(List<Widget> children) {
  return [
    for (var i = 0; i < children.length; i++)
      TableRowIndex(
        index: i,
        isFirst: i == 0,
        isLast: i == children.length - 1,
        child: children[i],
      ),
  ];
}

/// Baseline [TableTrDelegate]: expanded cells with hover/stripe fills.
class BasicTableTrDelegate extends TableTrDelegate {
  /// Creates a baseline table-row delegate.
  const BasicTableTrDelegate();

  @override
  Widget root(TableTrContext context) {
    return _TableTrRoot(row: context);
  }
}

class _TableTrRoot extends StatefulWidget {
  const _TableTrRoot({required this.row});

  final TableTrContext row;

  @override
  State<_TableTrRoot> createState() => _TableTrRootState();
}

class _TableTrRootState extends State<_TableTrRoot> {
  var _hovered = false;

  @override
  Widget build(BuildContext context) {
    final scope = TableScope.of(context);
    final index = TableRowIndex.maybeOf(context);
    final striped =
        scope.striped != null &&
        index != null &&
        (scope.striped == TableStriped.odd
            ? index.index.isEven
            : index.index.isOdd);
    final hover = scope.highlightOnHover && _hovered;
    final background = hover
        ? scope.hoverColor
        : (striped ? scope.stripedColor : null);
    final cells = widget.row.children;

    Widget row = DecoratedBox(
      decoration: BoxDecoration(
        color: background,
        border: scope.withRowBorders && (index == null || !index.isLast)
            ? Border(bottom: BorderSide(color: scope.borderColor))
            : null,
      ),
      child: Row(
        children: [
          for (var i = 0; i < cells.length; i++)
            TableCellIndex(
              index: i,
              isFirst: i == 0,
              isLast: i == cells.length - 1,
              child: cells[i],
            ),
        ],
      ),
    );

    if (scope.highlightOnHover) {
      row = MouseRegion(
        onEnter: (_) => setState(() => _hovered = true),
        onExit: (_) => setState(() => _hovered = false),
        child: row,
      );
    }
    return row;
  }
}

/// Baseline [TableThDelegate]: padded header cell.
class BasicTableThDelegate extends TableThDelegate {
  /// Creates a baseline table-header-cell delegate.
  const BasicTableThDelegate();

  @override
  Widget root(TableThContext context) {
    return _tableCell(
      context.context,
      context.child,
      header: true,
    );
  }
}

/// Baseline [TableTdDelegate]: padded data cell.
class BasicTableTdDelegate extends TableTdDelegate {
  /// Creates a baseline table-data-cell delegate.
  const BasicTableTdDelegate();

  @override
  Widget root(TableTdContext context) {
    return _tableCell(
      context.context,
      context.child,
      header: false,
    );
  }
}

Widget _tableCell(
  BuildContext context,
  Widget child, {
  required bool header,
}) {
  final scope = TableScope.of(context);
  final cell = TableCellIndex.maybeOf(context);
  final showStart = scope.withColumnBorders && cell != null && !cell.isFirst;

  return Expanded(
    child: DecoratedBox(
      decoration: BoxDecoration(
        border: showStart
            ? BorderDirectional(
                start: BorderSide(color: scope.borderColor),
              )
            : null,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: scope.horizontalSpacing,
          vertical: scope.verticalSpacing,
        ),
        child: DefaultTextStyle.merge(
          style: TextStyle(
            fontWeight: header ? FontWeight.w600 : FontWeight.w400,
          ),
          child: child,
        ),
      ),
    ),
  );
}

/// Baseline [TableCaptionDelegate]: muted caption copy.
class BasicTableCaptionDelegate extends TableCaptionDelegate {
  /// Creates a baseline table-caption delegate.
  const BasicTableCaptionDelegate();

  @override
  Widget root(TableCaptionContext context) {
    final theme = MantleTheme.of(context.context);
    final scope = TableScope.maybeOf(context.context);
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: resolveSpacing(theme, 'xs'),
        horizontal: scope?.horizontalSpacing ?? resolveSpacing(theme, 'xs'),
      ),
      child: DefaultTextStyle.merge(
        style: TextStyle(
          fontSize: fontSizeToken(theme, 'sm'),
          color: textColor(context.context).withValues(alpha: 0.6),
        ),
        child: context.child,
      ),
    );
  }
}

/// Baseline [TableScrollContainerDelegate]: min-width scrollport.
class BasicTableScrollContainerDelegate extends TableScrollContainerDelegate {
  /// Creates a baseline table-scroll-container delegate.
  const BasicTableScrollContainerDelegate();

  @override
  Widget root(TableScrollContainerContext context) {
    final table = ConstrainedBox(
      constraints: BoxConstraints(minWidth: context.minWidth),
      child: context.child,
    );
    final horizontal = SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: table,
    );
    final maxHeight = context.maxHeight;
    if (maxHeight == null) {
      return horizontal;
    }
    return SizedBox(
      height: maxHeight,
      child: SingleChildScrollView(child: horizontal),
    );
  }
}
