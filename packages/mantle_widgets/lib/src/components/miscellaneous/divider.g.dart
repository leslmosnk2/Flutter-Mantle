// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'divider.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum DividerVariant { defaults }

@immutable
class DividerStyle {
  const DividerStyle();

  DividerStyle copyWith() => this;

  DividerStyle mergeWith(DividerStyle? other) => this;
}

@immutable
class DividerState {
  const DividerState();
}

@immutable
class DividerContext {
  const DividerContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.orientation,
    this.label,
    required this.labelPosition,
    required this.size,
    this.color,
    required this.lineVariant,
  });

  final BuildContext context;
  final DividerStyle style;
  final DividerState state;
  final DividerVariant variant;
  final Axis orientation;
  final Widget? label;
  final DividerLabelPosition labelPosition;
  final String size;
  final String? color;
  final DividerLineVariant lineVariant;
}

class DividerRoot {
  const DividerRoot(this._build);

  final Widget Function(DividerContext context) _build;

  Widget call(DividerContext context) => _build(context);
}

abstract class DividerDelegate extends ComponentDelegate {
  const DividerDelegate();

  Widget root(DividerContext context);
}

class Divider extends StatelessWidget {
  const Divider({
    super.key,
    this.orientation,
    this.label,
    this.labelPosition,
    this.size,
    this.color,
    this.lineVariant,
    this.style,
  }) : variant = DividerVariant.defaults;

  final DividerVariant variant;
  final Axis? orientation;
  final Widget? label;
  final DividerLabelPosition? labelPosition;
  final String? size;
  final String? color;
  final DividerLineVariant? lineVariant;
  final DividerStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedOrientation = orientation ?? Axis.horizontal;
    final resolvedLabel = label;
    final resolvedLabelPosition = labelPosition ?? DividerLabelPosition.center;
    final resolvedSize = size ?? 'xs';
    final resolvedColor = color;
    final resolvedLineVariant = lineVariant ?? DividerLineVariant.solid;

    const fromProps = DividerStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = DividerState();
    final dividerContext = DividerContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      orientation: resolvedOrientation,
      label: resolvedLabel,
      labelPosition: resolvedLabelPosition,
      size: resolvedSize,
      color: resolvedColor,
      lineVariant: resolvedLineVariant,
    );
    final delegate = MantleTheme.of(context).delegate<DividerDelegate>();
    return delegate.root(dividerContext);
  }
}
