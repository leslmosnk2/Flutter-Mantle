// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'button_group.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum ButtonGroupVariant { defaults }

@immutable
class ButtonGroupStyle {
  const ButtonGroupStyle();

  ButtonGroupStyle copyWith() => this;

  ButtonGroupStyle mergeWith(ButtonGroupStyle? other) => this;
}

@immutable
class ButtonGroupState {
  const ButtonGroupState();
}

@immutable
class ButtonGroupContext {
  const ButtonGroupContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.orientation,
    required this.borderWidth,
  });

  final BuildContext context;
  final ButtonGroupStyle style;
  final ButtonGroupState state;
  final ButtonGroupVariant variant;
  final List<Widget> children;
  final Axis orientation;
  final double borderWidth;
}

class ButtonGroupRoot {
  const ButtonGroupRoot(this._build);

  final Widget Function(ButtonGroupContext context) _build;

  Widget call(ButtonGroupContext context) => _build(context);
}

abstract class ButtonGroupDelegate extends ComponentDelegate {
  const ButtonGroupDelegate();

  Widget root(ButtonGroupContext context);
}

class ButtonGroup extends StatelessWidget {
  const ButtonGroup({
    super.key,
    required this.children,
    this.orientation,
    this.borderWidth,
    this.style,
  }) : variant = ButtonGroupVariant.defaults;

  final ButtonGroupVariant variant;
  final List<Widget> children;
  final Axis? orientation;
  final double? borderWidth;
  final ButtonGroupStyle? style;

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
