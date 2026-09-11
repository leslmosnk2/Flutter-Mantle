// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breadcrumbs.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Breadcrumbs].
enum BreadcrumbsVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Breadcrumbs].
@immutable
class BreadcrumbsStyle {
  /// Creates a [BreadcrumbsStyle].
  const BreadcrumbsStyle();

  /// Returns a copy of this [BreadcrumbsStyle] with selected fields replaced.
  BreadcrumbsStyle copyWith() => this;

  /// Merges [other] over this [BreadcrumbsStyle]; null fields keep this value.
  BreadcrumbsStyle mergeWith(BreadcrumbsStyle? other) => this;
}

/// Resolved interaction state for [Breadcrumbs].
@immutable
class BreadcrumbsState {
  /// Creates a [BreadcrumbsState].
  const BreadcrumbsState();
}

/// Values passed to [BreadcrumbsDelegate] slots during build.
@immutable
class BreadcrumbsContext {
  /// Creates a [BreadcrumbsContext].
  const BreadcrumbsContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    this.separator,
    required this.separatorMargin,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final BreadcrumbsStyle style;

  /// Resolved interaction state for this build.
  final BreadcrumbsState state;

  /// The visual variant selected by the constructor.
  final BreadcrumbsVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The separator.
  final Widget? separator;

  /// The separator margin.
  final String separatorMargin;
}

/// Builder for the root slot.
class BreadcrumbsRoot {
  /// Creates a [BreadcrumbsRoot] from a builder function.
  const BreadcrumbsRoot(this._build);

  final Widget Function(BreadcrumbsContext context) _build;

  /// Invokes this slot with [context].
  Widget call(BreadcrumbsContext context) => _build(context);
}

/// Theme-owned composition slots for [Breadcrumbs].
abstract class BreadcrumbsDelegate extends ComponentDelegate {
  /// Creates a [BreadcrumbsDelegate].
  const BreadcrumbsDelegate();

  /// Builds the composition root.
  Widget root(BreadcrumbsContext context);
}

/// A [Breadcrumbs] widget resolved through [BreadcrumbsDelegate].
class Breadcrumbs extends StatelessWidget {
  /// Creates a [Breadcrumbs].
  const Breadcrumbs({
    super.key,
    required this.children,
    this.separator,
    this.separatorMargin,
    this.style,
  }) : variant = BreadcrumbsVariant.defaults;

  /// The visual variant selected by the constructor.
  final BreadcrumbsVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The separator.
  final Widget? separator;

  /// The separator margin.
  final String? separatorMargin;

  /// Style overrides merged over theme defaults.
  final BreadcrumbsStyle? style;

  /// Resolves properties and builds via [BreadcrumbsDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedSeparator = separator;
    final resolvedSeparatorMargin = separatorMargin ?? 'xs';

    const fromProps = BreadcrumbsStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = BreadcrumbsState();
    final breadcrumbsContext = BreadcrumbsContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      separator: resolvedSeparator,
      separatorMargin: resolvedSeparatorMargin,
    );
    final delegate = MantleTheme.of(context).delegate<BreadcrumbsDelegate>();
    return delegate.root(breadcrumbsContext);
  }
}
