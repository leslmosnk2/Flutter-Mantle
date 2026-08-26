// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spoiler.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum SpoilerVariant { defaults }

@immutable
class SpoilerStyle {
  const SpoilerStyle();

  SpoilerStyle copyWith() => this;

  SpoilerStyle mergeWith(SpoilerStyle? other) => this;
}

@immutable
class SpoilerState {
  const SpoilerState();
}

@immutable
class SpoilerContext {
  const SpoilerContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.maxHeight,
    required this.showLabel,
    required this.hideLabel,
    this.expanded,
    required this.initialState,
    this.onExpandedChange,
  });

  final BuildContext context;
  final SpoilerStyle style;
  final SpoilerState state;
  final SpoilerVariant variant;
  final Widget child;
  final double maxHeight;
  final Widget showLabel;
  final Widget hideLabel;
  final bool? expanded;
  final bool initialState;
  final SpoilerOnExpandedChange? onExpandedChange;
}

class SpoilerRoot {
  const SpoilerRoot(this._build);

  final Widget Function(SpoilerContext context) _build;

  Widget call(SpoilerContext context) => _build(context);
}

abstract class SpoilerDelegate extends ComponentDelegate {
  const SpoilerDelegate();

  Widget root(SpoilerContext context);
}

class Spoiler extends StatelessWidget {
  const Spoiler({
    super.key,
    required this.child,
    required this.showLabel,
    required this.hideLabel,
    this.maxHeight,
    this.expanded,
    this.initialState,
    this.onExpandedChange,
    this.style,
  }) : variant = SpoilerVariant.defaults;

  final SpoilerVariant variant;
  final Widget child;
  final double? maxHeight;
  final Widget showLabel;
  final Widget hideLabel;
  final bool? expanded;
  final bool? initialState;
  final SpoilerOnExpandedChange? onExpandedChange;
  final SpoilerStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedMaxHeight = maxHeight ?? 100;
    final resolvedShowLabel = showLabel;
    final resolvedHideLabel = hideLabel;
    final resolvedExpanded = expanded;
    final resolvedInitialState = initialState ?? false;
    final resolvedOnExpandedChange = onExpandedChange;

    const fromProps = SpoilerStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = SpoilerState();
    final spoilerContext = SpoilerContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      maxHeight: resolvedMaxHeight,
      showLabel: resolvedShowLabel,
      hideLabel: resolvedHideLabel,
      expanded: resolvedExpanded,
      initialState: resolvedInitialState,
      onExpandedChange: resolvedOnExpandedChange,
    );
    final delegate = MantleTheme.of(context).delegate<SpoilerDelegate>();
    return delegate.root(spoilerContext);
  }
}
