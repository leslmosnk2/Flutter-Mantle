// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kbd.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum KbdVariant { defaults }

@immutable
class KbdStyle {
  const KbdStyle();

  KbdStyle copyWith() => this;

  KbdStyle mergeWith(KbdStyle? other) => this;
}

@immutable
class KbdState {
  const KbdState();
}

@immutable
class KbdContext {
  const KbdContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    required this.size,
  });

  final BuildContext context;
  final KbdStyle style;
  final KbdState state;
  final KbdVariant variant;
  final Widget child;
  final String size;
}

class KbdRoot {
  const KbdRoot(this._build);

  final Widget Function(KbdContext context) _build;

  Widget call(KbdContext context) => _build(context);
}

abstract class KbdDelegate extends ComponentDelegate {
  const KbdDelegate();

  Widget root(KbdContext context);
}

class Kbd extends StatelessWidget {
  const Kbd({super.key, required this.child, this.size, this.style})
    : variant = KbdVariant.defaults;

  final KbdVariant variant;
  final Widget child;
  final String? size;
  final KbdStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedSize = size ?? 'sm';

    const fromProps = KbdStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = KbdState();
    final kbdContext = KbdContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      size: resolvedSize,
    );
    final delegate = MantleTheme.of(context).delegate<KbdDelegate>();
    return delegate.root(kbdContext);
  }
}
