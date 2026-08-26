import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_basic/src/widgets/navigation/tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/navigation.dart';

/// Icon sizes for Stepper size tokens, matching Mantine CSS variables.
const Map<String, double> kStepperIconSizes = {
  'xs': 34,
  'sm': 36,
  'md': 42,
  'lg': 48,
  'xl': 52,
};

/// Baseline [StepperDelegate]: a row or column of steps plus active content.
class BasicStepperDelegate extends StepperDelegate {
  /// Creates a baseline stepper delegate.
  const BasicStepperDelegate();

  @override
  Widget root(StepperContext context) {
    final steps = <StepperStep>[];
    StepperCompleted? completed;
    for (final child in context.children) {
      switch (child) {
        case final StepperStep step:
          steps.add(step);
        case final StepperCompleted done:
          completed = done;
        default:
          break;
      }
    }

    Widget? content;
    if (context.active >= steps.length) {
      content = completed;
    } else if (context.active >= 0 && context.active < steps.length) {
      content = steps[context.active].child;
    }

    final theme = MantleTheme.of(context.context);
    final pad = resolveSpacing(theme, context.contentPadding);
    final vertical = context.orientation == Axis.vertical;

    final indexed = <Widget>[
      for (var i = 0; i < steps.length; i++) ...[
        if (i > 0 && !vertical)
          _StepperSeparator(
            active: i <= context.active,
            color: context.color,
            expand: !context.wrap,
          ),
        StepperIndexScope(
          index: i,
          isLast: i == steps.length - 1,
          child: steps[i],
        ),
      ],
    ];

    final stepsRow = vertical
        ? Column(
            crossAxisAlignment: context.iconPosition == StepIconPosition.left
                ? CrossAxisAlignment.start
                : CrossAxisAlignment.end,
            children: indexed,
          )
        : context.wrap
        ? Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: indexed,
          )
        : Row(children: indexed);

    return StepperScope(
      active: context.active,
      orientation: context.orientation,
      iconPosition: context.iconPosition,
      allowNextStepsSelect: context.allowNextStepsSelect,
      onStepClick: context.onStepClick,
      color: context.color,
      stepCount: steps.length,
      size: context.size,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          stepsRow,
          if (content != null)
            Padding(
              padding: EdgeInsets.only(top: pad),
              child: content,
            ),
        ],
      ),
    );
  }
}

class _StepperSeparator extends StatelessWidget {
  const _StepperSeparator({
    required this.active,
    required this.color,
    required this.expand,
  });

  final bool active;
  final String? color;
  final bool expand;

  @override
  Widget build(BuildContext context) {
    final theme = MantleTheme.of(context);
    final line = active
        ? resolveNamedColor(context, color)
        : schemeBorder(context);
    final box = ColoredBox(
      color: line,
      child: const SizedBox(height: 2, width: 24),
    );
    if (!expand) {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: resolveSpacing(theme, 'md')),
        child: box,
      );
    }
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: resolveSpacing(theme, 'md')),
        child: ColoredBox(color: line, child: const SizedBox(height: 2)),
      ),
    );
  }
}

/// Baseline [StepperStepDelegate]: icon, label, and optional connector.
class BasicStepperStepDelegate extends StepperStepDelegate {
  /// Creates a baseline stepper-step delegate.
  const BasicStepperStepDelegate();

  @override
  Widget root(StepperStepContext context) {
    final scope = StepperScope.maybeOf(context.context);
    final indexScope = StepperIndexScope.maybeOf(context.context);
    final theme = MantleTheme.of(context.context);
    final index = indexScope?.index ?? 0;
    final isLast = indexScope?.isLast ?? true;
    final active = scope?.active ?? 0;
    final completed = active > index;
    final progress = active == index;
    final color = resolveNamedColor(context.context, scope?.color);
    final sizeToken = scope?.size ?? 'md';
    final iconSize = kStepperIconSizes[sizeToken] ?? kStepperIconSizes['md']!;
    final resolvedIconSize = iconSize * theme.scale;
    final orientation = scope?.orientation ?? Axis.horizontal;
    final iconPosition = scope?.iconPosition ?? StepIconPosition.left;
    final allowSelect =
        context.allowStepSelect ??
        (scope?.onStepClick != null &&
            (completed || (scope?.allowNextStepsSelect ?? true)));
    final canClick = allowSelect && scope?.onStepClick != null;

    final icon = context.withIcon
        ? _StepIcon(
            size: resolvedIconSize,
            completed: completed,
            progress: progress,
            color: color,
            loading: context.loading,
            child:
                context.icon ??
                Text(
                  completed ? '✓' : '${index + 1}',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: resolveFontSize(theme, sizeToken) - 2,
                    color: completed
                        ? theme.white
                        : schemeForeground(context.context),
                  ),
                ),
          )
        : null;

    final body = (context.label != null || context.description != null)
        ? Padding(
            padding: EdgeInsets.only(
              left: iconPosition == StepIconPosition.left
                  ? resolveSpacing(theme, 'sm')
                  : 0,
              right: iconPosition == StepIconPosition.right
                  ? resolveSpacing(theme, 'sm')
                  : 0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                if (context.label != null)
                  DefaultTextStyle.merge(
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: resolveFontSize(theme, sizeToken),
                    ),
                    child: context.label!,
                  ),
                if (context.description != null)
                  DefaultTextStyle.merge(
                    style: TextStyle(
                      color: schemeDimmed(context.context),
                      fontSize: resolveFontSize(theme, sizeToken) - 2,
                    ),
                    child: context.description!,
                  ),
              ],
            ),
          )
        : null;

    final iconAndBody = Row(
      mainAxisSize: MainAxisSize.min,
      children: iconPosition == StepIconPosition.left
          ? [
              ?icon,
              ?body,
            ]
          : [
              ?body,
              ?icon,
            ],
    );

    Widget step = iconAndBody;
    if (orientation == Axis.vertical && icon != null && !isLast) {
      step = IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              children: [
                icon,
                Expanded(
                  child: Container(
                    width: 2,
                    margin: const EdgeInsets.symmetric(vertical: 4),
                    color: completed ? color : schemeBorder(context.context),
                  ),
                ),
              ],
            ),
            ?body,
          ],
        ),
      );
    }

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: canClick ? () => scope?.onStepClick?.call(index) : null,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: orientation == Axis.vertical ? 4 : 0,
        ),
        child: step,
      ),
    );
  }
}

class _StepIcon extends StatelessWidget {
  const _StepIcon({
    required this.size,
    required this.completed,
    required this.progress,
    required this.color,
    required this.loading,
    required this.child,
  });

  final double size;
  final bool completed;
  final bool progress;
  final Color color;
  final bool loading;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final border = completed || progress ? color : schemeBorder(context);
    final fill = completed ? color : schemeBorder(context);
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: completed ? fill : const Color(0x00000000),
        shape: BoxShape.circle,
        border: Border.all(color: border, width: 2),
      ),
      child: loading
          ? SizedBox(
              width: size / 2,
              height: size / 2,
              child: const _StepSpinner(),
            )
          : child,
    );
  }
}

class _StepSpinner extends StatelessWidget {
  const _StepSpinner();

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.fromBorderSide(
          BorderSide(color: Color(0x66FFFFFF), width: 2),
        ),
      ),
    );
  }
}

/// Baseline [StepperCompletedDelegate]: completed-state content.
class BasicStepperCompletedDelegate extends StepperCompletedDelegate {
  /// Creates a baseline stepper-completed delegate.
  const BasicStepperCompletedDelegate();

  @override
  Widget root(StepperCompletedContext context) => context.child;
}
