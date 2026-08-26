import 'package:flutter/widgets.dart';
import 'package:gallery/router.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

class GalleryApp extends StatefulWidget {
  const GalleryApp({super.key});

  @override
  State<GalleryApp> createState() => _GalleryAppState();
}

class _GalleryAppState extends State<GalleryApp> {
  final GalleryRouterDelegate _delegate = GalleryRouterDelegate();
  final GalleryRouteInformationParser _parser = GalleryRouteInformationParser();

  @override
  void dispose() {
    _delegate.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MantleProvider(
      theme: BasicTheme(),
      defaultColorScheme: MantleColorScheme.auto,
      colorSchemeManager: MemoryColorSchemeManager(),
      child: WidgetsApp.router(
        color: const Color(0xFF228BE6),
        title: 'Mantle',
        debugShowCheckedModeBanner: false,
        routerDelegate: _delegate,
        routeInformationParser: _parser,
      ),
    );
  }
}
