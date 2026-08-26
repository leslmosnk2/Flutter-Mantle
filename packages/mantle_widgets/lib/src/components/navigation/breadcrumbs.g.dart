// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breadcrumbs.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum BreadcrumbsVariant { defaults }

@immutable
class BreadcrumbsStyle {
  const BreadcrumbsStyle();

  BreadcrumbsStyle copyWith() => this;

  BreadcrumbsStyle mergeWith(BreadcrumbsStyle? other) => this;
}

@immutable
class BreadcrumbsState {
  const BreadcrumbsState();
}

@immutable
class BreadcrumbsContext {
  const BreadcrumbsContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    this.separator,
    required this.separatorMargin,
  });

  final BuildContext context;
  final BreadcrumbsStyle style;
  final BreadcrumbsState state;
  final BreadcrumbsVariant variant;
  final List<Widget> children;
  final Widget? separator;
  final String separatorMargin;
}

class BreadcrumbsRoot {
  const BreadcrumbsRoot(this._build);

  final Widget Function(BreadcrumbsContext context) _build;

  Widget call(BreadcrumbsContext context) => _build(context);
}

abstract class BreadcrumbsDelegate extends ComponentDelegate {
  const BreadcrumbsDelegate();

  Widget root(BreadcrumbsContext context);
}

class Breadcrumbs extends StatelessWidget {
  const Breadcrumbs({
    super.key,
    required this.children,
    this.separator,
    this.separatorMargin,
    this.style,
  }) : variant = BreadcrumbsVariant.defaults;

  final BreadcrumbsVariant variant;
  final List<Widget> children;
  final Widget? separator;
  final String? separatorMargin;
  final BreadcrumbsStyle? style;

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
