// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'center.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum MCenterVariant { defaults }

@immutable
class MCenterStyle {
  const MCenterStyle();

  MCenterStyle copyWith() => this;

  MCenterStyle mergeWith(MCenterStyle? other) => this;
}

@immutable
class MCenterState {
  const MCenterState();
}

@immutable
class MCenterContext {
  const MCenterContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.inline,
  });

  final BuildContext context;
  final MCenterStyle style;
  final MCenterState state;
  final MCenterVariant variant;
  final Widget child;
  final bool inline;
}

class MCenterRoot {
  const MCenterRoot(this._build);

  final Widget Function(MCenterContext context) _build;

  Widget call(MCenterContext context) => _build(context);
}

abstract class MCenterDelegate extends ComponentDelegate {
  const MCenterDelegate();

  Widget root(MCenterContext context);
}

class MCenter extends StatelessWidget {
  const MCenter({super.key, required this.child, this.inline, this.style})
    : variant = MCenterVariant.defaults;

  final MCenterVariant variant;
  final Widget child;
  final bool? inline;
  final MCenterStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedInline = inline ?? false;

    const fromProps = MCenterStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MCenterState();
    final mCenterContext = MCenterContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      inline: resolvedInline,
    );
    final delegate = MantleTheme.of(context).delegate<MCenterDelegate>();
    return delegate.root(mCenterContext);
  }
}
