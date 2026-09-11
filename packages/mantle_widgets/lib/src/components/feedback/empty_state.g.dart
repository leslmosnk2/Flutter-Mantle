// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'empty_state.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [EmptyState].
enum EmptyStateVariant {
  /// The default variant.
  defaults,

  /// The filled variant.
  filled,

  /// The light variant.
  light,
}

/// Resolved visual values for [EmptyState].
@immutable
class EmptyStateStyle {
  /// Creates an [EmptyStateStyle].
  const EmptyStateStyle();

  /// Returns a copy of this [EmptyStateStyle] with selected fields replaced.
  EmptyStateStyle copyWith() => this;

  /// Merges [other] over this [EmptyStateStyle]; null fields keep this value.
  EmptyStateStyle mergeWith(EmptyStateStyle? other) => this;
}

/// Resolved interaction state for [EmptyState].
@immutable
class EmptyStateState {
  /// Creates an [EmptyStateState].
  const EmptyStateState();
}

/// Values passed to [EmptyStateDelegate] slots during build.
@immutable
class EmptyStateContext {
  /// Creates an [EmptyStateContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final EmptyStateStyle style;

  /// Resolved interaction state for this build.
  final EmptyStateState state;

  /// The visual variant selected by the constructor.
  final EmptyStateVariant variant;

  /// The title.
  final Widget? title;

  /// Supporting description text.
  final Widget? description;

  /// Leading or decorative icon.
  final Widget? icon;

  /// The action.
  final Widget? action;

  /// Foreground or accent color.
  final String? color;

  /// Size token.
  final String size;

  /// Text alignment.
  final EmptyStateAlign align;

  /// Whether with indicator background.
  final bool withIndicatorBackground;
}

/// Builder for the root slot.
class EmptyStateRoot {
  /// Creates an [EmptyStateRoot] from a builder function.
  const EmptyStateRoot(this._build);

  final Widget Function(EmptyStateContext context) _build;

  /// Invokes this slot with [context].
  Widget call(EmptyStateContext context) => _build(context);
}

/// Theme-owned composition slots for [EmptyState].
abstract class EmptyStateDelegate extends ComponentDelegate {
  /// Creates an [EmptyStateDelegate].
  const EmptyStateDelegate();

  /// Builds the composition root.
  Widget root(EmptyStateContext context);
}

/// An [EmptyState] widget resolved through [EmptyStateDelegate].
class EmptyState extends StatelessWidget {
  /// Creates an [EmptyState].
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

  /// Creates a filled [EmptyState].
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

  /// Creates a light [EmptyState].
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

  /// The visual variant selected by the constructor.
  final EmptyStateVariant variant;

  /// The title.
  final Widget? title;

  /// Supporting description text.
  final Widget? description;

  /// Leading or decorative icon.
  final Widget? icon;

  /// The action.
  final Widget? action;

  /// Foreground or accent color.
  final String? color;

  /// Size token.
  final String? size;

  /// Text alignment.
  final EmptyStateAlign? align;

  /// Whether with indicator background.
  final bool? withIndicatorBackground;

  /// Style overrides merged over theme defaults.
  final EmptyStateStyle? style;

  /// Resolves properties and builds via [EmptyStateDelegate].
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
