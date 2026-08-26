// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'copy_button.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum CopyButtonVariant { defaults }

@immutable
class CopyButtonStyle {
  const CopyButtonStyle();

  CopyButtonStyle copyWith() => this;

  CopyButtonStyle mergeWith(CopyButtonStyle? other) => this;
}

@immutable
class CopyButtonState {
  const CopyButtonState();
}

@immutable
class CopyButtonContext {
  const CopyButtonContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.value,
    required this.builder,
    required this.timeout,
    this.onCopy,
  });

  final BuildContext context;
  final CopyButtonStyle style;
  final CopyButtonState state;
  final CopyButtonVariant variant;
  final String value;
  final CopyButtonBuilder builder;
  final int timeout;
  final VoidCallback? onCopy;
}

class CopyButtonRoot {
  const CopyButtonRoot(this._build);

  final Widget Function(CopyButtonContext context) _build;

  Widget call(CopyButtonContext context) => _build(context);
}

abstract class CopyButtonDelegate extends ComponentDelegate {
  const CopyButtonDelegate();

  Widget root(CopyButtonContext context);
}

class CopyButton extends StatelessWidget {
  const CopyButton({
    super.key,
    required this.value,
    required this.builder,
    this.timeout,
    this.onCopy,
    this.style,
  }) : variant = CopyButtonVariant.defaults;

  final CopyButtonVariant variant;
  final String value;
  final CopyButtonBuilder builder;
  final int? timeout;
  final VoidCallback? onCopy;
  final CopyButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedBuilder = builder;
    final resolvedTimeout = timeout ?? 1000;
    final resolvedOnCopy = onCopy;

    const fromProps = CopyButtonStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = CopyButtonState();
    final copyButtonContext = CopyButtonContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      builder: resolvedBuilder,
      timeout: resolvedTimeout,
      onCopy: resolvedOnCopy,
    );
    final delegate = MantleTheme.of(context).delegate<CopyButtonDelegate>();
    return delegate.root(copyButtonContext);
  }
}
