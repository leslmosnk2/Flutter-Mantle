// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum MListVariant { defaults }

@immutable
class MListStyle {
  const MListStyle();

  MListStyle copyWith() => this;

  MListStyle mergeWith(MListStyle? other) => this;
}

@immutable
class MListState {
  const MListState();
}

@immutable
class MListContext {
  const MListContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.type,
    required this.withPadding,
    required this.size,
    this.icon,
    this.spacing,
    required this.center,
  });

  final BuildContext context;
  final MListStyle style;
  final MListState state;
  final MListVariant variant;
  final List<Widget> children;
  final ListType type;
  final bool withPadding;
  final String size;
  final Widget? icon;
  final String? spacing;
  final bool center;
}

class MListRoot {
  const MListRoot(this._build);

  final Widget Function(MListContext context) _build;

  Widget call(MListContext context) => _build(context);
}

abstract class MListDelegate extends ComponentDelegate {
  const MListDelegate();

  Widget root(MListContext context);
}

class MList extends StatelessWidget {
  const MList({
    super.key,
    required this.children,
    this.type,
    this.withPadding,
    this.size,
    this.icon,
    this.spacing,
    this.center,
    this.style,
  }) : variant = MListVariant.defaults;

  final MListVariant variant;
  final List<Widget> children;
  final ListType? type;
  final bool? withPadding;
  final String? size;
  final Widget? icon;
  final String? spacing;
  final bool? center;
  final MListStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedType = type ?? ListType.unordered;
    final resolvedWithPadding = withPadding ?? false;
    final resolvedSize = size ?? 'md';
    final resolvedIcon = icon;
    final resolvedSpacing = spacing;
    final resolvedCenter = center ?? false;

    const fromProps = MListStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MListState();
    final mListContext = MListContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      type: resolvedType,
      withPadding: resolvedWithPadding,
      size: resolvedSize,
      icon: resolvedIcon,
      spacing: resolvedSpacing,
      center: resolvedCenter,
    );
    final delegate = MantleTheme.of(context).delegate<MListDelegate>();
    return delegate.root(mListContext);
  }
}

enum ListItemVariant { defaults }

@immutable
class ListItemStyle {
  const ListItemStyle();

  ListItemStyle copyWith() => this;

  ListItemStyle mergeWith(ListItemStyle? other) => this;
}

@immutable
class ListItemState {
  const ListItemState();
}

@immutable
class ListItemContext {
  const ListItemContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.icon,
  });

  final BuildContext context;
  final ListItemStyle style;
  final ListItemState state;
  final ListItemVariant variant;
  final Widget child;
  final Widget? icon;
}

class ListItemRoot {
  const ListItemRoot(this._build);

  final Widget Function(ListItemContext context) _build;

  Widget call(ListItemContext context) => _build(context);
}

abstract class ListItemDelegate extends ComponentDelegate {
  const ListItemDelegate();

  Widget root(ListItemContext context);
}

class ListItem extends StatelessWidget {
  const ListItem({super.key, required this.child, this.icon, this.style})
    : variant = ListItemVariant.defaults;

  final ListItemVariant variant;
  final Widget child;
  final Widget? icon;
  final ListItemStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedIcon = icon;

    const fromProps = ListItemStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ListItemState();
    final listItemContext = ListItemContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      icon: resolvedIcon,
    );
    final delegate = MantleTheme.of(context).delegate<ListItemDelegate>();
    return delegate.root(listItemContext);
  }
}
