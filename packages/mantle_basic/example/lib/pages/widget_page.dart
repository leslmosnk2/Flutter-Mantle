import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/widgets/demo_panel.dart';
import 'package:gallery/widgets/gallery_text.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

class WidgetPage extends StatelessWidget {
  const WidgetPage({required this.page, super.key});

  final GalleryPage page;

  @override
  Widget build(BuildContext context) {
    return ScrollArea(
      scrollbars: ScrollAreaScrollbars.y,
      child: MContainer(
        size: 'md',
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: MStack(
            gap: 'lg',
            align: CrossAxisAlignment.stretch,
            children: [
              GalleryTitle(page.title),
              GalleryText(page.description),
              const Code(
                child: Text(
                  "import 'package:mantle_widgets/mantle_widgets.dart';",
                ),
              ),
              for (final demo in page.demos) DemoPanel(demo: demo),
            ],
          ),
        ),
      ),
    );
  }
}
