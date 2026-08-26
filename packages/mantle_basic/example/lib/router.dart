import 'package:flutter/widgets.dart';
import 'package:gallery/catalog.dart';
import 'package:gallery/pages_registry.dart';
import 'package:gallery/shell/gallery_shell.dart';

class GalleryLocation {
  const GalleryLocation.home() : slug = null;
  const GalleryLocation.widget(this.slug);

  final String? slug;
}

class GalleryRouteInformationParser
    extends RouteInformationParser<GalleryLocation> {
  @override
  Future<GalleryLocation> parseRouteInformation(
    RouteInformation routeInformation,
  ) async {
    final segments = routeInformation.uri.pathSegments;
    if (segments.length >= 2) {
      final slug = '${segments[0]}/${segments[1]}';
      if (pageBySlug(galleryPages, slug) != null) {
        return GalleryLocation.widget(slug);
      }
    }
    return const GalleryLocation.home();
  }

  @override
  RouteInformation restoreRouteInformation(GalleryLocation configuration) {
    final slug = configuration.slug;
    return RouteInformation(
      uri: Uri(path: slug == null ? '/' : '/$slug'),
    );
  }
}

class GalleryRouterDelegate extends RouterDelegate<GalleryLocation>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<GalleryLocation> {
  GalleryRouterDelegate();

  @override
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  String? _slug;

  String? get slug => _slug;

  void goHome() {
    _slug = null;
    notifyListeners();
  }

  void goTo(String slug) {
    _slug = slug;
    notifyListeners();
  }

  @override
  GalleryLocation? get currentConfiguration {
    final slug = _slug;
    return slug == null
        ? const GalleryLocation.home()
        : GalleryLocation.widget(slug);
  }

  @override
  Future<void> setNewRoutePath(GalleryLocation configuration) async {
    _slug = configuration.slug;
  }

  @override
  Future<bool> popRoute() async {
    if (_slug != null) {
      goHome();
      return true;
    }
    return super.popRoute();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onDidRemovePage: (page) {
        _slug = null;
        notifyListeners();
      },
      pages: [
        GalleryHostPage(
          key: ValueKey<String>(_slug ?? 'home'),
          child: GalleryShell(
            slug: _slug,
            onHome: goHome,
            onNavigate: goTo,
          ),
        ),
      ],
    );
  }
}

class GalleryHostPage extends Page<void> {
  const GalleryHostPage({required this.child, super.key});

  final Widget child;

  @override
  Route<void> createRoute(BuildContext context) {
    return PageRouteBuilder<void>(
      settings: this,
      pageBuilder: (context, animation, secondaryAnimation) => child,
    );
  }
}
