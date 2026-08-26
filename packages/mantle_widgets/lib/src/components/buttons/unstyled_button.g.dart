// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unstyled_button.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum UnstyledButtonVariant { defaults }

@immutable
class UnstyledButtonStyle {
  const UnstyledButtonStyle();

  UnstyledButtonStyle copyWith() => this;

  UnstyledButtonStyle mergeWith(UnstyledButtonStyle? other) => this;
}

@immutable
class UnstyledButtonState {
  const UnstyledButtonState();
}

@immutable
class UnstyledButtonContext {
  const UnstyledButtonContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.onPressed,
    required this.disabled,
    this.semanticLabel,
  });

  final BuildContext context;
  final UnstyledButtonStyle style;
  final UnstyledButtonState state;
  final UnstyledButtonVariant variant;
  final Widget child;
  final VoidCallback onPressed;
  final bool disabled;
  final String? semanticLabel;
}

class UnstyledButtonRoot {
  const UnstyledButtonRoot(this._build);

  final Widget Function(UnstyledButtonContext context) _build;

  Widget call(UnstyledButtonContext context) => _build(context);
}

abstract class UnstyledButtonDelegate extends ComponentDelegate {
  const UnstyledButtonDelegate();

  Widget root(UnstyledButtonContext context);
}

class UnstyledButton extends StatelessWidget {
  const UnstyledButton({
    super.key,
    required this.child,
    required this.onPressed,
    this.disabled,
    this.semanticLabel,
    this.style,
  }) : variant = UnstyledButtonVariant.defaults;

  final UnstyledButtonVariant variant;
  final Widget child;
  final VoidCallback onPressed;
  final bool? disabled;
  final String? semanticLabel;
  final UnstyledButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedOnPressed = onPressed;
    final resolvedDisabled = disabled ?? false;
    final resolvedSemanticLabel = semanticLabel;

    const fromProps = UnstyledButtonStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = UnstyledButtonState();
    final unstyledButtonContext = UnstyledButtonContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      onPressed: resolvedOnPressed,
      disabled: resolvedDisabled,
      semanticLabel: resolvedSemanticLabel,
    );
    final delegate = MantleTheme.of(context).delegate<UnstyledButtonDelegate>();
    return delegate.root(unstyledButtonContext);
  }
}
