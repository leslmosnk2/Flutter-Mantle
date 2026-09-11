// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [MNotification].
enum MNotificationVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [MNotification].
@immutable
class MNotificationStyle {
  /// Creates a [MNotificationStyle].
  const MNotificationStyle();

  /// Returns a copy of this [MNotificationStyle] with selected fields replaced.
  MNotificationStyle copyWith() => this;

  /// Merges [other] over this [MNotificationStyle]; null fields keep this value.
  MNotificationStyle mergeWith(MNotificationStyle? other) => this;
}

/// Resolved interaction state for [MNotification].
@immutable
class MNotificationState {
  /// Creates a [MNotificationState].
  const MNotificationState();
}

/// Values passed to [MNotificationDelegate] slots during build.
@immutable
class MNotificationContext {
  /// Creates a [MNotificationContext].
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

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final MNotificationStyle style;

  /// Resolved interaction state for this build.
  final MNotificationState state;

  /// The visual variant selected by the constructor.
  final MNotificationVariant variant;

  /// The title.
  final Widget? title;

  /// The message.
  final Widget? message;

  /// Foreground or accent color.
  final String? color;

  /// Leading or decorative icon.
  final Widget? icon;

  /// Whether with close.
  final bool withClose;

  /// Called when the overlay closes.
  final VoidCallback? onClose;

  /// Whether a loading indicator is shown.
  final bool loading;

  /// Whether to draw a border.
  final bool withBorder;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class MNotificationRoot {
  /// Creates a [MNotificationRoot] from a builder function.
  const MNotificationRoot(this._build);

  final Widget Function(MNotificationContext context) _build;

  /// Invokes this slot with [context].
  Widget call(MNotificationContext context) => _build(context);
}

/// Theme-owned composition slots for [MNotification].
abstract class MNotificationDelegate extends ComponentDelegate {
  /// Creates a [MNotificationDelegate].
  const MNotificationDelegate();

  /// Builds the composition root.
  Widget root(MNotificationContext context);
}

/// A [MNotification] widget resolved through [MNotificationDelegate].
class MNotification extends StatelessWidget {
  /// Creates a [MNotification].
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

  /// The visual variant selected by the constructor.
  final MNotificationVariant variant;

  /// The title.
  final Widget? title;

  /// The message.
  final Widget? message;

  /// Foreground or accent color.
  final String? color;

  /// Leading or decorative icon.
  final Widget? icon;

  /// Whether with close.
  final bool? withClose;

  /// Called when the overlay closes.
  final VoidCallback? onClose;

  /// Whether a loading indicator is shown.
  final bool? loading;

  /// Whether to draw a border.
  final bool? withBorder;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final MNotificationStyle? style;

  /// Resolves properties and builds via [MNotificationDelegate].
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
