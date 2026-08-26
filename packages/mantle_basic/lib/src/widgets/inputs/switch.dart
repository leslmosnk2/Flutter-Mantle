import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/inputs/input_field.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/inputs.dart';

/// Baseline [SwitchDelegate].
class BasicSwitchDelegate extends SwitchDelegate {
  /// Creates a baseline switch delegate.
  const BasicSwitchDelegate();

  @override
  Widget root(SwitchContext context) {
    return _SwitchRoot(context: context);
  }
}

class _SwitchRoot extends StatefulWidget {
  const _SwitchRoot({required this.context});

  final SwitchContext context;

  @override
  State<_SwitchRoot> createState() => _SwitchRootState();
}

class _SwitchRootState extends State<_SwitchRoot> {
  bool? _uncontrolled;

  @override
  Widget build(BuildContext context) {
    final ctx = widget.context;
    final group = SwitchGroupScope.maybeOf(context);
    final inGroup = group != null && ctx.value != null;
    final checked = inGroup
        ? group.value.contains(ctx.value)
        : (ctx.checked ?? _uncontrolled ?? ctx.defaultChecked);
    final disabled = ctx.disabled || (group?.disabled ?? false);
    final theme = MantleTheme.of(context);
    final scheme = MantleProvider.colorSchemeOf(context);
    final scale = theme.scale;
    final height = inputSizeToken(switchHeights, ctx.size) * scale;
    final width = inputSizeToken(switchWidths, ctx.size) * scale;
    final thumb = inputSizeToken(switchThumbSizes, ctx.size) * scale;
    final color = resolveThemeColor(theme, scheme, ctx.color);
    final track = checked
        ? color
        : (scheme == MantleColorScheme.dark
              ? theme.colors['dark'][4]
              : theme.colors['gray'][3]);
    final pad = (height - thumb) / 2;

    return BasicInlineInput(
      labelPosition: ctx.labelPosition,
      label: ctx.label,
      description: ctx.description,
      error: ctx.error,
      onTap: disabled
          ? null
          : () {
              if (group?.readOnly ?? false) {
                return;
              }
              if (inGroup) {
                final current = [...group.value];
                if (current.contains(ctx.value)) {
                  current.remove(ctx.value);
                } else {
                  current.add(ctx.value!);
                }
                group.onChanged?.call(current);
              } else {
                final next = !checked;
                if (ctx.checked == null) {
                  setState(() => _uncontrolled = next);
                }
                ctx.onChanged?.call(next);
              }
            },
      control: SizedBox(
        width: width,
        height: height,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: track,
            borderRadius: ctx.radius,
          ),
          child: Stack(
            children: [
              if (ctx.onLabel != null && checked)
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: ctx.onLabel,
                  ),
                ),
              if (ctx.offLabel != null && !checked)
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: ctx.offLabel,
                  ),
                ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 150),
                top: pad,
                left: checked ? width - thumb - pad : pad,
                child: SizedBox(
                  width: thumb,
                  height: thumb,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: theme.white,
                      shape: BoxShape.circle,
                    ),
                    child: ctx.thumbIcon,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Baseline [SwitchGroupDelegate].
class BasicSwitchGroupDelegate extends SwitchGroupDelegate {
  /// Creates a baseline switch group delegate.
  const BasicSwitchGroupDelegate();

  @override
  Widget root(SwitchGroupContext context) {
    return _SwitchGroupRoot(context: context);
  }
}

class _SwitchGroupRoot extends StatefulWidget {
  const _SwitchGroupRoot({required this.context});

  final SwitchGroupContext context;

  @override
  State<_SwitchGroupRoot> createState() => _SwitchGroupRootState();
}

class _SwitchGroupRootState extends State<_SwitchGroupRoot> {
  List<String>? _uncontrolled;

  List<String> get _value =>
      widget.context.value ??
      _uncontrolled ??
      widget.context.defaultValue ??
      const [];

  @override
  Widget build(BuildContext context) {
    final ctx = widget.context;
    return BasicInputWrapper(
      size: ctx.size,
      label: ctx.label,
      description: ctx.description,
      error: ctx.error,
      child: SwitchGroupScope(
        value: _value,
        disabled: ctx.disabled,
        readOnly: ctx.readOnly,
        size: ctx.size,
        onChanged: (next) {
          if (ctx.value == null) {
            setState(() => _uncontrolled = next);
          }
          ctx.onChanged?.call(next);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: ctx.children,
        ),
      ),
    );
  }
}
