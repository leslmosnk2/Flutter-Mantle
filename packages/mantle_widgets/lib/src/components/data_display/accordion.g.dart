// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accordion.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum AccordionVariant { defaults }

@immutable
class AccordionStyle {
  const AccordionStyle();

  AccordionStyle copyWith() => this;

  AccordionStyle mergeWith(AccordionStyle? other) => this;
}

@immutable
class AccordionState {
  const AccordionState();
}

@immutable
class AccordionContext {
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

  final BuildContext context;
  final AccordionStyle style;
  final AccordionState state;
  final AccordionVariant variant;
  final List<Widget> children;
  final List<String>? value;
  final List<String>? defaultValue;
  final AccordionOnChange? onChange;
  final bool multiple;
  final AccordionChevronPosition chevronPosition;
  final bool disableChevronRotation;
  final Widget? chevron;
  final String appearance;
  final BorderRadiusGeometry radius;
}

class AccordionRoot {
  const AccordionRoot(this._build);

  final Widget Function(AccordionContext context) _build;

  Widget call(AccordionContext context) => _build(context);
}

abstract class AccordionDelegate extends ComponentDelegate {
  const AccordionDelegate();

  Widget root(AccordionContext context);
}

class Accordion extends StatelessWidget {
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

  final AccordionVariant variant;
  final List<Widget> children;
  final List<String>? value;
  final List<String>? defaultValue;
  final AccordionOnChange? onChange;
  final bool? multiple;
  final AccordionChevronPosition? chevronPosition;
  final bool? disableChevronRotation;
  final Widget? chevron;
  final String? appearance;
  final BorderRadiusGeometry? radius;
  final AccordionStyle? style;

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

enum AccordionItemVariant { defaults }

@immutable
class AccordionItemStyle {
  const AccordionItemStyle();

  AccordionItemStyle copyWith() => this;

  AccordionItemStyle mergeWith(AccordionItemStyle? other) => this;
}

@immutable
class AccordionItemState {
  const AccordionItemState();
}

@immutable
class AccordionItemContext {
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

  final BuildContext context;
  final AccordionItemStyle style;
  final AccordionItemState state;
  final AccordionItemVariant variant;
  final String value;
  final Widget label;
  final Widget child;
  final Widget? icon;
  final bool disabled;
}

class AccordionItemRoot {
  const AccordionItemRoot(this._build);

  final Widget Function(AccordionItemContext context) _build;

  Widget call(AccordionItemContext context) => _build(context);
}

abstract class AccordionItemDelegate extends ComponentDelegate {
  const AccordionItemDelegate();

  Widget root(AccordionItemContext context);
}

class AccordionItem extends StatelessWidget {
  const AccordionItem({
    super.key,
    required this.value,
    required this.label,
    required this.child,
    this.icon,
    this.disabled,
    this.style,
  }) : variant = AccordionItemVariant.defaults;

  final AccordionItemVariant variant;
  final String value;
  final Widget label;
  final Widget child;
  final Widget? icon;
  final bool? disabled;
  final AccordionItemStyle? style;

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
