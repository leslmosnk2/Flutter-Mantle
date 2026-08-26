// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum MTextVariant { defaults }

@immutable
class MTextStyle {
  const MTextStyle();

  MTextStyle copyWith() => this;

  MTextStyle mergeWith(MTextStyle? other) => this;
}

@immutable
class MTextState {
  const MTextState();
}

@immutable
class MTextContext {
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

  final BuildContext context;
  final MTextStyle style;
  final MTextState state;
  final MTextVariant variant;
  final Widget child;
  final String size;
  final FontWeight? fw;
  final MTextTruncate? truncate;
  final int? lineClamp;
  final String? color;
  final TextAlign? align;
  final bool inherit;
  final bool inline;
  final bool span;
}

class MTextRoot {
  const MTextRoot(this._build);

  final Widget Function(MTextContext context) _build;

  Widget call(MTextContext context) => _build(context);
}

abstract class MTextDelegate extends ComponentDelegate {
  const MTextDelegate();

  Widget root(MTextContext context);
}

class MText extends StatelessWidget {
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

  final MTextVariant variant;
  final Widget child;
  final String? size;
  final FontWeight? fw;
  final MTextTruncate? truncate;
  final int? lineClamp;
  final String? color;
  final TextAlign? align;
  final bool? inherit;
  final bool? inline;
  final bool? span;
  final MTextStyle? style;

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
