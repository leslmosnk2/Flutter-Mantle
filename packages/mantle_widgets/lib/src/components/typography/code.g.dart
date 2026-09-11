// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'code.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Code].
enum CodeVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Code].
@immutable
class CodeStyle {
  /// Creates a [CodeStyle].
  const CodeStyle();

  /// Returns a copy of this [CodeStyle] with selected fields replaced.
  CodeStyle copyWith() => this;

  /// Merges [other] over this [CodeStyle]; null fields keep this value.
  CodeStyle mergeWith(CodeStyle? other) => this;
}

/// Resolved interaction state for [Code].
@immutable
class CodeState {
  /// Creates a [CodeState].
  const CodeState();
}

/// Values passed to [CodeDelegate] slots during build.
@immutable
class CodeContext {
  /// Creates a [CodeContext].
  const CodeContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.block,
    this.color,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final CodeStyle style;

  /// Resolved interaction state for this build.
  final CodeState state;

  /// The visual variant selected by the constructor.
  final CodeVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether to render as a block instead of inline.
  final bool block;

  /// Foreground or accent color.
  final String? color;
}

/// Builder for the root slot.
class CodeRoot {
  /// Creates a [CodeRoot] from a builder function.
  const CodeRoot(this._build);

  final Widget Function(CodeContext context) _build;

  /// Invokes this slot with [context].
  Widget call(CodeContext context) => _build(context);
}

/// Theme-owned composition slots for [Code].
abstract class CodeDelegate extends ComponentDelegate {
  /// Creates a [CodeDelegate].
  const CodeDelegate();

  /// Builds the composition root.
  Widget root(CodeContext context);
}

/// A [Code] widget resolved through [CodeDelegate].
class Code extends StatelessWidget {
  /// Creates a [Code].
  const Code({
    super.key,
    required this.child,
    this.block,
    this.color,
    this.style,
  }) : variant = CodeVariant.defaults;

  /// The visual variant selected by the constructor.
  final CodeVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Whether to render as a block instead of inline.
  final bool? block;

  /// Foreground or accent color.
  final String? color;

  /// Style overrides merged over theme defaults.
  final CodeStyle? style;

  /// Resolves properties and builds via [CodeDelegate].
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
