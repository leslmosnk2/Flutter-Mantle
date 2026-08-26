import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Mantine-like [CopyButtonDelegate]: copies [CopyButtonContext.value]
/// to the clipboard and exposes `copied` / `copy` to the builder.
class BasicCopyButtonDelegate extends CopyButtonDelegate {
  /// Creates a baseline copy-button delegate.
  const BasicCopyButtonDelegate();

  @override
  Widget root(CopyButtonContext context) {
    return _BasicCopyButtonRoot(buttonContext: context);
  }
}

class _BasicCopyButtonRoot extends StatefulWidget {
  const _BasicCopyButtonRoot({required this.buttonContext});

  final CopyButtonContext buttonContext;

  @override
  State<_BasicCopyButtonRoot> createState() => _BasicCopyButtonRootState();
}

class _BasicCopyButtonRootState extends State<_BasicCopyButtonRoot> {
  var _copied = false;
  Timer? _timer;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _copy() {
    unawaited(_copyToClipboard());
  }

  Future<void> _copyToClipboard() async {
    await Clipboard.setData(
      ClipboardData(text: widget.buttonContext.value),
    );
    widget.buttonContext.onCopy?.call();
    if (!mounted) {
      return;
    }
    setState(() => _copied = true);
    _timer?.cancel();
    _timer = Timer(
      Duration(milliseconds: widget.buttonContext.timeout),
      () {
        if (mounted) {
          setState(() => _copied = false);
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.buttonContext.builder(
      context,
      copied: _copied,
      copy: _copy,
    );
  }
}
