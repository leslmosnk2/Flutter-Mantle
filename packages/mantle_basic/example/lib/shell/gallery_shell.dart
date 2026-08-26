import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/pages/home_page.dart';
import 'package:gallery/pages/widget_page.dart';
import 'package:gallery/pages_registry.dart';
import 'package:gallery/widgets/gallery_text.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

class GalleryShell extends StatefulWidget {
  const GalleryShell({
    required this.slug,
    required this.onHome,
    required this.onNavigate,
    super.key,
  });

  final String? slug;
  final VoidCallback onHome;
  final ValueChanged<String> onNavigate;

  @override
  State<GalleryShell> createState() => _GalleryShellState();
}

class _GalleryShellState extends State<GalleryShell> {
  String _query = '';
  bool _mobileNavOpened = false;

  void _navigate(String slug) {
    setState(() => _mobileNavOpened = false);
    widget.onNavigate(slug);
  }

  @override
  Widget build(BuildContext context) {
    final theme = MantleTheme.of(context);
    final scheme = MantleProvider.colorSchemeOf(context);
    final isDark = scheme == MantleColorScheme.dark;
    final background = isDark ? theme.colors['dark'][7] : theme.white;
    final foreground = isDark ? theme.white : theme.black;
    final pages = filterCatalog(galleryPages, _query);
    final groups = groupedCatalog(pages);
    final current = pageBySlug(galleryPages, widget.slug);

    return ColoredBox(
      color: background,
      child: DefaultTextStyle(
        style: theme.typography.body.copyWith(
          color: foreground,
          fontFamily: theme.typography.fontFamily.isEmpty
              ? null
              : theme.typography.fontFamily,
        ),
        child: AppShell(
          padding: 'md',
          header: const AppShellHeaderConfig(height: 60),
          navbar: AppShellNavbarConfig(
            width: 280,
            breakpoint: 'sm',
            collapsedMobile: !_mobileNavOpened,
          ),
          children: [
            AppShellHeader(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Group(
                  gap: 'sm',
                  wrap: false,
                  children: [
                    BreakpointBuilder(
                      builder: (context, breakpoint) {
                        final width = MediaQuery.sizeOf(context).width;
                        final mobile = width < theme.breakpoints['sm'];
                        if (!mobile) {
                          return const SizedBox.shrink();
                        }
                        return Burger(
                          opened: _mobileNavOpened,
                          onTap: () => setState(
                            () => _mobileNavOpened = !_mobileNavOpened,
                          ),
                        );
                      },
                    ),
                    UnstyledButton(
                      onPressed: widget.onHome,
                      child: const GalleryTitle('Mantle', order: 4),
                    ),
                    Expanded(
                      child: TextInput(
                        placeholder: 'Search',
                        value: _query,
                        onChanged: (value) => setState(() => _query = value),
                      ),
                    ),
                    ActionIcon(
                      semanticLabel: 'Toggle color scheme',
                      onPressed: () {
                        MantleProvider.toggleColorScheme(context);
                      },
                      child: Text(isDark ? '☀' : '☾'),
                    ),
                  ],
                ),
              ),
            ),
            AppShellNavbar(
              child: ScrollArea(
                scrollbars: ScrollAreaScrollbars.y,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(12, 16, 12, 32),
                  child: MStack(
                    gap: 'md',
                    align: CrossAxisAlignment.stretch,
                    children: [
                      for (final group in groups) ...[
                        GalleryText(group.title, size: 'xs', color: 'gray'),
                        for (final page in group.pages)
                          NavLink(
                            active: page.slug == widget.slug,
                            label: Text(page.title),
                            onTap: () => _navigate(page.slug),
                          ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
            AppShellMain(
              child: current == null
                  ? HomePage(
                      query: _query,
                      onOpen: _navigate,
                    )
                  : WidgetPage(page: current),
            ),
          ],
        ),
      ),
    );
  }
}
