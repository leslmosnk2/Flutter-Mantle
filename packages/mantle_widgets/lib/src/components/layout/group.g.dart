// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum GroupVariant { defaults }

@immutable
class GroupStyle {
  const GroupStyle();

  GroupStyle copyWith() => this;

  GroupStyle mergeWith(GroupStyle? other) => this;
}

@immutable
class GroupState {
  const GroupState();
}

@immutable
class GroupContext {
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

  final BuildContext context;
  final GroupStyle style;
  final GroupState state;
  final GroupVariant variant;
  final List<Widget> children;
  final String gap;
  final CrossAxisAlignment align;
  final MainAxisAlignment justify;
  final bool wrap;
  final bool grow;
  final bool preventGrowOverflow;
}

class GroupRoot {
  const GroupRoot(this._build);

  final Widget Function(GroupContext context) _build;

  Widget call(GroupContext context) => _build(context);
}

abstract class GroupDelegate extends ComponentDelegate {
  const GroupDelegate();

  Widget root(GroupContext context);
}

class Group extends StatelessWidget {
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

  final GroupVariant variant;
  final List<Widget> children;
  final String? gap;
  final CrossAxisAlignment? align;
  final MainAxisAlignment? justify;
  final bool? wrap;
  final bool? grow;
  final bool? preventGrowOverflow;
  final GroupStyle? style;

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
