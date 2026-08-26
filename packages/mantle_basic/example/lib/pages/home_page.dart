import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/pages_registry.dart';
import 'package:gallery/widgets/gallery_text.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    required this.query,
    required this.onOpen,
    super.key,
  });

  final String query;
  final ValueChanged<String> onOpen;

  @override
  Widget build(BuildContext context) {
    final groups = groupedCatalog(filterCatalog(galleryPages, query));
    return ScrollArea(
      scrollbars: ScrollAreaScrollbars.y,
      child: MContainer(
        size: 'lg',
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: MStack(
            gap: 'xl',
            align: CrossAxisAlignment.stretch,
            children: [
              const GalleryTitle('Components'),
              const GalleryText(
                'Live gallery of mantle_widgets, painted by BasicTheme.',
              ),
              for (final group in groups)
                MStack(
                  gap: 'md',
                  align: CrossAxisAlignment.stretch,
                  children: [
                    GalleryTitle(group.title, order: 3),
                    SimpleGrid(
                      cols: 3,
                      spacing: 'md',
                      responsiveCols: const MantleResponsive<int>(
                        base: 1,
                        sm: 2,
                        md: 3,
                      ),
                      children: [
                        for (final page in group.pages)
                          UnstyledButton(
                            onPressed: () => onOpen(page.slug),
                            child: MCard(
                              withBorder: true,
                              padding: 'md',
                              children: [
                                MTitle(
                                  order: 4,
                                  child: Text(page.title),
                                ),
                                MText(
                                  size: 'sm',
                                  color: 'gray',
                                  child: Text(page.description),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
