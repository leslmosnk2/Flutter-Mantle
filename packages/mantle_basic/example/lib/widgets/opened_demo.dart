import 'package:flutter/widgets.dart';

/// Hosts overlay-style demos that need an open/close flag.
class OpenedDemo extends StatefulWidget {
  const OpenedDemo({required this.builder, super.key});

  final Widget Function(
    BuildContext context, {
    required bool opened,
    required VoidCallback open,
    required VoidCallback close,
  })
  builder;

  @override
  State<OpenedDemo> createState() => _OpenedDemoState();
}

class _OpenedDemoState extends State<OpenedDemo> {
  bool _opened = false;

  @override
  Widget build(BuildContext context) {
    return widget.builder(
      context,
      opened: _opened,
      open: () => setState(() => _opened = true),
      close: () => setState(() => _opened = false),
    );
  }
}
