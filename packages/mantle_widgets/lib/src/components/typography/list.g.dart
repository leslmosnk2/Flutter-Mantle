// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [MList].
enum MListVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MList].
@immutable
class MListStyle {
  /// Creates a [MListStyle].
  const MListStyle();

  /// Returns a copy of this [MListStyle] with selected fields replaced.
  MListStyle copyWith() => this;

  /// Merges [other] over this [MListStyle]; null fields keep this value.
  MListStyle mergeWith(MListStyle? other) => this;
}

/// Resolved interaction state for [MList].
@immutable
class MListState {
  /// Creates a [MListState].
  const MListState();
}

/// Values passed to [MListDelegate] slots during build.
@immutable
class MListContext {
  /// Creates a [MListContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MListStyle style;

  /// Resolved interaction state for this build.
  final MListState state;

  /// The visual variant selected by the constructor.
  final MListVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The type.
  final ListType type;

  /// Whether to include default padding.
  final bool withPadding;

  /// Size token.
  final String size;

  /// Leading or decorative icon.
  final Widget? icon;

  /// Spacing token between items.
  final String? spacing;

  /// Whether to center content.
  final bool center;
}

/// Builder for the root slot.
class MListRoot {
  /// Creates a [MListRoot] from a builder function.
  const MListRoot(this._build);

  final Widget Function(MListContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MListContext context) => _build(context);
}

/// Theme-owned composition slots for [MList].
abstract class MListDelegate extends ComponentDelegate {
  /// Creates a [MListDelegate].
  const MListDelegate();

  /// Builds the composition root.
  Widget root(MListContext context);
}

/// A [MList] widget resolved through [MListDelegate].
class MList extends StatelessWidget {
  /// Creates a [MList].
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

  /// The visual variant selected by the constructor.
  final MListVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The type.
  final ListType? type;

  /// Whether to include default padding.
  final bool? withPadding;

  /// Size token.
  final String? size;

  /// Leading or decorative icon.
  final Widget? icon;

  /// Spacing token between items.
  final String? spacing;

  /// Whether to center content.
  final bool? center;

  /// Style overrides merged over theme defaults.
  final MListStyle? style;

  /// Resolves properties and builds via [MListDelegate].
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

/// Visual variants of [ListItem].
enum ListItemVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [ListItem].
@immutable
class ListItemStyle {
  /// Creates a [ListItemStyle].
  const ListItemStyle();

  /// Returns a copy of this [ListItemStyle] with selected fields replaced.
  ListItemStyle copyWith() => this;

  /// Merges [other] over this [ListItemStyle]; null fields keep this value.
  ListItemStyle mergeWith(ListItemStyle? other) => this;
}

/// Resolved interaction state for [ListItem].
@immutable
class ListItemState {
  /// Creates a [ListItemState].
  const ListItemState();
}

/// Values passed to [ListItemDelegate] slots during build.
@immutable
class ListItemContext {
  /// Creates a [ListItemContext].
  const ListItemContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.icon,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ListItemStyle style;

  /// Resolved interaction state for this build.
  final ListItemState state;

  /// The visual variant selected by the constructor.
  final ListItemVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Leading or decorative icon.
  final Widget? icon;
}

/// Builder for the root slot.
class ListItemRoot {
  /// Creates a [ListItemRoot] from a builder function.
  const ListItemRoot(this._build);

  final Widget Function(ListItemContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ListItemContext context) => _build(context);
}

/// Theme-owned composition slots for [ListItem].
abstract class ListItemDelegate extends ComponentDelegate {
  /// Creates a [ListItemDelegate].
  const ListItemDelegate();

  /// Builds the composition root.
  Widget root(ListItemContext context);
}

/// A [ListItem] widget resolved through [ListItemDelegate].
class ListItem extends StatelessWidget {
  /// Creates a [ListItem].
  const ListItem({super.key, required this.child, this.icon, this.style})
    : variant = ListItemVariant.defaults;

  /// The visual variant selected by the constructor.
  final ListItemVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Leading or decorative icon.
  final Widget? icon;

  /// Style overrides merged over theme defaults.
  final ListItemStyle? style;

  /// Resolves properties and builds via [ListItemDelegate].
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
