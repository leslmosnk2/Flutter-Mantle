import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/inputs.dart';

/// Label / description / error stack around an input.
class BasicInputWrapper extends StatelessWidget {
  /// Creates a wrapper.
  const BasicInputWrapper({
    required this.child,
    required this.size,
    this.label,
    this.description,
    this.error,
    this.required = false,
    this.withAsterisk,
    super.key,
  });

  /// The input.
  final Widget child;

  /// Size token for type scale.
  final String size;

  /// Field label.
  final Widget? label;

  /// Helper text.
  final Widget? description;

  /// Error text.
  final Widget? error;

  /// When true, a required asterisk is shown unless [withAsterisk] is set.
  final bool required;

  /// Overrides [required] for the asterisk only.
  final bool? withAsterisk;

  @override
  Widget build(BuildContext context) {
    final theme = MantleTheme.of(context);
    final scheme = MantleProvider.colorSchemeOf(context);
    final scale = theme.scale;
    final fontSize = (theme.typography.fontSize.getOrNull(size) ?? 14) * scale;
    final showAsterisk = withAsterisk ?? required;
    final gap = theme.spacing.all('xs').left * scale / 2;

    Widget? labeled;
    if (label != null) {
      labeled = DefaultTextStyle.merge(
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.w500,
          color: scheme == MantleColorScheme.dark ? theme.white : theme.black,
        ),
        child: showAsterisk
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(child: label!),
                  Text(
                    ' *',
                    style: TextStyle(color: inputErrorColor(theme)),
                  ),
                ],
              )
            : label!,
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (labeled != null) ...[labeled, SizedBox(height: gap)],
        if (description != null) ...[
          DefaultTextStyle.merge(
            style: TextStyle(
              fontSize: fontSize - 2,
              color: inputDimmedColor(theme, scheme),
            ),
            child: description!,
          ),
          SizedBox(height: gap),
        ],
        child,
        if (error != null) ...[
          SizedBox(height: gap),
          DefaultTextStyle.merge(
            style: TextStyle(
              fontSize: fontSize - 2,
              color: inputErrorColor(theme),
            ),
            child: error!,
          ),
        ],
      ],
    );
  }
}

/// Mantine input chrome around [child] (usually [BasicEditableField]).
class BasicInputChrome extends StatelessWidget {
  /// Creates chrome.
  const BasicInputChrome({
    required this.child,
    required this.variant,
    required this.size,
    required this.radius,
    this.leftSection,
    this.rightSection,
    this.disabled = false,
    this.pointer = false,
    this.multiline = false,
    this.minLines,
    this.error = false,
    this.withErrorStyles = true,
    this.focused = false,
    super.key,
  });

  /// Inner field.
  final Widget child;

  /// `default`, `filled`, or `unstyled`.
  final String variant;

  /// Size token.
  final String size;

  /// Corner radius.
  final BorderRadiusGeometry radius;

  /// Leading accessory.
  final Widget? leftSection;

  /// Trailing accessory.
  final Widget? rightSection;

  /// Dimmed, non-interactive look.
  final bool disabled;

  /// `cursor: pointer`.
  final bool pointer;

  /// Grow with content.
  final bool multiline;

  /// Minimum textarea rows.
  final int? minLines;

  /// Error styles.
  final bool error;

  /// Whether error turns the border red.
  final bool withErrorStyles;

  /// Focus ring.
  final bool focused;

  @override
  Widget build(BuildContext context) {
    final theme = MantleTheme.of(context);
    final scheme = MantleProvider.colorSchemeOf(context);
    final scale = theme.scale;
    final height = inputSizeToken(inputHeights, size) * scale;
    final colors = resolveInputChrome(
      theme: theme,
      scheme: scheme,
      variant: variant,
      hasError: error,
      withErrorStyles: withErrorStyles,
    );
    final sectionSize = height - 2;
    final paddingX = height / 3;
    final borderColor = focused ? colors.focusBorder : colors.border;
    final bg = disabled
        ? (scheme == MantleColorScheme.dark
              ? theme.colors['dark'][6]
              : theme.colors['gray'][1])
        : colors.background;

    return Opacity(
      opacity: disabled ? 0.6 : 1,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: bg,
          borderRadius: variant == 'unstyled' ? null : radius,
          border: variant == 'unstyled' ? null : Border.all(color: borderColor),
        ),
        child: MouseRegion(
          cursor: disabled
              ? SystemMouseCursors.forbidden
              : (pointer ? SystemMouseCursors.click : SystemMouseCursors.text),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: height * (minLines ?? 1),
              maxHeight: multiline ? double.infinity : height,
            ),
            child: Row(
              children: [
                if (leftSection != null)
                  SizedBox(
                    width: sectionSize,
                    child: Center(child: leftSection),
                  )
                else
                  SizedBox(width: paddingX),
                Expanded(
                  child: Padding(
                    padding: multiline
                        ? EdgeInsets.symmetric(vertical: height / 6)
                        : EdgeInsets.zero,
                    child: child,
                  ),
                ),
                if (rightSection != null)
                  SizedBox(
                    width: sectionSize,
                    child: Center(child: rightSection),
                  )
                else
                  SizedBox(width: paddingX),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// An [EditableText] with placeholder, used by text-like inputs.
class BasicEditableField extends StatefulWidget {
  /// Creates an editable field.
  const BasicEditableField({
    required this.style,
    required this.cursorColor,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.placeholderStyle,
    this.enabled = true,
    this.readOnly = false,
    this.obscureText = false,
    this.maxLines = 1,
    this.minLines,
    this.keyboardType,
    this.textAlign = TextAlign.start,
    this.onSubmitted,
    this.onFocusChange,
    this.inputFormatters,
    this.autofocus = false,
    super.key,
  });

  /// Controlled value.
  final String? value;

  /// Uncontrolled initial value.
  final String? defaultValue;

  /// Called when the text changes.
  final ValueChanged<String>? onChanged;

  /// Placeholder when empty.
  final String? placeholder;

  /// Typed text style.
  final TextStyle style;

  /// Placeholder style.
  final TextStyle? placeholderStyle;

  /// Caret color.
  final Color cursorColor;

  /// When false, ignores pointer events.
  final bool enabled;

  /// When true, the caret is hidden and edits are rejected.
  final bool readOnly;

  /// Password obscuring.
  final bool obscureText;

  /// Max lines; `null` is unlimited.
  final int? maxLines;

  /// Min lines for autosize.
  final int? minLines;

  /// Keyboard type.
  final TextInputType? keyboardType;

  /// Horizontal alignment.
  final TextAlign textAlign;

  /// Called when the user submits.
  final ValueChanged<String>? onSubmitted;

  /// Focus changes.
  final ValueChanged<bool>? onFocusChange;

  /// Input formatters.
  final List<TextInputFormatter>? inputFormatters;

  /// Auto-focus on mount.
  final bool autofocus;

  @override
  State<BasicEditableField> createState() => _BasicEditableFieldState();
}

class _BasicEditableFieldState extends State<BasicEditableField> {
  late final TextEditingController _controller;
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(
      text: widget.value ?? widget.defaultValue ?? '',
    );
    _focusNode = FocusNode();
    _focusNode.addListener(_handleFocus);
    if (widget.autofocus) {
      _focusNode.requestFocus();
    }
  }

  void _handleFocus() {
    widget.onFocusChange?.call(_focusNode.hasFocus);
    setState(() {});
  }

  @override
  void didUpdateWidget(covariant BasicEditableField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != null && widget.value != _controller.text) {
      _controller.value = TextEditingValue(
        text: widget.value!,
        selection: TextSelection.collapsed(offset: widget.value!.length),
      );
    }
  }

  @override
  void dispose() {
    _focusNode
      ..removeListener(_handleFocus)
      ..dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final empty = _controller.text.isEmpty;
    return IgnorePointer(
      ignoring: !widget.enabled,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          if (empty && widget.placeholder != null)
            Text(
              widget.placeholder!,
              style:
                  widget.placeholderStyle ??
                  widget.style.copyWith(
                    color: widget.style.color?.withValues(alpha: 0.45),
                  ),
              maxLines: widget.maxLines,
              overflow: TextOverflow.ellipsis,
            ),
          EditableText(
            controller: _controller,
            focusNode: _focusNode,
            style: widget.style,
            cursorColor: widget.cursorColor,
            backgroundCursorColor: widget.cursorColor.withValues(alpha: 0.4),
            maxLines: widget.maxLines,
            minLines: widget.minLines,
            obscureText: widget.obscureText,
            readOnly: widget.readOnly || !widget.enabled,
            keyboardType: widget.keyboardType,
            textAlign: widget.textAlign,
            onChanged: widget.onChanged,
            onSubmitted: widget.onSubmitted,
            inputFormatters: widget.inputFormatters,
            enableInteractiveSelection: !widget.obscureText,
          ),
        ],
      ),
    );
  }
}

/// Label beside a checkbox, switch, or radio.
class BasicInlineInput extends StatelessWidget {
  /// Creates an inline labeled control.
  const BasicInlineInput({
    required this.control,
    required this.labelPosition,
    this.label,
    this.description,
    this.error,
    this.onTap,
    super.key,
  });

  /// The box / track / radio.
  final Widget control;

  /// Label side.
  final InputLabelPosition labelPosition;

  /// Label.
  final Widget? label;

  /// Description.
  final Widget? description;

  /// Error.
  final Widget? error;

  /// Toggles the control.
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final theme = MantleTheme.of(context);
    final scheme = MantleProvider.colorSchemeOf(context);
    final gap = theme.spacing.all('xs').left * theme.scale;
    final text = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (label != null)
          DefaultTextStyle.merge(
            style: TextStyle(
              fontSize: 14 * theme.scale,
              color: scheme == MantleColorScheme.dark
                  ? theme.white
                  : theme.black,
            ),
            child: label!,
          ),
        if (description != null)
          DefaultTextStyle.merge(
            style: TextStyle(
              fontSize: 12 * theme.scale,
              color: inputDimmedColor(theme, scheme),
            ),
            child: description!,
          ),
        if (error != null)
          DefaultTextStyle.merge(
            style: TextStyle(
              fontSize: 12 * theme.scale,
              color: inputErrorColor(theme),
            ),
            child: error!,
          ),
      ],
    );

    final labelOnLeft = labelPosition == InputLabelPosition.left;
    final children = labelOnLeft
        ? [if (label != null || description != null) text, control]
        : [control, if (label != null || description != null) text];

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (var i = 0; i < children.length; i++) ...[
            if (i > 0) SizedBox(width: gap),
            children[i],
          ],
        ],
      ),
    );
  }
}

/// Chrome + editable field with focus styles.
class BasicTextInputBody extends StatefulWidget {
  /// Creates a text input body.
  const BasicTextInputBody({
    required this.variant,
    required this.size,
    required this.radius,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.placeholder,
    this.leftSection,
    this.rightSection,
    this.disabled = false,
    this.readOnly = false,
    this.pointer = false,
    this.multiline = false,
    this.minLines,
    this.maxLines = 1,
    this.error = false,
    this.withErrorStyles = true,
    this.obscureText = false,
    this.keyboardType,
    this.onSubmitted,
    this.inputFormatters,
    this.monospace = false,
    super.key,
  });

  /// Visual variant name.
  final String variant;

  /// Size token.
  final String size;

  /// Corner radius.
  final BorderRadiusGeometry radius;

  /// Controlled value.
  final String? value;

  /// Uncontrolled initial value.
  final String? defaultValue;

  /// Text changes.
  final ValueChanged<String>? onChanged;

  /// Placeholder.
  final String? placeholder;

  /// Leading accessory.
  final Widget? leftSection;

  /// Trailing accessory.
  final Widget? rightSection;

  /// Disabled.
  final bool disabled;

  /// Read-only.
  final bool readOnly;

  /// Pointer cursor.
  final bool pointer;

  /// Multiline.
  final bool multiline;

  /// Min lines.
  final int? minLines;

  /// Max lines.
  final int? maxLines;

  /// Error styles.
  final bool error;

  /// Whether error paints the border.
  final bool withErrorStyles;

  /// Obscure text.
  final bool obscureText;

  /// Keyboard.
  final TextInputType? keyboardType;

  /// Submit callback.
  final ValueChanged<String>? onSubmitted;

  /// Formatters.
  final List<TextInputFormatter>? inputFormatters;

  /// Monospace font (JsonInput).
  final bool monospace;

  @override
  State<BasicTextInputBody> createState() => _BasicTextInputBodyState();
}

class _BasicTextInputBodyState extends State<BasicTextInputBody> {
  var _focused = false;

  @override
  Widget build(BuildContext context) {
    final theme = MantleTheme.of(context);
    final scheme = MantleProvider.colorSchemeOf(context);
    final scale = theme.scale;
    final fontSize =
        (theme.typography.fontSize.getOrNull(widget.size) ?? 14) * scale;
    final colors = resolveInputChrome(
      theme: theme,
      scheme: scheme,
      variant: widget.variant,
      hasError: widget.error,
      withErrorStyles: widget.withErrorStyles,
    );
    final style = TextStyle(
      fontSize: widget.monospace ? fontSize - 2 : fontSize,
      height: 1.2,
      color: colors.foreground,
      fontFamily: widget.monospace ? theme.typography.fontFamilyMono : null,
    );

    return BasicInputChrome(
      variant: widget.variant,
      size: widget.size,
      radius: widget.radius,
      leftSection: widget.leftSection,
      rightSection: widget.rightSection,
      disabled: widget.disabled,
      pointer: widget.pointer,
      multiline: widget.multiline,
      minLines: widget.minLines,
      error: widget.error,
      withErrorStyles: widget.withErrorStyles,
      focused: _focused,
      child: BasicEditableField(
        value: widget.value,
        defaultValue: widget.defaultValue,
        onChanged: widget.onChanged,
        placeholder: widget.placeholder,
        style: style,
        placeholderStyle: style.copyWith(color: colors.placeholder),
        cursorColor: colors.foreground,
        enabled: !widget.disabled,
        readOnly: widget.readOnly,
        obscureText: widget.obscureText,
        maxLines: widget.maxLines,
        minLines: widget.minLines,
        keyboardType: widget.keyboardType,
        onSubmitted: widget.onSubmitted,
        inputFormatters: widget.inputFormatters,
        onFocusChange: (focused) {
          setState(() => _focused = focused);
        },
      ),
    );
  }
}
