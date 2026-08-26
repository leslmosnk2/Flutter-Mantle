// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum MCardVariant { defaults }

@immutable
class MCardStyle {
  const MCardStyle();

  MCardStyle copyWith() => this;

  MCardStyle mergeWith(MCardStyle? other) => this;
}

@immutable
class MCardState {
  const MCardState();
}

@immutable
class MCardContext {
  const MCardContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    required this.padding,
    required this.radius,
    required this.withBorder,
    this.shadow,
  });

  final BuildContext context;
  final MCardStyle style;
  final MCardState state;
  final MCardVariant variant;
  final List<Widget> children;
  final String padding;
  final BorderRadiusGeometry radius;
  final bool withBorder;
  final String? shadow;
}

class MCardRoot {
  const MCardRoot(this._build);

  final Widget Function(MCardContext context) _build;

  Widget call(MCardContext context) => _build(context);
}

abstract class MCardDelegate extends ComponentDelegate {
  const MCardDelegate();

  Widget root(MCardContext context);
}

class MCard extends StatelessWidget {
  const MCard({
    super.key,
    required this.children,
    this.padding,
    this.radius,
    this.withBorder,
    this.shadow,
    this.style,
  }) : variant = MCardVariant.defaults;

  final MCardVariant variant;
  final List<Widget> children;
  final String? padding;
  final BorderRadiusGeometry? radius;
  final bool? withBorder;
  final String? shadow;
  final MCardStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedPadding = padding ?? 'md';
    final resolvedRadius = radius ?? dataDisplayDefaultRadius(context);
    final resolvedWithBorder = withBorder ?? false;
    final resolvedShadow = shadow;

    const fromProps = MCardStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MCardState();
    final mCardContext = MCardContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      padding: resolvedPadding,
      radius: resolvedRadius,
      withBorder: resolvedWithBorder,
      shadow: resolvedShadow,
    );
    final delegate = MantleTheme.of(context).delegate<MCardDelegate>();
    return delegate.root(mCardContext);
  }
}

enum CardSectionVariant { defaults }

@immutable
class CardSectionStyle {
  const CardSectionStyle();

  CardSectionStyle copyWith() => this;

  CardSectionStyle mergeWith(CardSectionStyle? other) => this;
}

@immutable
class CardSectionState {
  const CardSectionState();
}

@immutable
class CardSectionContext {
  const CardSectionContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.withBorder,
    required this.inheritPadding,
  });

  final BuildContext context;
  final CardSectionStyle style;
  final CardSectionState state;
  final CardSectionVariant variant;
  final Widget child;
  final bool withBorder;
  final bool inheritPadding;
}

class CardSectionRoot {
  const CardSectionRoot(this._build);

  final Widget Function(CardSectionContext context) _build;

  Widget call(CardSectionContext context) => _build(context);
}

abstract class CardSectionDelegate extends ComponentDelegate {
  const CardSectionDelegate();

  Widget root(CardSectionContext context);
}

class CardSection extends StatelessWidget {
  const CardSection({
    super.key,
    required this.child,
    this.withBorder,
    this.inheritPadding,
    this.style,
  }) : variant = CardSectionVariant.defaults;

  final CardSectionVariant variant;
  final Widget child;
  final bool? withBorder;
  final bool? inheritPadding;
  final CardSectionStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedWithBorder = withBorder ?? false;
    final resolvedInheritPadding = inheritPadding ?? false;

    const fromProps = CardSectionStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = CardSectionState();
    final cardSectionContext = CardSectionContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      withBorder: resolvedWithBorder,
      inheritPadding: resolvedInheritPadding,
    );
    final delegate = MantleTheme.of(context).delegate<CardSectionDelegate>();
    return delegate.root(cardSectionContext);
  }
}
