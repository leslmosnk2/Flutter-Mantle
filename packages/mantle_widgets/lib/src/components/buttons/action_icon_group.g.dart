// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_icon_group.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum ActionIconGroupVariant { defaults }

@immutable
class ActionIconGroupStyle {
  const ActionIconGroupStyle();

  ActionIconGroupStyle copyWith() => this;

  ActionIconGroupStyle mergeWith(ActionIconGroupStyle? other) => this;
}

@immutable
class ActionIconGroupState {
  const ActionIconGroupState();
}

@immutable
class ActionIconGroupContext {
  const ActionIconGroupContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.orientation,
    required this.borderWidth,
  });

  final BuildContext context;
  final ActionIconGroupStyle style;
  final ActionIconGroupState state;
  final ActionIconGroupVariant variant;
  final List<Widget> children;
  final Axis orientation;
  final double borderWidth;
}

class ActionIconGroupRoot {
  const ActionIconGroupRoot(this._build);

  final Widget Function(ActionIconGroupContext context) _build;

  Widget call(ActionIconGroupContext context) => _build(context);
}

abstract class ActionIconGroupDelegate extends ComponentDelegate {
  const ActionIconGroupDelegate();

  Widget root(ActionIconGroupContext context);
}

class ActionIconGroup extends StatelessWidget {
  const ActionIconGroup({
    super.key,
    required this.children,
    this.orientation,
    this.borderWidth,
    this.style,
  }) : variant = ActionIconGroupVariant.defaults;

  final ActionIconGroupVariant variant;
  final List<Widget> children;
  final Axis? orientation;
  final double? borderWidth;
  final ActionIconGroupStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedOrientation = orientation ?? Axis.horizontal;
    final resolvedBorderWidth = borderWidth ?? 1;

    const fromProps = ActionIconGroupStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ActionIconGroupState();
    final actionIconGroupContext = ActionIconGroupContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      orientation: resolvedOrientation,
      borderWidth: resolvedBorderWidth,
    );
    final delegate = MantleTheme.of(
      context,
    ).delegate<ActionIconGroupDelegate>();
    return delegate.root(actionIconGroupContext);
  }
}
