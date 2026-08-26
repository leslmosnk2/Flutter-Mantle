import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [GridDelegate]: packs [GridCol] children into rows.
class BasicGridDelegate extends GridDelegate {
  /// Creates a baseline grid delegate.
  const BasicGridDelegate();

  @override
  Widget root(GridContext context) {
    final theme = MantleTheme.of(context.context);
    final gutter = resolveSpacing(theme, context.gutter);
    return GridScope(
      columns: context.columns,
      gutter: gutter,
      grow: context.grow,
      justify: context.justify,
      align: context.align,
      child: LayoutBuilder(
        builder: (_, constraints) {
          return _GridBody(
            gridContext: context,
            gutter: gutter,
            maxWidth: constraints.maxWidth.isFinite ? constraints.maxWidth : 0,
            boundedHeight: constraints.maxHeight.isFinite,
          );
        },
      ),
    );
  }
}

class _GridBody extends StatelessWidget {
  const _GridBody({
    required this.gridContext,
    required this.gutter,
    required this.maxWidth,
    required this.boundedHeight,
  });

  final GridContext gridContext;
  final double gutter;
  final double maxWidth;
  final bool boundedHeight;

  @override
  Widget build(BuildContext context) {
    final cells =
        [
          for (final child in gridContext.children)
            if (child is GridCol) child else GridCol(child: child),
        ]..sort((a, b) {
          final ao = a.order ?? 0;
          final bo = b.order ?? 0;
          return ao.compareTo(bo);
        });

    final rows = <List<GridCol>>[];
    var used = 0;
    var current = <GridCol>[];
    for (final cell in cells) {
      final span = _spanOf(cell, context);
      final offset = cell.offset ?? 0;
      final take = offset + (cell.spanFit == null ? span : 0);
      if (current.isNotEmpty && used + take > gridContext.columns) {
        rows.add(current);
        current = [];
        used = 0;
      }
      current.add(cell);
      used += take == 0 ? 1 : take;
      if (used >= gridContext.columns) {
        rows.add(current);
        current = [];
        used = 0;
      }
    }
    if (current.isNotEmpty) {
      rows.add(current);
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        for (var i = 0; i < rows.length; i++) ...[
          if (i > 0) SizedBox(height: gutter),
          _GridRow(
            cells: rows[i],
            columns: gridContext.columns,
            gutter: gutter,
            grow: gridContext.grow && i == rows.length - 1,
            justify: gridContext.justify,
            align: boundedHeight ? gridContext.align : CrossAxisAlignment.start,
            maxWidth: maxWidth,
          ),
        ],
      ],
    );
  }

  int _spanOf(GridCol cell, BuildContext context) {
    return cell.responsiveSpan?.resolveOf(context) ?? cell.span ?? 12;
  }
}

class _GridRow extends StatelessWidget {
  const _GridRow({
    required this.cells,
    required this.columns,
    required this.gutter,
    required this.grow,
    required this.justify,
    required this.align,
    required this.maxWidth,
  });

  final List<GridCol> cells;
  final int columns;
  final double gutter;
  final bool grow;
  final MainAxisAlignment justify;
  final CrossAxisAlignment align;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    final unit = columns == 0
        ? 0.0
        : (maxWidth - gutter * (columns - 1).clamp(0, columns)) / columns;

    final children = <Widget>[];
    for (var i = 0; i < cells.length; i++) {
      final cell = cells[i];
      final offset = cell.offset ?? 0;
      if (offset > 0) {
        children.add(
          SizedBox(
            width: unit * offset + gutter * (offset - 1).clamp(0, offset),
          ),
        );
      }
      if (i > 0 && offset == 0) {
        children.add(SizedBox(width: gutter));
      }

      final span = cell.responsiveSpan?.resolveOf(context) ?? cell.span ?? 12;
      if (cell.spanFit == GridColFit.auto || grow) {
        children.add(Expanded(child: cell));
      } else if (cell.spanFit == GridColFit.content) {
        children.add(cell);
      } else {
        final width = unit * span + gutter * (span - 1).clamp(0, span);
        children.add(SizedBox(width: width, child: cell));
      }
    }

    return Row(
      mainAxisAlignment: justify,
      crossAxisAlignment: align == CrossAxisAlignment.stretch
          ? CrossAxisAlignment.start
          : align,
      children: children,
    );
  }
}

/// Baseline [GridColDelegate]: the cell body (sizing is applied by [Grid]).
class BasicGridColDelegate extends GridColDelegate {
  /// Creates a baseline grid-col delegate.
  const BasicGridColDelegate();

  @override
  Widget root(GridColContext context) => context.child;
}
