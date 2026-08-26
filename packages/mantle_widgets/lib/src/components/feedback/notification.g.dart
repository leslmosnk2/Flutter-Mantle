// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum MNotificationVariant { defaults }

@immutable
class MNotificationStyle {
  const MNotificationStyle();

  MNotificationStyle copyWith() => this;

  MNotificationStyle mergeWith(MNotificationStyle? other) => this;
}

@immutable
class MNotificationState {
  const MNotificationState();
}

@immutable
class MNotificationContext {
  const MNotificationContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.title,
    this.message,
    this.color,
    this.icon,
    required this.withClose,
    this.onClose,
    required this.loading,
    required this.withBorder,
    required this.radius,
  });

  final BuildContext context;
  final MNotificationStyle style;
  final MNotificationState state;
  final MNotificationVariant variant;
  final Widget? title;
  final Widget? message;
  final String? color;
  final Widget? icon;
  final bool withClose;
  final VoidCallback? onClose;
  final bool loading;
  final bool withBorder;
  final BorderRadiusGeometry radius;
}

class MNotificationRoot {
  const MNotificationRoot(this._build);

  final Widget Function(MNotificationContext context) _build;

  Widget call(MNotificationContext context) => _build(context);
}

abstract class MNotificationDelegate extends ComponentDelegate {
  const MNotificationDelegate();

  Widget root(MNotificationContext context);
}

class MNotification extends StatelessWidget {
  const MNotification({
    super.key,
    this.title,
    this.message,
    this.color,
    this.icon,
    this.withClose,
    this.onClose,
    this.loading,
    this.withBorder,
    this.radius,
    this.style,
  }) : variant = MNotificationVariant.defaults;

  final MNotificationVariant variant;
  final Widget? title;
  final Widget? message;
  final String? color;
  final Widget? icon;
  final bool? withClose;
  final VoidCallback? onClose;
  final bool? loading;
  final bool? withBorder;
  final BorderRadiusGeometry? radius;
  final MNotificationStyle? style;

  @override
  Widget build(BuildContext context) {
    final resolvedTitle = title;
    final resolvedMessage = message;
    final resolvedColor = color;
    final resolvedIcon = icon;
    final resolvedWithClose = withClose ?? true;
    final resolvedOnClose = onClose;
    final resolvedLoading = loading ?? false;
    final resolvedWithBorder = withBorder ?? false;
    final resolvedRadius = radius ?? feedbackDefaultRadius(context);

    const fromProps = MNotificationStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = MNotificationState();
    final mNotificationContext = MNotificationContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      title: resolvedTitle,
      message: resolvedMessage,
      color: resolvedColor,
      icon: resolvedIcon,
      withClose: resolvedWithClose,
      onClose: resolvedOnClose,
      loading: resolvedLoading,
      withBorder: resolvedWithBorder,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<MNotificationDelegate>();
    return delegate.root(mNotificationContext);
  }
}
