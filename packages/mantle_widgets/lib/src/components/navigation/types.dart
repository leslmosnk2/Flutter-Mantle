import 'package:flutter/widgets.dart';

/// When `Anchor` draws an underline.
enum AnchorUnderline {
  /// Always underlined.
  always,

  /// Underlined while the pointer is over the link.
  hover,

  /// Underlined except while the pointer is over the link.
  notHover,

  /// Never underlined.
  never,
}

/// Called when an `Anchor` is pressed.
typedef AnchorOnPressed = void Function();

/// Called when the active `Pagination` page changes.
typedef PaginationOnChange = void Function(int value);

/// Called when the active `Tabs` value changes.
typedef TabsOnChange = void Function(String value);

/// Horizontal placement of a vertical `TabsList`.
enum TabsPlacement {
  /// List on the start edge (left in LTR).
  left,

  /// List on the end edge (right in LTR).
  right,
}

/// Called when a `Stepper` step is clicked.
typedef StepperOnStepClick = void Function(int index);

/// Icon side relative to a `StepperStep` label.
enum StepIconPosition {
  /// Icon before the label (start in LTR).
  left,

  /// Icon after the label (end in LTR).
  right,
}

/// A heading row for `TableOfContents`.
@immutable
class TocHeading {
  /// Creates a heading entry.
  const TocHeading({
    required this.value,
    required this.depth,
    required this.label,
  });

  /// Stable id, also used as `TableOfContents.active`.
  final String value;

  /// Heading level, typically 1–6.
  final int depth;

  /// Visible control label.
  final String label;
}

/// Called when a `TableOfContents` heading is activated.
typedef TocOnScrollTo = void Function(TocHeading heading);

/// Nested node used by data-driven `Tree`.
@immutable
class TreeNodeData {
  /// Creates a tree node.
  const TreeNodeData({
    required this.value,
    required this.label,
    this.children = const [],
  });

  /// Stable id, used for expand/select.
  final String value;

  /// Visible label.
  final String label;

  /// Nested nodes.
  final List<TreeNodeData> children;
}

/// Called when a `Tree`'s expanded values change.
typedef TreeOnExpandedChange = void Function(List<String> expanded);

/// Called when a `Tree` node is selected.
typedef TreeOnSelected = void Function(String value);

/// Called when a `NavLink` is tapped.
typedef NavLinkOnTap = void Function();

/// Called when a `NavLink`'s nested list is opened or closed.
// ignore: avoid_positional_boolean_parameters
typedef NavLinkOnOpenedChange = void Function(bool opened);

/// Called when a `Burger` is tapped.
typedef BurgerOnTap = void Function();

/// Publishes `Tabs` selection to `TabsList`, `TabsTab`, and `TabsPanel`.
class TabsScope extends InheritedWidget {
  /// Creates a tabs scope.
  const TabsScope({
    required this.value,
    required this.onChange,
    required this.orientation,
    required this.placement,
    required this.inverted,
    required this.keepMounted,
    required this.color,
    required super.child,
    super.key,
  });

  /// Active tab value, or `null` when none is selected.
  final String? value;

  /// Selection callback.
  final TabsOnChange? onChange;

  /// List axis.
  final Axis orientation;

  /// List side when [orientation] is vertical.
  final TabsPlacement placement;

  /// Flips list/panel order on the horizontal axis.
  final bool inverted;

  /// Keep inactive panels in the tree.
  final bool keepMounted;

  /// Palette name for the active tab.
  final String? color;

  /// The nearest [TabsScope], or null.
  static TabsScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TabsScope>();
  }

  /// The nearest [TabsScope].
  static TabsScope of(BuildContext context) {
    final scope = maybeOf(context);
    assert(scope != null, 'Tabs child used outside Tabs');
    return scope!;
  }

  @override
  bool updateShouldNotify(TabsScope oldWidget) {
    return value != oldWidget.value ||
        onChange != oldWidget.onChange ||
        orientation != oldWidget.orientation ||
        placement != oldWidget.placement ||
        inverted != oldWidget.inverted ||
        keepMounted != oldWidget.keepMounted ||
        color != oldWidget.color;
  }
}

/// Publishes `Stepper` state to `StepperStep`.
class StepperScope extends InheritedWidget {
  /// Creates a stepper scope.
  const StepperScope({
    required this.active,
    required this.orientation,
    required this.iconPosition,
    required this.allowNextStepsSelect,
    required this.onStepClick,
    required this.color,
    required this.stepCount,
    required this.size,
    required super.child,
    super.key,
  });

  /// Index of the current step.
  final int active;

  /// Steps axis.
  final Axis orientation;

  /// Default icon side.
  final StepIconPosition iconPosition;

  /// Whether later steps can be selected.
  final bool allowNextStepsSelect;

  /// Step click callback.
  final StepperOnStepClick? onStepClick;

  /// Palette name for the active/completed icon.
  final String? color;

  /// Number of `StepperStep` children.
  final int stepCount;

  /// Icon / type size token from the parent `Stepper`.
  final String size;

  /// The nearest [StepperScope], or null.
  static StepperScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<StepperScope>();
  }

  /// The nearest [StepperScope].
  static StepperScope of(BuildContext context) {
    final scope = maybeOf(context);
    assert(scope != null, 'StepperStep used outside Stepper');
    return scope!;
  }

  @override
  bool updateShouldNotify(StepperScope oldWidget) {
    return active != oldWidget.active ||
        orientation != oldWidget.orientation ||
        iconPosition != oldWidget.iconPosition ||
        allowNextStepsSelect != oldWidget.allowNextStepsSelect ||
        onStepClick != oldWidget.onStepClick ||
        color != oldWidget.color ||
        stepCount != oldWidget.stepCount ||
        size != oldWidget.size;
  }
}

/// Index of a `StepperStep` inside `Stepper`.
class StepperIndexScope extends InheritedWidget {
  /// Creates a step-index scope.
  const StepperIndexScope({
    required this.index,
    required this.isLast,
    required super.child,
    super.key,
  });

  /// Zero-based index of this step.
  final int index;

  /// Whether this is the last `StepperStep`.
  final bool isLast;

  /// The nearest [StepperIndexScope], or null.
  static StepperIndexScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<StepperIndexScope>();
  }

  @override
  bool updateShouldNotify(StepperIndexScope oldWidget) {
    return index != oldWidget.index || isLast != oldWidget.isLast;
  }
}

/// Publishes `Pagination` state to `PaginationControl`.
class PaginationScope extends InheritedWidget {
  /// Creates a pagination scope.
  const PaginationScope({
    required this.total,
    required this.value,
    required this.onChange,
    required this.disabled,
    required this.size,
    required this.color,
    required super.child,
    super.key,
  });

  /// Total page count.
  final int total;

  /// Active page (1-based).
  final int value;

  /// Page change callback.
  final PaginationOnChange? onChange;

  /// Disables every control.
  final bool disabled;

  /// Control size token.
  final String size;

  /// Active control palette.
  final String? color;

  /// The nearest [PaginationScope], or null.
  static PaginationScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<PaginationScope>();
  }

  /// The nearest [PaginationScope].
  static PaginationScope of(BuildContext context) {
    final scope = maybeOf(context);
    assert(scope != null, 'PaginationControl used outside Pagination');
    return scope!;
  }

  @override
  bool updateShouldNotify(PaginationScope oldWidget) {
    return total != oldWidget.total ||
        value != oldWidget.value ||
        onChange != oldWidget.onChange ||
        disabled != oldWidget.disabled ||
        size != oldWidget.size ||
        color != oldWidget.color;
  }
}

/// Publishes `Tree` expand/select state to `TreeNode`.
class TreeScope extends InheritedWidget {
  /// Creates a tree scope.
  const TreeScope({
    required this.expanded,
    required this.selected,
    required this.onExpandedChange,
    required this.onSelected,
    required this.expandOnClick,
    required this.selectOnClick,
    required this.levelOffset,
    required super.child,
    super.key,
  });

  /// Values of expanded nodes.
  final List<String> expanded;

  /// Values of selected nodes.
  final List<String> selected;

  /// Expand/collapse callback.
  final TreeOnExpandedChange? onExpandedChange;

  /// Selection callback.
  final TreeOnSelected? onSelected;

  /// Expand a parent when its label is tapped.
  final bool expandOnClick;

  /// Select a node when its label is tapped.
  final bool selectOnClick;

  /// Spacing token for each nested level.
  final String levelOffset;

  /// The nearest [TreeScope], or null.
  static TreeScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<TreeScope>();
  }

  /// The nearest [TreeScope].
  static TreeScope of(BuildContext context) {
    final scope = maybeOf(context);
    assert(scope != null, 'TreeNode used outside Tree');
    return scope!;
  }

  @override
  bool updateShouldNotify(TreeScope oldWidget) {
    return expanded != oldWidget.expanded ||
        selected != oldWidget.selected ||
        onExpandedChange != oldWidget.onExpandedChange ||
        onSelected != oldWidget.onSelected ||
        expandOnClick != oldWidget.expandOnClick ||
        selectOnClick != oldWidget.selectOnClick ||
        levelOffset != oldWidget.levelOffset;
  }
}
