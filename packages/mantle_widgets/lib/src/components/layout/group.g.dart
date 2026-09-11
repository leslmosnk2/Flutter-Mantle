// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Group].
enum GroupVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Group].
@immutable
class GroupStyle {
  /// Creates a [GroupStyle].
  const GroupStyle();

  /// Returns a copy of this [GroupStyle] with selected fields replaced.
  GroupStyle copyWith() => this;

  /// Merges [other] over this [GroupStyle]; null fields keep this value.
  GroupStyle mergeWith(GroupStyle? other) => this;
}

/// Resolved interaction state for [Group].
@immutable
class GroupState {
  /// Creates a [GroupState].
  const GroupState();
}

/// Values passed to [GroupDelegate] slots during build.
@immutable
class GroupContext {
  /// Creates a [GroupContext].
  const GroupContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.gap,
    required this.align,
    required this.justify,
    required this.wrap,
    required this.grow,
    required this.preventGrowOverflow,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final GroupStyle style;

  /// Resolved interaction state for this build.
  final GroupState state;

  /// The visual variant selected by the constructor.
  final GroupVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Spacing token between items.
  final String gap;

  /// Text alignment.
  final CrossAxisAlignment align;

  /// The justify.
  final MainAxisAlignment justify;

  /// Whether wrap.
  final bool wrap;

  /// Whether the control expands to fill available width.
  final bool grow;

  /// Whether prevent grow overflow.
  final bool preventGrowOverflow;
}

/// Builder for the root slot.
class GroupRoot {
  /// Creates a [GroupRoot] from a builder function.
  const GroupRoot(this._build);

  final Widget Function(GroupContext context) _build;

  /// Invokes this slot with [context].
  Widget call(GroupContext context) => _build(context);
}

/// Theme-owned composition slots for [Group].
abstract class GroupDelegate extends ComponentDelegate {
  /// Creates a [GroupDelegate].
  const GroupDelegate();

  /// Builds the composition root.
  Widget root(GroupContext context);
}

/// A [Group] widget resolved through [GroupDelegate].
class Group extends StatelessWidget {
  /// Creates a [Group].
  const Group({
    super.key,
    required this.children,
    this.gap,
    this.align,
    this.justify,
    this.wrap,
    this.grow,
    this.preventGrowOverflow,
    this.style,
  }) : variant = GroupVariant.defaults;

  /// The visual variant selected by the constructor.
  final GroupVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// Spacing token between items.
  final String? gap;

  /// Text alignment.
  final CrossAxisAlignment? align;

  /// The justify.
  final MainAxisAlignment? justify;

  /// Whether wrap.
  final bool? wrap;

  /// Whether the control expands to fill available width.
  final bool? grow;

  /// Whether prevent grow overflow.
  final bool? preventGrowOverflow;

  /// Style overrides merged over theme defaults.
  final GroupStyle? style;

  /// Resolves properties and builds via [GroupDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedGap = gap ?? 'md';
    final resolvedAlign = align ?? CrossAxisAlignment.center;
    final resolvedJustify = justify ?? MainAxisAlignment.start;
    final resolvedWrap = wrap ?? true;
    final resolvedGrow = grow ?? false;
    final resolvedPreventGrowOverflow = preventGrowOverflow ?? true;

    const fromProps = GroupStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = GroupState();
    final groupContext = GroupContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      gap: resolvedGap,
      align: resolvedAlign,
      justify: resolvedJustify,
      wrap: resolvedWrap,
      grow: resolvedGrow,
      preventGrowOverflow: resolvedPreventGrowOverflow,
    );
    final delegate = MantleTheme.of(context).delegate<GroupDelegate>();
    return delegate.root(groupContext);
  }
}
