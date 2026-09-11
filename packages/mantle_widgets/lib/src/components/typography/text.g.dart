// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [MText].
enum MTextVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MText].
@immutable
class MTextStyle {
  /// Creates a [MTextStyle].
  const MTextStyle();

  /// Returns a copy of this [MTextStyle] with selected fields replaced.
  MTextStyle copyWith() => this;

  /// Merges [other] over this [MTextStyle]; null fields keep this value.
  MTextStyle mergeWith(MTextStyle? other) => this;
}

/// Resolved interaction state for [MText].
@immutable
class MTextState {
  /// Creates a [MTextState].
  const MTextState();
}

/// Values passed to [MTextDelegate] slots during build.
@immutable
class MTextContext {
  /// Creates a [MTextContext].
  const MTextContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.size,
    this.fw,
    this.truncate,
    this.lineClamp,
    this.color,
    this.align,
    required this.inherit,
    required this.inline,
    required this.span,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MTextStyle style;

  /// Resolved interaction state for this build.
  final MTextState state;

  /// The visual variant selected by the constructor.
  final MTextVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Size token.
  final String size;

  /// Font weight.
  final FontWeight? fw;

  /// How overflowing text is truncated.
  final MTextTruncate? truncate;

  /// Maximum number of lines before clamping.
  final int? lineClamp;

  /// Foreground or accent color.
  final String? color;

  /// Text alignment.
  final TextAlign? align;

  /// Whether to inherit typography from the parent.
  final bool inherit;

  /// Whether to render inline.
  final bool inline;

  /// Whether to render as an inline span.
  final bool span;
}

/// Builder for the root slot.
class MTextRoot {
  /// Creates a [MTextRoot] from a builder function.
  const MTextRoot(this._build);

  final Widget Function(MTextContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MTextContext context) => _build(context);
}

/// Theme-owned composition slots for [MText].
abstract class MTextDelegate extends ComponentDelegate {
  /// Creates a [MTextDelegate].
  const MTextDelegate();

  /// Builds the composition root.
  Widget root(MTextContext context);
}

/// A [MText] widget resolved through [MTextDelegate].
class MText extends StatelessWidget {
  /// Creates a [MText].
  const MText({
    super.key,
    required this.child,
    this.size,
    this.fw,
    this.truncate,
    this.lineClamp,
    this.color,
    this.align,
    this.inherit,
    this.inline,
    this.span,
    this.style,
  }) : variant = MTextVariant.defaults;

  /// The visual variant selected by the constructor.
  final MTextVariant variant;

  /// The primary child widget.
  final Widget child;

  /// Size token.
  final String? size;

  /// Font weight.
  final FontWeight? fw;

  /// How overflowing text is truncated.
  final MTextTruncate? truncate;

  /// Maximum number of lines before clamping.
  final int? lineClamp;

  /// Foreground or accent color.
  final String? color;

  /// Text alignment.
  final TextAlign? align;

  /// Whether to inherit typography from the parent.
  final bool? inherit;

  /// Whether to render inline.
  final bool? inline;

  /// Whether to render as an inline span.
  final bool? span;

  /// Style overrides merged over theme defaults.
  final MTextStyle? style;

  /// Resolves properties and builds via [MTextDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedSize = size ?? 'md';
    final resolvedFw = fw;
    final resolvedTruncate = truncate;
    final resolvedLineClamp = lineClamp;
    final resolvedColor = color;
    final resolvedAlign = align;
    final resolvedInherit = inherit ?? false;
    final resolvedInline = inline ?? false;
    final resolvedSpan = span ?? false;

    const fromProps = MTextStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MTextState();
    final mTextContext = MTextContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      size: resolvedSize,
      fw: resolvedFw,
      truncate: resolvedTruncate,
      lineClamp: resolvedLineClamp,
      color: resolvedColor,
      align: resolvedAlign,
      inherit: resolvedInherit,
      inline: resolvedInline,
      span: resolvedSpan,
    );
    final delegate = MantleTheme.of(context).delegate<MTextDelegate>();
    return delegate.root(mTextContext);
  }
}
