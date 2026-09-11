// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accordion.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Accordion].
enum AccordionVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Accordion].
@immutable
class AccordionStyle {
  /// Creates an [AccordionStyle].
  const AccordionStyle();

  /// Returns a copy of this [AccordionStyle] with selected fields replaced.
  AccordionStyle copyWith() => this;

  /// Merges [other] over this [AccordionStyle]; null fields keep this value.
  AccordionStyle mergeWith(AccordionStyle? other) => this;
}

/// Resolved interaction state for [Accordion].
@immutable
class AccordionState {
  /// Creates an [AccordionState].
  const AccordionState();
}

/// Values passed to [AccordionDelegate] slots during build.
@immutable
class AccordionContext {
  /// Creates an [AccordionContext].
  const AccordionContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.children,
    this.value,
    this.defaultValue,
    this.onChange,
    required this.multiple,
    required this.chevronPosition,
    required this.disableChevronRotation,
    this.chevron,
    required this.appearance,
    required this.radius,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final AccordionStyle style;

  /// Resolved interaction state for this build.
  final AccordionState state;

  /// The visual variant selected by the constructor.
  final AccordionVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The controlled value.
  final List<String>? value;

  /// Initial value when [value] is omitted.
  final List<String>? defaultValue;

  /// Called when the value changes.
  final AccordionOnChange? onChange;

  /// Whether more than one item can be selected.
  final bool multiple;

  /// Side of the label the chevron is placed on.
  final AccordionChevronPosition chevronPosition;

  /// Whether to keep the chevron unrotated.
  final bool disableChevronRotation;

  /// Expand/collapse indicator widget.
  final Widget? chevron;

  /// Visual appearance token.
  final String appearance;

  /// Corner radius.
  final BorderRadiusGeometry radius;
}

/// Builder for the root slot.
class AccordionRoot {
  /// Creates an [AccordionRoot] from a builder function.
  const AccordionRoot(this._build);

  final Widget Function(AccordionContext context) _build;

  /// Invokes this slot with [context].
  Widget call(AccordionContext context) => _build(context);
}

/// Theme-owned composition slots for [Accordion].
abstract class AccordionDelegate extends ComponentDelegate {
  /// Creates an [AccordionDelegate].
  const AccordionDelegate();

  /// Builds the composition root.
  Widget root(AccordionContext context);
}

/// An [Accordion] widget resolved through [AccordionDelegate].
class Accordion extends StatelessWidget {
  /// Creates an [Accordion].
  const Accordion({
    super.key,
    required this.children,
    this.value,
    this.defaultValue,
    this.onChange,
    this.multiple,
    this.chevronPosition,
    this.disableChevronRotation,
    this.chevron,
    this.appearance,
    this.radius,
    this.style,
  }) : variant = AccordionVariant.defaults;

  /// The visual variant selected by the constructor.
  final AccordionVariant variant;

  /// Child widgets composed by this component.
  final List<Widget> children;

  /// The controlled value.
  final List<String>? value;

  /// Initial value when [value] is omitted.
  final List<String>? defaultValue;

  /// Called when the value changes.
  final AccordionOnChange? onChange;

  /// Whether more than one item can be selected.
  final bool? multiple;

  /// Side of the label the chevron is placed on.
  final AccordionChevronPosition? chevronPosition;

  /// Whether to keep the chevron unrotated.
  final bool? disableChevronRotation;

  /// Expand/collapse indicator widget.
  final Widget? chevron;

  /// Visual appearance token.
  final String? appearance;

  /// Corner radius.
  final BorderRadiusGeometry? radius;

  /// Style overrides merged over theme defaults.
  final AccordionStyle? style;

  /// Resolves properties and builds via [AccordionDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedChildren = children;
    final resolvedValue = value;
    final resolvedDefaultValue = defaultValue;
    final resolvedOnChange = onChange;
    final resolvedMultiple = multiple ?? false;
    final resolvedChevronPosition =
        chevronPosition ?? AccordionChevronPosition.right;
    final resolvedDisableChevronRotation = disableChevronRotation ?? false;
    final resolvedChevron = chevron;
    final resolvedAppearance = appearance ?? 'default';
    final resolvedRadius = radius ?? dataDisplayDefaultRadius(context);

    const fromProps = AccordionStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = AccordionState();
    final accordionContext = AccordionContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      children: resolvedChildren,
      value: resolvedValue,
      defaultValue: resolvedDefaultValue,
      onChange: resolvedOnChange,
      multiple: resolvedMultiple,
      chevronPosition: resolvedChevronPosition,
      disableChevronRotation: resolvedDisableChevronRotation,
      chevron: resolvedChevron,
      appearance: resolvedAppearance,
      radius: resolvedRadius,
    );
    final delegate = MantleTheme.of(context).delegate<AccordionDelegate>();
    return delegate.root(accordionContext);
  }
}

/// Visual variants of [AccordionItem].
enum AccordionItemVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [AccordionItem].
@immutable
class AccordionItemStyle {
  /// Creates an [AccordionItemStyle].
  const AccordionItemStyle();

  /// Returns a copy of this [AccordionItemStyle] with selected fields replaced.
  AccordionItemStyle copyWith() => this;

  /// Merges [other] over this [AccordionItemStyle]; null fields keep this value.
  AccordionItemStyle mergeWith(AccordionItemStyle? other) => this;
}

/// Resolved interaction state for [AccordionItem].
@immutable
class AccordionItemState {
  /// Creates an [AccordionItemState].
  const AccordionItemState();
}

/// Values passed to [AccordionItemDelegate] slots during build.
@immutable
class AccordionItemContext {
  /// Creates an [AccordionItemContext].
  const AccordionItemContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.value,
    required this.label,
    required this.child,
    this.icon,
    required this.disabled,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final AccordionItemStyle style;

  /// Resolved interaction state for this build.
  final AccordionItemState state;

  /// The visual variant selected by the constructor.
  final AccordionItemVariant variant;

  /// The controlled value.
  final String value;

  /// The label.
  final Widget label;

  /// The primary child widget.
  final Widget child;

  /// Leading or decorative icon.
  final Widget? icon;

  /// Whether interaction is disabled.
  final bool disabled;
}

/// Builder for the root slot.
class AccordionItemRoot {
  /// Creates an [AccordionItemRoot] from a builder function.
  const AccordionItemRoot(this._build);

  final Widget Function(AccordionItemContext context) _build;

  /// Invokes this slot with [context].
  Widget call(AccordionItemContext context) => _build(context);
}

/// Theme-owned composition slots for [AccordionItem].
abstract class AccordionItemDelegate extends ComponentDelegate {
  /// Creates an [AccordionItemDelegate].
  const AccordionItemDelegate();

  /// Builds the composition root.
  Widget root(AccordionItemContext context);
}

/// An [AccordionItem] widget resolved through [AccordionItemDelegate].
class AccordionItem extends StatelessWidget {
  /// Creates an [AccordionItem].
  const AccordionItem({
    super.key,
    required this.value,
    required this.label,
    required this.child,
    this.icon,
    this.disabled,
    this.style,
  }) : variant = AccordionItemVariant.defaults;

  /// The visual variant selected by the constructor.
  final AccordionItemVariant variant;

  /// The controlled value.
  final String value;

  /// The label.
  final Widget label;

  /// The primary child widget.
  final Widget child;

  /// Leading or decorative icon.
  final Widget? icon;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Style overrides merged over theme defaults.
  final AccordionItemStyle? style;

  /// Resolves properties and builds via [AccordionItemDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedLabel = label;
    final resolvedChild = child;
    final resolvedIcon = icon;
    final resolvedDisabled = disabled ?? false;

    const fromProps = AccordionItemStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = AccordionItemState();
    final accordionItemContext = AccordionItemContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      label: resolvedLabel,
      child: resolvedChild,
      icon: resolvedIcon,
      disabled: resolvedDisabled,
    );
    final delegate = MantleTheme.of(context).delegate<AccordionItemDelegate>();
    return delegate.root(accordionItemContext);
  }
}
