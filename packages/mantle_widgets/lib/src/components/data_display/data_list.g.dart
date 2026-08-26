// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_list.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum DataListVariant { defaults }

@immutable
class DataListStyle {
  const DataListStyle();

  DataListStyle copyWith() => this;

  DataListStyle mergeWith(DataListStyle? other) => this;
}

@immutable
class DataListState {
  const DataListState();
}

@immutable
class DataListContext {
  const DataListContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.size,
    required this.gap,
    required this.orientation,
    required this.withDivider,
    required this.labelWidth,
  });

  final BuildContext context;
  final DataListStyle style;
  final DataListState state;
  final DataListVariant variant;
  final List<Widget> children;
  final String size;
  final String gap;
  final DataListOrientation orientation;
  final bool withDivider;
  final double labelWidth;
}

class DataListRoot {
  const DataListRoot(this._build);

  final Widget Function(DataListContext context) _build;

  Widget call(DataListContext context) => _build(context);
}

abstract class DataListDelegate extends ComponentDelegate {
  const DataListDelegate();

  Widget root(DataListContext context);
}

class DataList extends StatelessWidget {
  const DataList({
    super.key,
    required this.children,
    this.size,
    this.gap,
    this.orientation,
    this.withDivider,
    this.labelWidth,
    this.style,
  }) : variant = DataListVariant.defaults;

  final DataListVariant variant;
  final List<Widget> children;
  final String? size;
  final String? gap;
  final DataListOrientation? orientation;
  final bool? withDivider;
  final double? labelWidth;
  final DataListStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedSize = size ?? 'sm';
    final resolvedGap = gap ?? 'sm';
    final resolvedOrientation = orientation ?? DataListOrientation.horizontal;
    final resolvedWithDivider = withDivider ?? false;
    final resolvedLabelWidth = labelWidth ?? 120;

    const fromProps = DataListStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = DataListState();
    final dataListContext = DataListContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      size: resolvedSize,
      gap: resolvedGap,
      orientation: resolvedOrientation,
      withDivider: resolvedWithDivider,
      labelWidth: resolvedLabelWidth,
    );
    final delegate = MantleTheme.of(context).delegate<DataListDelegate>();
    return delegate.root(dataListContext);
  }
}

enum DataListItemVariant { defaults }

@immutable
class DataListItemStyle {
  const DataListItemStyle();

  DataListItemStyle copyWith() => this;

  DataListItemStyle mergeWith(DataListItemStyle? other) => this;
}

@immutable
class DataListItemState {
  const DataListItemState();
}

@immutable
class DataListItemContext {
  const DataListItemContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
  });

  final BuildContext context;
  final DataListItemStyle style;
  final DataListItemState state;
  final DataListItemVariant variant;
  final List<Widget> children;
}

class DataListItemRoot {
  const DataListItemRoot(this._build);

  final Widget Function(DataListItemContext context) _build;

  Widget call(DataListItemContext context) => _build(context);
}

abstract class DataListItemDelegate extends ComponentDelegate {
  const DataListItemDelegate();

  Widget root(DataListItemContext context);
}

class DataListItem extends StatelessWidget {
  const DataListItem({super.key, required this.children, this.style})
    : variant = DataListItemVariant.defaults;

  final DataListItemVariant variant;
  final List<Widget> children;
  final DataListItemStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;

    const fromProps = DataListItemStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = DataListItemState();
    final dataListItemContext = DataListItemContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
    );
    final delegate = MantleTheme.of(context).delegate<DataListItemDelegate>();
    return delegate.root(dataListItemContext);
  }
}

enum DataListItemLabelVariant { defaults }

@immutable
class DataListItemLabelStyle {
  const DataListItemLabelStyle();

  DataListItemLabelStyle copyWith() => this;

  DataListItemLabelStyle mergeWith(DataListItemLabelStyle? other) => this;
}

@immutable
class DataListItemLabelState {
  const DataListItemLabelState();
}

@immutable
class DataListItemLabelContext {
  const DataListItemLabelContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  final BuildContext context;
  final DataListItemLabelStyle style;
  final DataListItemLabelState state;
  final DataListItemLabelVariant variant;
  final Widget child;
}

class DataListItemLabelRoot {
  const DataListItemLabelRoot(this._build);

  final Widget Function(DataListItemLabelContext context) _build;

  Widget call(DataListItemLabelContext context) => _build(context);
}

abstract class DataListItemLabelDelegate extends ComponentDelegate {
  const DataListItemLabelDelegate();

  Widget root(DataListItemLabelContext context);
}

class DataListItemLabel extends StatelessWidget {
  const DataListItemLabel({super.key, required this.child, this.style})
    : variant = DataListItemLabelVariant.defaults;

  final DataListItemLabelVariant variant;
  final Widget child;
  final DataListItemLabelStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = DataListItemLabelStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = DataListItemLabelState();
    final dataListItemLabelContext = DataListItemLabelContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<DataListItemLabelDelegate>();
    return delegate.root(dataListItemLabelContext);
  }
}

enum DataListItemValueVariant { defaults }

@immutable
class DataListItemValueStyle {
  const DataListItemValueStyle();

  DataListItemValueStyle copyWith() => this;

  DataListItemValueStyle mergeWith(DataListItemValueStyle? other) => this;
}

@immutable
class DataListItemValueState {
  const DataListItemValueState();
}

@immutable
class DataListItemValueContext {
  const DataListItemValueContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
  });

  final BuildContext context;
  final DataListItemValueStyle style;
  final DataListItemValueState state;
  final DataListItemValueVariant variant;
  final Widget child;
}

class DataListItemValueRoot {
  const DataListItemValueRoot(this._build);

  final Widget Function(DataListItemValueContext context) _build;

  Widget call(DataListItemValueContext context) => _build(context);
}

abstract class DataListItemValueDelegate extends ComponentDelegate {
  const DataListItemValueDelegate();

  Widget root(DataListItemValueContext context);
}

class DataListItemValue extends StatelessWidget {
  const DataListItemValue({super.key, required this.child, this.style})
    : variant = DataListItemValueVariant.defaults;

  final DataListItemValueVariant variant;
  final Widget child;
  final DataListItemValueStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;

    const fromProps = DataListItemValueStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = DataListItemValueState();
    final dataListItemValueContext = DataListItemValueContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<DataListItemValueDelegate>();
    return delegate.root(dataListItemValueContext);
  }
}
