// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empty_state.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum EmptyStateVariant { defaults, filled, light }

@immutable
class EmptyStateStyle {
  const EmptyStateStyle();

  EmptyStateStyle copyWith() => this;

  EmptyStateStyle mergeWith(EmptyStateStyle? other) => this;
}

@immutable
class EmptyStateState {
  const EmptyStateState();
}

@immutable
class EmptyStateContext {
  const EmptyStateContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.title,
    this.description,
    this.icon,
    this.action,
    this.color,
    required this.size,
    required this.align,
    required this.withIndicatorBackground,
  });

  final BuildContext context;
  final EmptyStateStyle style;
  final EmptyStateState state;
  final EmptyStateVariant variant;
  final Widget? title;
  final Widget? description;
  final Widget? icon;
  final Widget? action;
  final String? color;
  final String size;
  final EmptyStateAlign align;
  final bool withIndicatorBackground;
}

class EmptyStateRoot {
  const EmptyStateRoot(this._build);

  final Widget Function(EmptyStateContext context) _build;

  Widget call(EmptyStateContext context) => _build(context);
}

abstract class EmptyStateDelegate extends ComponentDelegate {
  const EmptyStateDelegate();

  Widget root(EmptyStateContext context);
}

class EmptyState extends StatelessWidget {
  const EmptyState({
    super.key,
    this.title,
    this.description,
    this.icon,
    this.action,
    this.color,
    this.size,
    this.align,
    this.withIndicatorBackground,
    this.style,
  }) : variant = EmptyStateVariant.defaults;

  const EmptyState.filled({
    super.key,
    this.title,
    this.description,
    this.icon,
    this.action,
    this.color,
    this.size,
    this.align,
    this.withIndicatorBackground,
    this.style,
  }) : variant = EmptyStateVariant.filled;

  const EmptyState.light({
    super.key,
    this.title,
    this.description,
    this.icon,
    this.action,
    this.color,
    this.size,
    this.align,
    this.withIndicatorBackground,
    this.style,
  }) : variant = EmptyStateVariant.light;

  final EmptyStateVariant variant;
  final Widget? title;
  final Widget? description;
  final Widget? icon;
  final Widget? action;
  final String? color;
  final String? size;
  final EmptyStateAlign? align;
  final bool? withIndicatorBackground;
  final EmptyStateStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedTitle = title;
    final resolvedDescription = description;
    final resolvedIcon = icon;
    final resolvedAction = action;
    final resolvedColor = color;
    final resolvedSize = size ?? 'md';
    final resolvedAlign = align ?? EmptyStateAlign.center;
    final resolvedWithIndicatorBackground = withIndicatorBackground ?? false;

    const fromProps = EmptyStateStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = EmptyStateState();
    final emptyStateContext = EmptyStateContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      title: resolvedTitle,
      description: resolvedDescription,
      icon: resolvedIcon,
      action: resolvedAction,
      color: resolvedColor,
      size: resolvedSize,
      align: resolvedAlign,
      withIndicatorBackground: resolvedWithIndicatorBackground,
    );
    final delegate = MantleTheme.of(context).delegate<EmptyStateDelegate>();
    return delegate.root(emptyStateContext);
  }
}
