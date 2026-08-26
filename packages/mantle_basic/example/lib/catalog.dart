import 'package:flutter/widgets.dart';

class GalleryDemo {
  const GalleryDemo({
    required this.title,
    required this.builder,
    required this.code,
    this.description,
  });

  final String title;
  final String? description;
  final WidgetBuilder builder;
  final String code;
}

class GalleryPage {
  const GalleryPage({
    required this.slug,
    required this.title,
    required this.category,
    required this.description,
    required this.demos,
  });

  /// Path after `/`, e.g. `buttons/button`.
  final String slug;
  final String title;
  final String category;
  final String description;
  final List<GalleryDemo> demos;
}

class GalleryCategory {
  const GalleryCategory({required this.title, required this.pages});

  final String title;
  final List<GalleryPage> pages;
}

List<GalleryCategory> groupedCatalog(List<GalleryPage> pages) {
  final order = <String>[];
  final map = <String, List<GalleryPage>>{};
  for (final page in pages) {
    map
        .putIfAbsent(page.category, () {
          order.add(page.category);
          return <GalleryPage>[];
        })
        .add(page);
  }
  return [
    for (final title in order)
      GalleryCategory(title: title, pages: map[title]!),
  ];
}

List<GalleryPage> filterCatalog(List<GalleryPage> pages, String query) {
  final q = query.trim().toLowerCase();
  if (q.isEmpty) {
    return pages;
  }
  return [
    for (final page in pages)
      if (page.title.toLowerCase().contains(q) ||
          page.category.toLowerCase().contains(q) ||
          page.description.toLowerCase().contains(q) ||
          page.slug.contains(q))
        page,
  ];
}

GalleryPage? pageBySlug(List<GalleryPage> pages, String? slug) {
  if (slug == null) {
    return null;
  }
  for (final page in pages) {
    if (page.slug == slug) {
      return page;
    }
  }
  return null;
}
