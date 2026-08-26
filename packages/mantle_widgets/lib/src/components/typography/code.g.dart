// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum CodeVariant { defaults }

@immutable
class CodeStyle {
  const CodeStyle();

  CodeStyle copyWith() => this;

  CodeStyle mergeWith(CodeStyle? other) => this;
}

@immutable
class CodeState {
  const CodeState();
}

@immutable
class CodeContext {
  const CodeContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.block,
    this.color,
  });

  final BuildContext context;
  final CodeStyle style;
  final CodeState state;
  final CodeVariant variant;
  final Widget child;
  final bool block;
  final String? color;
}

class CodeRoot {
  const CodeRoot(this._build);

  final Widget Function(CodeContext context) _build;

  Widget call(CodeContext context) => _build(context);
}

abstract class CodeDelegate extends ComponentDelegate {
  const CodeDelegate();

  Widget root(CodeContext context);
}

class Code extends StatelessWidget {
  const Code({
    super.key,
    required this.child,
    this.block,
    this.color,
    this.style,
  }) : variant = CodeVariant.defaults;

  final CodeVariant variant;
  final Widget child;
  final bool? block;
  final String? color;
  final CodeStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedBlock = block ?? false;
    final resolvedColor = color;

    const fromProps = CodeStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = CodeState();
    final codeContext = CodeContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      block: resolvedBlock,
      color: resolvedColor,
    );
    final delegate = MantleTheme.of(context).delegate<CodeDelegate>();
    return delegate.root(codeContext);
  }
}
