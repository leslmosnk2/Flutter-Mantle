// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Alert].
enum AlertVariant {
  /// The default variant.
  defaults,

  /// The filled variant.
  filled,

  /// The light variant.
  light,

  /// The outline variant.
  outline,

  /// The transparent variant.
  transparent,

  /// The white variant.
  white,
}

/// Resolved visual values for [Alert].
@immutable
class AlertStyle {
  /// Creates an [AlertStyle].
  const AlertStyle();

  /// Returns a copy of this [AlertStyle] with selected fields replaced.
  AlertStyle copyWith() => this;

  /// Merges [other] over this [AlertStyle]; null fields keep this value.
  AlertStyle mergeWith(AlertStyle? other) => this;
}

/// Resolved interaction state for [Alert].
@immutable
class AlertState {
  /// Creates an [AlertState].
  const AlertState();
}

/// Values passed to [AlertDelegate] slots during build.
@immutable
class AlertContext {
  /// Creates an [AlertContext].
  const AlertContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.title,
    this.child,
    this.color,
    this.icon,
    required this.withCloseButton,
    this.onClose,
    this.closeButtonLabel,
    required this.radius,
    this.autoContrast,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final AlertStyle style;

  /// Resolved interaction state for this build.
  final AlertState state;

  /// The visual variant selected by the constructor.
  final AlertVariant variant;

  /// The title.
  final Widget? title;

  /// The primary child widget.
  final Widget? child;

  /// Foreground or accent color.
  final String? color;

  /// Leading or decorative icon.
  final Widget? icon;

  /// Whether with close button.
  final bool withCloseButton;

  /// Called when the overlay closes.
  final VoidCallback? onClose;

  /// The close button label.
  final String? closeButtonLabel;

  /// Corner radius.
  final BorderRadiusGeometry radius;

  /// Whether to pick a contrasting foreground automatically.
  final bool? autoContrast;
}

/// Builder for the root slot.
class AlertRoot {
  /// Creates an [AlertRoot] from a builder function.
  const AlertRoot(this._build);

  final Widget Function(AlertContext context) _build;

  /// Invokes this slot with [context].
  Widget call(AlertContext context) => _build(context);
}

/// Theme-owned composition slots for [Alert].
abstract class AlertDelegate extends ComponentDelegate {
  /// Creates an [AlertDelegate].
  const AlertDelegate();

  /// Builds the composition root.
  Widget root(AlertContext context);
}

/// An [Alert] widget resolved through [AlertDelegate].
class Alert extends StatelessWidget {
  /// Creates an [Alert].
  const Alert({
    super.key,
    this.title,
    this.child,
    this.color,
    this.icon,
    this.withCloseButton,
    this.onClose,
    this.closeButtonLabel,
    this.radius,
    this.style,
  }) : variant = AlertVariant.defaults,
       autoContrast = null;

  /// Creates a filled [Alert].
  const Alert.filled({
    super.key,
    this.title,
    this.child,
    this.color,
    this.icon,
    this.withCloseButton,
    this.onClose,
    this.closeButtonLabel,
    this.radius,
    this.autoContrast,
    this.style,
  }) : variant = AlertVariant.filled;

  /// Creates a light [Alert].
  const Alert.light({
    super.key,
    this.title,
    this.child,
    this.color,
    this.icon,
    this.withCloseButton,
    this.onClose,
    this.closeButtonLabel,
    this.radius,
    this.style,
  }) : variant = AlertVariant.light,
       autoContrast = null;

  /// Creates an outline [Alert].
  const Alert.outline({
    super.key,
    this.title,
    this.child,
    this.color,
    this.icon,
    this.withCloseButton,
    this.onClose,
    this.closeButtonLabel,
    this.radius,
    this.style,
  }) : variant = AlertVariant.outline,
       autoContrast = null;

  /// Creates a transparent [Alert].
  const Alert.transparent({
    super.key,
    this.title,
    this.child,
    this.color,
    this.icon,
    this.withCloseButton,
    this.onClose,
    this.closeButtonLabel,
    this.radius,
    this.style,
  }) : variant = AlertVariant.transparent,
       autoContrast = null;

  /// Creates a white [Alert].
  const Alert.white({
    super.key,
    this.title,
    this.child,
    this.color,
    this.icon,
    this.withCloseButton,
    this.onClose,
    this.closeButtonLabel,
    this.radius,
    this.style,
  }) : variant = AlertVariant.white,
       autoContrast = null;

  /// The visual variant selected by the constructor.
  final AlertVariant variant;

  /// The title.
  final Widget? title;

  /// The primary child widget.
  final Widget? child;

  /// Foreground or accent color.
  final String? color;

  /// Leading or decorative icon.
  final Widget? icon;

  /// Whether with close button.
  final bool? withCloseButton;

  /// Called when the overlay closes.
  final VoidCallback? onClose;

  /// The close button label.
  final String? closeButtonLabel;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Whether to pick a contrasting foreground automatically.
  final bool? autoContrast;

  /// Style overrides merged over theme defaults.
  final AlertStyle? style;

  /// Resolves properties and builds via [AlertDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedTitle = title;
    final resolvedChild = child;
    final resolvedColor = color;
    final resolvedIcon = icon;
    final resolvedWithCloseButton = withCloseButton ?? false;
    final resolvedOnClose = onClose;
    final resolvedCloseButtonLabel = closeButtonLabel;
    final resolvedRadius = radius ?? feedbackDefaultRadius(context);
    final resolvedAutoContrast =
        autoContrast ?? (variant == AlertVariant.filled ? false : null);

    const fromProps = AlertStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = AlertState();
    final alertContext = AlertContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      title: resolvedTitle,
      child: resolvedChild,
      color: resolvedColor,
      icon: resolvedIcon,
      withCloseButton: resolvedWithCloseButton,
      onClose: resolvedOnClose,
      closeButtonLabel: resolvedCloseButtonLabel,
      radius: resolvedRadius,
      autoContrast: resolvedAutoContrast,
    );
    final delegate = MantleTheme.of(context).delegate<AlertDelegate>();
    return delegate.root(alertContext);
  }
}
