// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'burger.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum BurgerVariant { defaults }

@immutable
class BurgerStyle {
  const BurgerStyle();

  BurgerStyle copyWith() => this;

  BurgerStyle mergeWith(BurgerStyle? other) => this;
}

@immutable
class BurgerState {
  const BurgerState();
}

@immutable
class BurgerContext {
  const BurgerContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.opened,
    this.onTap,
    required this.size,
    this.color,
  });

  final BuildContext context;
  final BurgerStyle style;
  final BurgerState state;
  final BurgerVariant variant;
  final bool opened;
  final BurgerOnTap? onTap;
  final String size;
  final String? color;
}

class BurgerRoot {
  const BurgerRoot(this._build);

  final Widget Function(BurgerContext context) _build;

  Widget call(BurgerContext context) => _build(context);
}

abstract class BurgerDelegate extends ComponentDelegate {
  const BurgerDelegate();

  Widget root(BurgerContext context);
}

class Burger extends StatelessWidget {
  const Burger({
    super.key,
    this.opened,
    this.onTap,
    this.size,
    this.color,
    this.style,
  }) : variant = BurgerVariant.defaults;

  final BurgerVariant variant;
  final bool? opened;
  final BurgerOnTap? onTap;
  final String? size;
  final String? color;
  final BurgerStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedOpened = opened ?? false;
    final resolvedOnTap = onTap;
    final resolvedSize = size ?? 'md';
    final resolvedColor = color;

    const fromProps = BurgerStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = BurgerState();
    final burgerContext = BurgerContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      opened: resolvedOpened,
      onTap: resolvedOnTap,
      size: resolvedSize,
      color: resolvedColor,
    );
    final delegate = MantleTheme.of(context).delegate<BurgerDelegate>();
    return delegate.root(burgerContext);
  }
}
