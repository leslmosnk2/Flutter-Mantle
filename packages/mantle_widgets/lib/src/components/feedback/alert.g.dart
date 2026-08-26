// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum AlertVariant { defaults, filled, light, outline, transparent, white }

@immutable
class AlertStyle {
  const AlertStyle();

  AlertStyle copyWith() => this;

  AlertStyle mergeWith(AlertStyle? other) => this;
}

@immutable
class AlertState {
  const AlertState();
}

@immutable
class AlertContext {
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

  final BuildContext context;
  final AlertStyle style;
  final AlertState state;
  final AlertVariant variant;
  final Widget? title;
  final Widget? child;
  final String? color;
  final Widget? icon;
  final bool withCloseButton;
  final VoidCallback? onClose;
  final String? closeButtonLabel;
  final BorderRadiusGeometry radius;
  final bool? autoContrast;
}

class AlertRoot {
  const AlertRoot(this._build);

  final Widget Function(AlertContext context) _build;

  Widget call(AlertContext context) => _build(context);
}

abstract class AlertDelegate extends ComponentDelegate {
  const AlertDelegate();

  Widget root(AlertContext context);
}

class Alert extends StatelessWidget {
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

  final AlertVariant variant;
  final Widget? title;
  final Widget? child;
  final String? color;
  final Widget? icon;
  final bool? withCloseButton;
  final VoidCallback? onClose;
  final String? closeButtonLabel;
  final BorderRadiusGeometry? radius;
  final bool? autoContrast;
  final AlertStyle? style;

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
