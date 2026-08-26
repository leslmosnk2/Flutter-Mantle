import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [MTransitionDelegate]: fade / scale / slide around the child.
class BasicMTransitionDelegate extends MTransitionDelegate {
  /// Creates a baseline transition delegate.
  const BasicMTransitionDelegate();

  @override
  Widget root(MTransitionContext context) {
    return _TransitionRoot(transitionContext: context);
  }
}

class _TransitionRoot extends StatefulWidget {
  const _TransitionRoot({required this.transitionContext});

  final MTransitionContext transitionContext;

  @override
  State<_TransitionRoot> createState() => _TransitionRootState();
}

class _TransitionRootState extends State<_TransitionRoot> {
  late bool _present;

  MTransitionContext get _ctx => widget.transitionContext;

  @override
  void initState() {
    super.initState();
    _present = _ctx.mounted || _ctx.keepMounted;
  }

  @override
  void didUpdateWidget(covariant _TransitionRoot oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_ctx.mounted) {
      _present = true;
    }
  }

  Duration _duration({required bool entering}) {
    final theme = MantleTheme.of(_ctx.context);
    final ms = entering ? _ctx.duration : (_ctx.exitDuration ?? _ctx.duration);
    if (theme.respectReducedMotion || ms <= 0) {
      return Duration.zero;
    }
    return Duration(milliseconds: ms);
  }

  Offset get _hiddenSlide {
    return switch (_ctx.transition) {
      MantleTransitionName.slideUp => const Offset(0, 1),
      MantleTransitionName.slideDown => const Offset(0, -1),
      MantleTransitionName.slideLeft => const Offset(1, 0),
      MantleTransitionName.slideRight => const Offset(-1, 0),
      MantleTransitionName.fade || MantleTransitionName.scale => Offset.zero,
    };
  }

  @override
  Widget build(BuildContext context) {
    if (!_present && !_ctx.mounted) {
      return const SizedBox.shrink();
    }
    final entering = _ctx.mounted;
    final duration = _duration(entering: entering);
    Widget child = AnimatedOpacity(
      opacity: entering ? 1 : 0,
      duration: duration,
      curve: Curves.ease,
      onEnd: () {
        if (entering) {
          _ctx.onEntered?.call();
        } else {
          _ctx.onExited?.call();
          if (!_ctx.keepMounted && _present) {
            setState(() => _present = false);
          }
        }
      },
      child: _ctx.child,
    );
    switch (_ctx.transition) {
      case MantleTransitionName.fade:
        break;
      case MantleTransitionName.scale:
        child = AnimatedScale(
          scale: entering ? 1 : 0,
          duration: duration,
          curve: Curves.ease,
          child: child,
        );
      case MantleTransitionName.slideUp:
      case MantleTransitionName.slideDown:
      case MantleTransitionName.slideLeft:
      case MantleTransitionName.slideRight:
        child = AnimatedSlide(
          offset: entering ? Offset.zero : _hiddenSlide,
          duration: duration,
          curve: Curves.ease,
          child: child,
        );
    }
    return child;
  }
}
