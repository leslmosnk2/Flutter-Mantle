import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [SplitterDelegate]: resizable panes with drag handles.
class BasicSplitterDelegate extends SplitterDelegate {
  /// Creates a baseline splitter delegate.
  const BasicSplitterDelegate();

  /// Key on each resize handle; index is appended.
  static const Key handleKey = ValueKey<String>('mantle.splitter.handle');

  @override
  Widget root(SplitterContext context) {
    return _BasicSplitter(splitter: context);
  }
}

class _BasicSplitter extends StatefulWidget {
  const _BasicSplitter({required this.splitter});

  final SplitterContext splitter;

  @override
  State<_BasicSplitter> createState() => _BasicSplitterState();
}

class _BasicSplitterState extends State<_BasicSplitter> {
  List<double>? _sizes;

  List<SplitterPane> get _panes {
    return widget.splitter.children.whereType<SplitterPane>().toList();
  }

  List<double> _effectiveSizes(List<SplitterPane> panes) {
    if (widget.splitter.sizes != null &&
        widget.splitter.sizes!.length == panes.length) {
      return List<double>.from(widget.splitter.sizes!);
    }
    if (_sizes != null && _sizes!.length == panes.length) {
      return List<double>.from(_sizes!);
    }
    return [
      for (final pane in panes) pane.defaultSize ?? 50,
    ];
  }

  void _commit(List<double> next) {
    setState(() => _sizes = next);
    widget.splitter.onSizeChange?.call(List<double>.from(next));
  }

  @override
  Widget build(BuildContext context) {
    final panes = _panes;
    if (panes.length < 2) {
      return panes.isEmpty ? const SizedBox.shrink() : panes.first;
    }

    return LayoutBuilder(
      builder: (_, constraints) {
        final horizontal = widget.splitter.orientation == Axis.horizontal;
        final total = horizontal ? constraints.maxWidth : constraints.maxHeight;
        final handleExtent = widget.splitter.lineSize.clamp(2.0, 64.0);
        final available = (total - handleExtent * (panes.length - 1)).clamp(
          0.0,
          double.infinity,
        );
        final sizes = _effectiveSizes(panes);
        final fractions = _fractions(sizes, panes, available);

        final children = <Widget>[];
        for (var i = 0; i < panes.length; i++) {
          if (i > 0) {
            children.add(
              _SplitterHandle(
                key: ValueKey<String>('${BasicSplitterDelegate.handleKey}-$i'),
                horizontal: horizontal,
                thickness: handleExtent,
                withHandle: widget.splitter.withHandle,
                onDrag: (delta) => _onDrag(
                  i - 1,
                  delta,
                  available,
                  panes,
                ),
              ),
            );
          }
          children.add(
            Flexible(
              flex: (fractions[i] * 1000).round().clamp(1, 100000),
              child: panes[i],
            ),
          );
        }

        if (horizontal) {
          return Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: children,
          );
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: children,
        );
      },
    );
  }

  List<double> _fractions(
    List<double> sizes,
    List<SplitterPane> panes,
    double available,
  ) {
    final values = <double>[];
    for (var i = 0; i < sizes.length; i++) {
      final raw = sizes[i];
      values.add(raw <= 100 ? raw / 100 : raw / available);
    }
    final sum = values.fold<double>(0, (a, b) => a + b);
    if (sum <= 0) {
      return List<double>.filled(values.length, 1 / values.length);
    }
    return [for (final value in values) value / sum];
  }

  void _onDrag(
    int handle,
    double delta,
    double available,
    List<SplitterPane> panes,
  ) {
    if (available <= 0) {
      return;
    }
    final sizes = _effectiveSizes(panes);
    final left = panes[handle];
    final right = panes[handle + 1];
    var leftPx =
        (sizes[handle] <= 100
            ? sizes[handle] / 100
            : sizes[handle] / available) *
        available;
    var rightPx =
        (sizes[handle + 1] <= 100
            ? sizes[handle + 1] / 100
            : sizes[handle + 1] / available) *
        available;
    leftPx += delta;
    rightPx -= delta;

    final leftMin = _minPx(left, available);
    final rightMin = _minPx(right, available);
    final leftMax = _maxPx(left, available, leftMin);
    final rightMax = _maxPx(right, available, rightMin);

    if (left.collapsible == true && leftPx < leftMin) {
      rightPx += leftPx;
      leftPx = 0;
    }
    if (right.collapsible == true && rightPx < rightMin) {
      leftPx += rightPx;
      rightPx = 0;
    }

    leftPx = leftPx.clamp(left.collapsible == true ? 0 : leftMin, leftMax);
    rightPx = rightPx.clamp(right.collapsible == true ? 0 : rightMin, rightMax);

    final next = List<double>.from(sizes);
    next[handle] = available == 0 ? 0 : leftPx / available * 100;
    next[handle + 1] = available == 0 ? 0 : rightPx / available * 100;
    _commit(next);
  }

  double _minPx(SplitterPane pane, double available) {
    final min = pane.min;
    if (min == null) {
      return 0;
    }
    return min <= 100 ? available * min / 100 : min;
  }

  double _maxPx(SplitterPane pane, double available, double minPx) {
    final max = pane.max;
    if (max == null) {
      return available;
    }
    final value = max <= 100 ? available * max / 100 : max;
    return value < minPx ? minPx : value;
  }
}

class _SplitterHandle extends StatelessWidget {
  const _SplitterHandle({
    required this.horizontal,
    required this.thickness,
    required this.withHandle,
    required this.onDrag,
    super.key,
  });

  final bool horizontal;
  final double thickness;
  final bool withHandle;
  final ValueChanged<double> onDrag;

  @override
  Widget build(BuildContext context) {
    final theme = MantleTheme.of(context);
    final scheme = MantleProvider.colorSchemeOf(context);
    final color = scheme == MantleColorScheme.dark
        ? theme.colors['dark'][4]
        : theme.colors['gray'][3];

    return MouseRegion(
      cursor: horizontal
          ? SystemMouseCursors.resizeColumn
          : SystemMouseCursors.resizeRow,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onHorizontalDragUpdate: horizontal
            ? (details) => onDrag(details.delta.dx)
            : null,
        onVerticalDragUpdate: horizontal
            ? null
            : (details) => onDrag(details.delta.dy),
        child: SizedBox(
          width: horizontal ? thickness.clamp(8, 24) : null,
          height: horizontal ? null : thickness.clamp(8, 24),
          child: Center(
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(1),
              ),
              child: SizedBox(
                width: horizontal
                    ? thickness
                    : (withHandle ? 24 : double.infinity),
                height: horizontal
                    ? (withHandle ? 24 : double.infinity)
                    : thickness,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Baseline [SplitterPaneDelegate]: pane body.
class BasicSplitterPaneDelegate extends SplitterPaneDelegate {
  /// Creates a baseline splitter-pane delegate.
  const BasicSplitterPaneDelegate();

  @override
  Widget root(SplitterPaneContext context) {
    return ClipRect(child: context.child);
  }
}
