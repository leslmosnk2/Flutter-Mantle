// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'action_icon_group.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [ActionIconGroup].
enum ActionIconGroupVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [ActionIconGroup].
@immutable
class ActionIconGroupStyle {
  /// Creates an [ActionIconGroupStyle].
  const ActionIconGroupStyle();

  /// Returns a copy of this [ActionIconGroupStyle] with selected fields replaced.
  ActionIconGroupStyle copyWith() => this;

  /// Merges [other] over this [ActionIconGroupStyle]; null fields keep this value.
  ActionIconGroupStyle mergeWith(ActionIconGroupStyle? other) => this;
}

/// Resolved interaction state for [ActionIconGroup].
@immutable
class ActionIconGroupState {
  /// Creates an [ActionIconGroupState].
  const ActionIconGroupState();
}

/// Values passed to [ActionIconGroupDelegate] slots during build.
@immutable
class ActionIconGroupContext {
  /// Creates an [ActionIconGroupContext].
  const ActionIconGroupContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.orientation,
    required this.borderWidth,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final ActionIconGroupStyle style;

  /// Resolved interaction state for this build.
  final ActionIconGroupState state;

  /// The visual variant selected by the constructor.
  final ActionIconGroupVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The orientation.
  final Axis orientation;

  /// The border width.
  final double borderWidth;
}

/// Builder for the root slot.
class ActionIconGroupRoot {
  /// Creates an [ActionIconGroupRoot] from a builder function.
  const ActionIconGroupRoot(this._build);

  final Widget Function(ActionIconGroupContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ActionIconGroupContext context) => _build(context);
}

/// Theme-owned composition slots for [ActionIconGroup].
abstract class ActionIconGroupDelegate extends ComponentDelegate {
  /// Creates an [ActionIconGroupDelegate].
  const ActionIconGroupDelegate();

  /// Builds the composition root.
  Widget root(ActionIconGroupContext context);
}

/// An [ActionIconGroup] widget resolved through [ActionIconGroupDelegate].
class ActionIconGroup extends StatelessWidget {
  /// Creates an [ActionIconGroup].
  const ActionIconGroup({
    super.key,
    required this.children,
    this.orientation,
    this.borderWidth,
    this.style,
  }) : variant = ActionIconGroupVariant.defaults;

  /// The visual variant selected by the constructor.
  final ActionIconGroupVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The orientation.
  final Axis? orientation;

  /// The border width.
  final double? borderWidth;

  /// Style overrides merged over theme defaults.
  final ActionIconGroupStyle? style;

  /// Resolves properties and builds via [ActionIconGroupDelegate].
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
