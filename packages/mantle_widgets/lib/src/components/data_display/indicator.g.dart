// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'indicator.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Indicator].
enum IndicatorVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Indicator].
@immutable
class IndicatorStyle {
  /// Creates an [IndicatorStyle].
  const IndicatorStyle();

  /// Returns a copy of this [IndicatorStyle] with selected fields replaced.
  IndicatorStyle copyWith() => this;

  /// Merges [other] over this [IndicatorStyle]; null fields keep this value.
  IndicatorStyle mergeWith(IndicatorStyle? other) => this;
}

/// Resolved interaction state for [Indicator].
@immutable
class IndicatorState {
  /// Creates an [IndicatorState].
  const IndicatorState();
}

/// Values passed to [IndicatorDelegate] slots during build.
@immutable
class IndicatorContext {
  /// Creates an [IndicatorContext].
  const IndicatorContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.child,
    this.label,
    required this.position,
    required this.offset,
    required this.size,
    this.color,
    required this.radius,
    required this.inline,
    required this.withBorder,
    required this.disabled,
    required this.processing,
    required this.autoContrast,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final IndicatorStyle style;

  /// Resolved interaction state for this build.
  final IndicatorState state;

  /// The visual variant selected by the constructor.
  final IndicatorVariant variant;

  /// The primary child widget.
  final Widget child;

  /// The label.
  final Widget? label;

  /// The position.
  final IndicatorPosition position;

  /// The offset.
  final double offset;

  /// Size token.
  final double size;

  /// Foreground or accent color.
  final String? color;

  /// Corner radius.
  final BorderRadiusGeometry radius;

  /// Whether to render inline.
  final bool inline;

  /// Whether to draw a border.
  final bool withBorder;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether processing.
  final bool processing;

  /// Whether to pick a contrasting foreground automatically.
  final bool autoContrast;
}

/// Builder for the root slot.
class IndicatorRoot {
  /// Creates an [IndicatorRoot] from a builder function.
  const IndicatorRoot(this._build);

  final Widget Function(IndicatorContext context) _build;

  /// Invokes this slot with [context].
  Widget call(IndicatorContext context) => _build(context);
}

/// Theme-owned composition slots for [Indicator].
abstract class IndicatorDelegate extends ComponentDelegate {
  /// Creates an [IndicatorDelegate].
  const IndicatorDelegate();

  /// Builds the composition root.
  Widget root(IndicatorContext context);
}

/// An [Indicator] widget resolved through [IndicatorDelegate].
class Indicator extends StatelessWidget {
  /// Creates an [Indicator].
  const Indicator({
    super.key,
    required this.child,
    this.label,
    this.position,
    this.offset,
    this.size,
    this.color,
    this.radius,
    this.inline,
    this.withBorder,
    this.disabled,
    this.processing,
    this.autoContrast,
    this.style,
  }) : variant = IndicatorVariant.defaults;

  /// The visual variant selected by the constructor.
  final IndicatorVariant variant;

  /// The primary child widget.
  final Widget child;

  /// The label.
  final Widget? label;

  /// The position.
  final IndicatorPosition? position;

  /// The offset.
  final double? offset;

  /// Size token.
  final double? size;

  /// Foreground or accent color.
  final String? color;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Whether to render inline.
  final bool? inline;

  /// Whether to draw a border.
  final bool? withBorder;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Whether processing.
  final bool? processing;

  /// Whether to pick a contrasting foreground automatically.
  final bool? autoContrast;

  /// Style overrides merged over theme defaults.
  final IndicatorStyle? style;

  /// Resolves properties and builds via [IndicatorDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChild = child;
    final resolvedLabel = label;
    final resolvedPosition = position ?? IndicatorPosition.topEnd;
    final resolvedOffset = offset ?? 0;
    final resolvedSize = size ?? 10;
    final resolvedColor = color;
    final resolvedRadius = radius ?? dataDisplayPillRadius(context);
    final resolvedInline = inline ?? false;
    final resolvedWithBorder = withBorder ?? false;
    final resolvedDisabled = disabled ?? false;
    final resolvedProcessing = processing ?? false;
    final resolvedAutoContrast = autoContrast ?? false;

    const fromProps = IndicatorStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = IndicatorState();
    final indicatorContext = IndicatorContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      child: resolvedChild,
      label: resolvedLabel,
      position: resolvedPosition,
      offset: resolvedOffset,
      size: resolvedSize,
      color: resolvedColor,
      radius: resolvedRadius,
      inline: resolvedInline,
      withBorder: resolvedWithBorder,
      disabled: resolvedDisabled,
      processing: resolvedProcessing,
      autoContrast: resolvedAutoContrast,
    );
    final delegate = MantleTheme.of(context).delegate<IndicatorDelegate>();
    return delegate.root(indicatorContext);
  }
}
