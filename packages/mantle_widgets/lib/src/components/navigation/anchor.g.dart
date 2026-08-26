// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anchor.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum AnchorVariant { defaults }

@immutable
class AnchorStyle {
  const AnchorStyle();

  AnchorStyle copyWith() => this;

  AnchorStyle mergeWith(AnchorStyle? other) => this;
}

@immutable
class AnchorState {
  const AnchorState();
}

@immutable
class AnchorContext {
  const AnchorContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.onPressed,
    this.href,
    required this.underline,
    required this.size,
    this.color,
  });

  final BuildContext context;
  final AnchorStyle style;
  final AnchorState state;
  final AnchorVariant variant;
  final Widget child;
  final AnchorOnPressed? onPressed;
  final String? href;
  final AnchorUnderline underline;
  final String size;
  final String? color;
}

class AnchorRoot {
  const AnchorRoot(this._build);

  final Widget Function(AnchorContext context) _build;

  Widget call(AnchorContext context) => _build(context);
}

abstract class AnchorDelegate extends ComponentDelegate {
  const AnchorDelegate();

  Widget root(AnchorContext context);
}

class Anchor extends StatelessWidget {
  const Anchor({
    super.key,
    required this.child,
    this.onPressed,
    this.href,
    this.underline,
    this.size,
    this.color,
    this.style,
  }) : variant = AnchorVariant.defaults;

  final AnchorVariant variant;
  final Widget child;
  final AnchorOnPressed? onPressed;
  final String? href;
  final AnchorUnderline? underline;
  final String? size;
  final String? color;
  final AnchorStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedOnPressed = onPressed;
    final resolvedHref = href;
    final resolvedUnderline = underline ?? AnchorUnderline.hover;
    final resolvedSize = size ?? 'sm';
    final resolvedColor = color;

    const fromProps = AnchorStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = AnchorState();
    final anchorContext = AnchorContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      onPressed: resolvedOnPressed,
      href: resolvedHref,
      underline: resolvedUnderline,
      size: resolvedSize,
      color: resolvedColor,
    );
    final delegate = MantleTheme.of(context).delegate<AnchorDelegate>();
    return delegate.root(anchorContext);
  }
}
