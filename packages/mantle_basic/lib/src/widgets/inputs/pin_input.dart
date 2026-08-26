import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/inputs/input_field.dart';
import 'package:mantle_basic/src/widgets/inputs/input_tokens.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/inputs.dart';

/// Baseline [PinInputDelegate].
class BasicPinInputDelegate extends PinInputDelegate {
  /// Creates a baseline pin input delegate.
  const BasicPinInputDelegate();

  @override
  Widget root(PinInputContext context) {
    return _PinInputRoot(context: context);
  }
}

class _PinInputRoot extends StatefulWidget {
  const _PinInputRoot({required this.context});

  final PinInputContext context;

  @override
  State<_PinInputRoot> createState() => _PinInputRootState();
}

class _PinInputRootState extends State<_PinInputRoot> {
  String? _uncontrolled;
  late List<FocusNode> _nodes;

  @override
  void initState() {
    super.initState();
    _nodes = List<FocusNode>.generate(
      widget.context.length,
      (_) => FocusNode(),
    );
  }

  @override
  void didUpdateWidget(covariant _PinInputRoot oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.context.length != widget.context.length) {
      for (final node in _nodes) {
        node.dispose();
      }
      _nodes = List<FocusNode>.generate(
        widget.context.length,
        (_) => FocusNode(),
      );
    }
  }

  @override
  void dispose() {
    for (final node in _nodes) {
      node.dispose();
    }
    super.dispose();
  }

  String get _value =>
      widget.context.value ??
      _uncontrolled ??
      widget.context.defaultValue ??
      '';

  void _setChar(int index, String char) {
    if (widget.context.disabled || widget.context.readOnly) {
      return;
    }
    final chars = List<String>.generate(
      widget.context.length,
      (i) => i < _value.length ? _value[i] : '',
    );
    chars[index] = char;
    final next = chars.join();
    if (widget.context.value == null) {
      setState(() => _uncontrolled = next);
    }
    widget.context.onChanged?.call(next);
    if (next.replaceAll(' ', '').length >= widget.context.length) {
      widget.context.onComplete?.call(next);
    }
    if (widget.context.manageFocus &&
        char.isNotEmpty &&
        index < widget.context.length - 1) {
      _nodes[index + 1].requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    final ctx = widget.context;
    final theme = MantleTheme.of(context);
    final gap = resolveSpacing(theme, ctx.gap);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (var i = 0; i < ctx.length; i++) ...[
          if (i > 0) SizedBox(width: gap),
          SizedBox(
            width: inputSizeToken(inputHeights, ctx.size) * theme.scale,
            child: BasicTextInputBody(
              variant: inputVariantName(ctx.variant),
              size: ctx.size,
              radius: ctx.radius,
              value: i < _value.length ? _value[i] : '',
              onChanged: (raw) {
                final char = raw.isEmpty ? '' : raw.characters.last;
                if (char.isNotEmpty && !_allowed(char, ctx.type)) {
                  return;
                }
                _setChar(i, char);
              },
              placeholder: ctx.placeholder,
              disabled: ctx.disabled,
              readOnly: ctx.readOnly,
              error: ctx.error,
              obscureText: ctx.mask,
              keyboardType: ctx.type == PinInputType.number
                  ? TextInputType.number
                  : TextInputType.text,
            ),
          ),
        ],
      ],
    );
  }

  bool _allowed(String char, PinInputType type) {
    return switch (type) {
      PinInputType.number => RegExp(r'^\d$').hasMatch(char),
      PinInputType.alphanumeric => RegExp(r'^[A-Za-z0-9]$').hasMatch(char),
    };
  }
}
