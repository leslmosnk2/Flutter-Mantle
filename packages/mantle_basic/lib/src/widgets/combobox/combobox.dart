import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/combobox/combobox_chrome.dart';
import 'package:mantle_basic/src/widgets/inputs/input_field.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [ComboboxDelegate]: target + dropdown with [ComboboxScope].
class BasicComboboxDelegate extends ComboboxDelegate {
  /// Creates a baseline combobox delegate.
  const BasicComboboxDelegate();

  /// Key on the visible dropdown panel.
  static const Key dropdownKey = comboboxDropdownKey;

  /// Key for an option with [value].
  static Key optionKey(String value) => comboboxOptionKey(value);

  @override
  Widget root(ComboboxContext context) {
    return _BasicCombobox(comboboxContext: context);
  }
}

class _BasicCombobox extends StatefulWidget {
  const _BasicCombobox({required this.comboboxContext});

  final ComboboxContext comboboxContext;

  @override
  State<_BasicCombobox> createState() => _BasicComboboxState();
}

class _BasicComboboxState extends State<_BasicCombobox> {
  var _opened = false;
  var _search = '';

  ComboboxContext get _ctx => widget.comboboxContext;

  bool get _openedEffective => _ctx.dropdownOpened ?? _opened;

  void _setOpened(bool opened) {
    if (_ctx.readOnly || opened == _openedEffective) {
      return;
    }
    if (_ctx.dropdownOpened == null) {
      setState(() => _opened = opened);
    }
    if (opened) {
      _ctx.onDropdownOpen?.call();
    } else {
      _ctx.onDropdownClose?.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ComboboxScope(
      opened: _openedEffective,
      size: _ctx.size,
      readOnly: _ctx.readOnly,
      openDropdown: () => _setOpened(true),
      closeDropdown: () => _setOpened(false),
      toggleDropdown: () => _setOpened(!_openedEffective),
      onOptionSubmit: _ctx.onOptionSubmit,
      search: _search,
      onSearchChange: (value) => setState(() => _search = value),
      dropdownPadding: _ctx.dropdownPadding,
      maxDropdownHeight: _ctx.maxDropdownHeight,
      withScrollArea: _ctx.withScrollArea,
      background: _ctx.style.background,
      borderColor: _ctx.style.borderColor,
      radius: _ctx.style.radius,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: _ctx.children,
      ),
    );
  }
}

/// Baseline [ComboboxTargetDelegate].
class BasicComboboxTargetDelegate extends ComboboxTargetDelegate {
  /// Creates a baseline target delegate.
  const BasicComboboxTargetDelegate();

  @override
  Widget root(ComboboxTargetContext context) {
    final scope = ComboboxScope.maybeOf(context.context);
    return Listener(
      behavior: HitTestBehavior.translucent,
      onPointerDown: (_) {
        if (scope == null || scope.readOnly) {
          return;
        }
        scope.toggleDropdown();
      },
      child: context.child,
    );
  }
}

/// Baseline [ComboboxDropdownDelegate].
class BasicComboboxDropdownDelegate extends ComboboxDropdownDelegate {
  /// Creates a baseline dropdown delegate.
  const BasicComboboxDropdownDelegate();

  @override
  Widget root(ComboboxDropdownContext context) {
    final scope = ComboboxScope.maybeOf(context.context);
    final hidden = context.hidden || scope == null || !scope.opened;
    if (hidden) {
      return const SizedBox.shrink();
    }
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: comboboxDropdownPanel(
        context: context.context,
        padding: scope.dropdownPadding,
        maxHeight: scope.maxDropdownHeight,
        withScrollArea: scope.withScrollArea,
        radius: scope.radius,
        background: scope.background,
        borderColor: scope.borderColor,
        child: context.child,
      ),
    );
  }
}

/// Baseline [ComboboxOptionsDelegate].
class BasicComboboxOptionsDelegate extends ComboboxOptionsDelegate {
  /// Creates a baseline options delegate.
  const BasicComboboxOptionsDelegate();

  @override
  Widget root(ComboboxOptionsContext context) {
    return Semantics(
      container: true,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: context.children,
      ),
    );
  }
}

/// Baseline [ComboboxOptionDelegate].
class BasicComboboxOptionDelegate extends ComboboxOptionDelegate {
  /// Creates a baseline option delegate.
  const BasicComboboxOptionDelegate();

  @override
  Widget root(ComboboxOptionContext context) {
    return _BasicComboboxOption(optionContext: context);
  }
}

class _BasicComboboxOption extends StatefulWidget {
  const _BasicComboboxOption({required this.optionContext});

  final ComboboxOptionContext optionContext;

  @override
  State<_BasicComboboxOption> createState() => _BasicComboboxOptionState();
}

class _BasicComboboxOptionState extends State<_BasicComboboxOption> {
  var _hovered = false;

  @override
  Widget build(BuildContext context) {
    final ctx = widget.optionContext;
    final scope = ComboboxScope.maybeOf(ctx.context);
    final theme = MantleTheme.of(ctx.context);
    final scheme = MantleProvider.colorSchemeOf(ctx.context);
    final isDark = scheme == MantleColorScheme.dark;
    final size = scope?.size ?? 'sm';
    final selected = ctx.selected || ctx.active;
    final disabled = ctx.disabled;

    Color background;
    Color foreground;
    if (disabled) {
      background = const Color(0x00000000);
      foreground = isDark ? theme.colors['dark'][3] : theme.colors['gray'][5];
    } else if (selected) {
      background = theme.primary[theme.primaryShade.indexFor(isDark: isDark)];
      foreground = theme.white;
    } else if (_hovered) {
      background = isDark ? theme.colors['dark'][7] : theme.colors['gray'][0];
      foreground = isDark ? theme.white : theme.black;
    } else {
      background = const Color(0x00000000);
      foreground = isDark ? theme.white : theme.black;
    }

    return MouseRegion(
      onEnter: disabled ? null : (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      cursor: disabled
          ? SystemMouseCursors.forbidden
          : SystemMouseCursors.click,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: disabled
            ? null
            : () {
                if (scope?.readOnly ?? false) {
                  return;
                }
                scope?.onOptionSubmit?.call(ctx.value);
              },
        child: Opacity(
          opacity: disabled ? 0.35 : 1,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: background,
              borderRadius: BorderRadius.all(theme.resolvedDefaultRadius),
            ),
            child: Padding(
              padding: optionPaddingFor(size),
              child: DefaultTextStyle.merge(
                style: TextStyle(
                  fontSize:
                      (theme.typography.fontSize.getOrNull(size) ?? 14) *
                      theme.scale,
                  color: foreground,
                ),
                child: IconTheme.merge(
                  data: IconThemeData(color: foreground, size: 16),
                  child: ctx.child,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Baseline [ComboboxGroupDelegate].
class BasicComboboxGroupDelegate extends ComboboxGroupDelegate {
  /// Creates a baseline group delegate.
  const BasicComboboxGroupDelegate();

  @override
  Widget root(ComboboxGroupContext context) {
    final theme = MantleTheme.of(context.context);
    final scheme = MantleProvider.colorSchemeOf(context.context);
    final scope = ComboboxScope.maybeOf(context.context);
    final size = scope?.size ?? 'sm';
    final fontSize =
        (theme.typography.fontSize.getOrNull(size) ?? 14) * theme.scale * 0.85;
    final dimmed = inputDimmedColor(theme, scheme);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (context.label != null)
          Padding(
            padding: optionPaddingFor(size),
            child: Text(
              context.label!,
              style: TextStyle(
                fontSize: fontSize,
                fontWeight: FontWeight.w500,
                color: dimmed,
              ),
            ),
          ),
        ...context.children,
      ],
    );
  }
}

/// Baseline [ComboboxEmptyDelegate].
class BasicComboboxEmptyDelegate extends ComboboxEmptyDelegate {
  /// Creates a baseline empty delegate.
  const BasicComboboxEmptyDelegate();

  @override
  Widget root(ComboboxEmptyContext context) {
    final theme = MantleTheme.of(context.context);
    final scheme = MantleProvider.colorSchemeOf(context.context);
    final scope = ComboboxScope.maybeOf(context.context);
    final size = scope?.size ?? 'sm';
    return Padding(
      padding: optionPaddingFor(size),
      child: DefaultTextStyle.merge(
        style: TextStyle(
          fontSize:
              (theme.typography.fontSize.getOrNull(size) ?? 14) * theme.scale,
          color: inputDimmedColor(theme, scheme),
        ),
        textAlign: TextAlign.center,
        child: context.child,
      ),
    );
  }
}

/// Baseline [ComboboxSearchDelegate].
class BasicComboboxSearchDelegate extends ComboboxSearchDelegate {
  /// Creates a baseline search delegate.
  const BasicComboboxSearchDelegate();

  @override
  Widget root(ComboboxSearchContext context) {
    final theme = MantleTheme.of(context.context);
    final scheme = MantleProvider.colorSchemeOf(context.context);
    final scope = ComboboxScope.maybeOf(context.context);
    final size = scope?.size ?? 'sm';
    final fontSize =
        (theme.typography.fontSize.getOrNull(size) ?? 14) * theme.scale;
    final colors = resolveInputChrome(
      theme: theme,
      scheme: scheme,
      variant: 'default',
      hasError: false,
      withErrorStyles: true,
    );
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: BasicEditableField(
        value: context.value,
        onChanged: (value) {
          context.onChanged?.call(value);
          scope?.onSearchChange?.call(value);
        },
        placeholder: context.placeholder,
        style: TextStyle(fontSize: fontSize, color: colors.foreground),
        placeholderStyle: TextStyle(
          fontSize: fontSize,
          color: colors.placeholder,
        ),
        cursorColor: colors.focusBorder,
        enabled: !context.disabled,
      ),
    );
  }
}

/// Baseline [ComboboxChevronDelegate].
class BasicComboboxChevronDelegate extends ComboboxChevronDelegate {
  /// Creates a baseline chevron delegate.
  const BasicComboboxChevronDelegate();

  @override
  Widget root(ComboboxChevronContext context) {
    final theme = MantleTheme.of(context.context);
    final scheme = MantleProvider.colorSchemeOf(context.context);
    final scope = ComboboxScope.maybeOf(context.context);
    final size = context.size ?? scope?.size ?? 'sm';
    final box = comboboxChevronSizes[size] ?? comboboxChevronSizes['sm']!;
    final color = context.error
        ? inputErrorColor(theme)
        : (scheme == MantleColorScheme.dark
              ? theme.colors['dark'][3]
              : theme.colors['gray'][6]);
    return SizedBox.square(
      dimension: box * theme.scale,
      child: CustomPaint(painter: ComboboxChevronPainter(color: color)),
    );
  }
}

/// Baseline [ComboboxHeaderDelegate].
class BasicComboboxHeaderDelegate extends ComboboxHeaderDelegate {
  /// Creates a baseline header delegate.
  const BasicComboboxHeaderDelegate();

  @override
  Widget root(ComboboxHeaderContext context) {
    return _edge(context.context, context.child, top: true);
  }
}

/// Baseline [ComboboxFooterDelegate].
class BasicComboboxFooterDelegate extends ComboboxFooterDelegate {
  /// Creates a baseline footer delegate.
  const BasicComboboxFooterDelegate();

  @override
  Widget root(ComboboxFooterContext context) {
    return _edge(context.context, context.child, top: false);
  }
}

Widget _edge(BuildContext context, Widget child, {required bool top}) {
  final theme = MantleTheme.of(context);
  final scheme = MantleProvider.colorSchemeOf(context);
  final border = BorderSide(
    color: scheme == MantleColorScheme.dark
        ? theme.colors['dark'][4]
        : theme.colors['gray'][2],
  );
  return DecoratedBox(
    decoration: BoxDecoration(
      border: Border(
        bottom: top ? border : BorderSide.none,
        top: top ? BorderSide.none : border,
      ),
    ),
    child: child,
  );
}
