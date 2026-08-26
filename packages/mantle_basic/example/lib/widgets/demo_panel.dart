import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/gallery_text.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

class DemoPanel extends StatefulWidget {
  const DemoPanel({required this.demo, super.key});

  final GalleryDemo demo;

  @override
  State<DemoPanel> createState() => _DemoPanelState();
}

class _DemoPanelState extends State<DemoPanel> {
  bool _codeOpen = false;

  @override
  Widget build(BuildContext context) {
    final demo = widget.demo;
    return MStack(
      gap: 'sm',
      align: CrossAxisAlignment.stretch,
      children: [
        GalleryTitle(demo.title, order: 3),
        if (demo.description != null) GalleryText(demo.description!),
        Paper(
          withBorder: true,
          radius: BorderRadius.circular(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(24),
                child: demo.builder(context),
              ),
              UnstyledButton(
                onPressed: () => setState(() => _codeOpen = !_codeOpen),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 10,
                  ),
                  child: GalleryText(
                    _codeOpen ? 'Hide code' : 'Show code',
                    size: 'sm',
                  ),
                ),
              ),
              if (_codeOpen)
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                  child: Code(
                    block: true,
                    child: Text(demo.code.trim()),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
