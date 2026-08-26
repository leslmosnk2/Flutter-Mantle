// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'highlight.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum HighlightVariant { defaults }

@immutable
class HighlightStyle {
  const HighlightStyle();

  HighlightStyle copyWith() => this;

  HighlightStyle mergeWith(HighlightStyle? other) => this;
}

@immutable
class HighlightState {
  const HighlightState();
}

@immutable
class HighlightContext {
  const HighlightContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.text,
    required this.highlight,
    required this.color,
    required this.size,
  });

  final BuildContext context;
  final HighlightStyle style;
  final HighlightState state;
  final HighlightVariant variant;
  final String text;
  final List<String> highlight;
  final String color;
  final String size;
}

class HighlightRoot {
  const HighlightRoot(this._build);

  final Widget Function(HighlightContext context) _build;

  Widget call(HighlightContext context) => _build(context);
}

abstract class HighlightDelegate extends ComponentDelegate {
  const HighlightDelegate();

  Widget root(HighlightContext context);
}

class Highlight extends StatelessWidget {
  const Highlight({
    super.key,
    required this.text,
    required this.highlight,
    this.color,
    this.size,
    this.style,
  }) : variant = HighlightVariant.defaults;

  final HighlightVariant variant;
  final String text;
  final List<String> highlight;
  final String? color;
  final String? size;
  final HighlightStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedText = text;
    final resolvedHighlight = highlight;
    final resolvedColor = color ?? 'yellow';
    final resolvedSize = size ?? 'md';

    const fromProps = HighlightStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = HighlightState();
    final highlightContext = HighlightContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      text: resolvedText,
      highlight: resolvedHighlight,
      color: resolvedColor,
      size: resolvedSize,
    );
    final delegate = MantleTheme.of(context).delegate<HighlightDelegate>();
    return delegate.root(highlightContext);
  }
}
