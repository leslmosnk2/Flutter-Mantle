// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'button_group.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [ButtonGroup].
enum ButtonGroupVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [ButtonGroup].
@immutable
class ButtonGroupStyle {
  /// Creates a [ButtonGroupStyle].
  const ButtonGroupStyle();

  /// Returns a copy of this [ButtonGroupStyle] with selected fields replaced.
  ButtonGroupStyle copyWith() => this;

  /// Merges [other] over this [ButtonGroupStyle]; null fields keep this value.
  ButtonGroupStyle mergeWith(ButtonGroupStyle? other) => this;
}

/// Resolved interaction state for [ButtonGroup].
@immutable
class ButtonGroupState {
  /// Creates a [ButtonGroupState].
  const ButtonGroupState();
}

/// Values passed to [ButtonGroupDelegate] slots during build.
@immutable
class ButtonGroupContext {
  /// Creates a [ButtonGroupContext].
  const ButtonGroupContext({
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
  final ButtonGroupStyle style;

  /// Resolved interaction state for this build.
  final ButtonGroupState state;

  /// The visual variant selected by the constructor.
  final ButtonGroupVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The orientation.
  final Axis orientation;

  /// The border width.
  final double borderWidth;
}

/// Builder for the root slot.
class ButtonGroupRoot {
  /// Creates a [ButtonGroupRoot] from a builder function.
  const ButtonGroupRoot(this._build);

  final Widget Function(ButtonGroupContext context) _build;

  /// Invokes this slot with [context].
  Widget call(ButtonGroupContext context) => _build(context);
}

/// Theme-owned composition slots for [ButtonGroup].
abstract class ButtonGroupDelegate extends ComponentDelegate {
  /// Creates a [ButtonGroupDelegate].
  const ButtonGroupDelegate();

  /// Builds the composition root.
  Widget root(ButtonGroupContext context);
}

/// A [ButtonGroup] widget resolved through [ButtonGroupDelegate].
class ButtonGroup extends StatelessWidget {
  /// Creates a [ButtonGroup].
  const ButtonGroup({
    super.key,
    required this.children,
    this.orientation,
    this.borderWidth,
    this.style,
  }) : variant = ButtonGroupVariant.defaults;

  /// The visual variant selected by the constructor.
  final ButtonGroupVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The orientation.
  final Axis? orientation;

  /// The border width.
  final double? borderWidth;

  /// Style overrides merged over theme defaults.
  final ButtonGroupStyle? style;

  /// Resolves properties and builds via [ButtonGroupDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedOrientation = orientation ?? Axis.horizontal;
    final resolvedBorderWidth = borderWidth ?? 1;

    const fromProps = ButtonGroupStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = ButtonGroupState();
    final buttonGroupContext = ButtonGroupContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      orientation: resolvedOrientation,
      borderWidth: resolvedBorderWidth,
    );
    final delegate = MantleTheme.of(context).delegate<ButtonGroupDelegate>();
    return delegate.root(buttonGroupContext);
  }
}
