import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';

/// How `MContainer` centers its child.
enum ContainerStrategy {
  /// `max-width` plus auto horizontal margins.
  block,

  /// CSS grid with a center track (`1fr min(100%, size) 1fr`).
  grid,
}

/// How a `GridCol` sizes itself when not using a numeric span.
enum GridColFit {
  /// Grow to fill leftover space in the row.
  auto,

  /// Size to the child's intrinsic width.
  content,
}

/// Navbar / aside vs header stacking for `AppShell`.
enum AppShellLayout {
  /// Header and footer span the full width; navbar and aside sit between them.
  defaults,

  /// Navbar and aside span the full height; header and footer sit between them.
  alt,
}

/// Breakpoint map mirroring Mantine `{ base, xs, sm, md, lg, xl }` objects.
@immutable
class MantleResponsive<T> {
  /// Creates a mobile-first responsive value.
  const MantleResponsive({
    required this.base,
    this.xs,
    this.sm,
    this.md,
    this.lg,
    this.xl,
  });

  /// Value below the `xs` breakpoint (and the fallback).
  final T base;

  /// Value from `xs` up, unless a larger key is set.
  final T? xs;

  /// Value from `sm` up, unless a larger key is set.
  final T? sm;

  /// Value from `md` up, unless a larger key is set.
  final T? md;

  /// Value from `lg` up, unless a larger key is set.
  final T? lg;

  /// Value from `xl` up.
  final T? xl;

  /// Cascades from [base] through the largest key at or below [breakpoint].
  T resolve(MantleSize breakpoint) {
    var result = base;
    const order = ['xs', 'sm', 'md', 'lg', 'xl'];
    final values = [xs, sm, md, lg, xl];
    final maxIndex = order.indexOf(breakpoint);
    if (maxIndex < 0) {
      return result;
    }
    for (var i = 0; i <= maxIndex; i++) {
      final value = values[i];
      if (value != null) {
        result = value;
      }
    }
    return result;
  }

  /// Resolves against the current theme breakpoint.
  T resolveOf(BuildContext context) {
    final theme = MantleTheme.of(context);
    return resolve(theme.breakpoints.fromContext(context));
  }
}

/// Size and collapse for `AppShellHeader`.
@immutable
class AppShellHeaderConfig {
  /// Creates a header configuration.
  const AppShellHeaderConfig({
    required this.height,
    this.collapsed = false,
    this.offset = true,
  });

  /// Header height in logical pixels.
  final double height;

  /// When true, the header is hidden and does not offset main.
  final bool collapsed;

  /// When false, main is not offset by this header.
  final bool offset;
}

/// Size and collapse for `AppShellFooter`.
@immutable
class AppShellFooterConfig {
  /// Creates a footer configuration.
  const AppShellFooterConfig({
    required this.height,
    this.collapsed = false,
    this.offset = true,
  });

  /// Footer height in logical pixels.
  final double height;

  /// When true, the footer is hidden and does not offset main.
  final bool collapsed;

  /// When false, main is not offset by this footer.
  final bool offset;
}

/// Size, breakpoint, and collapse for `AppShellNavbar`.
@immutable
class AppShellNavbarConfig {
  /// Creates a navbar configuration.
  const AppShellNavbarConfig({
    required this.width,
    this.breakpoint,
    this.collapsedMobile = false,
    this.collapsedDesktop = false,
  });

  /// Navbar width in logical pixels.
  final double width;

  /// Below this breakpoint the navbar uses [collapsedMobile].
  final String? breakpoint;

  /// Collapsed on viewports below [breakpoint].
  final bool collapsedMobile;

  /// Collapsed on viewports at or above [breakpoint].
  final bool collapsedDesktop;
}

/// Size, breakpoint, and collapse for `AppShellAside`.
@immutable
class AppShellAsideConfig {
  /// Creates an aside configuration.
  const AppShellAsideConfig({
    required this.width,
    this.breakpoint,
    this.collapsedMobile = false,
    this.collapsedDesktop = false,
  });

  /// Aside width in logical pixels.
  final double width;

  /// Below this breakpoint the aside uses [collapsedMobile].
  final String? breakpoint;

  /// Collapsed on viewports below [breakpoint].
  final bool collapsedMobile;

  /// Collapsed on viewports at or above [breakpoint].
  final bool collapsedDesktop;
}

/// Layout values published by `AppShell` for section widgets.
class AppShellScope extends InheritedWidget {
  /// Creates an app-shell scope.
  const AppShellScope({
    required this.withBorder,
    required this.layout,
    required this.disabled,
    required this.header,
    required this.navbar,
    required this.aside,
    required this.footer,
    required this.padding,
    required super.child,
    super.key,
  });

  /// Whether sections draw a border unless they override it.
  final bool withBorder;

  /// Header/navbar stacking.
  final AppShellLayout layout;

  /// When true, chrome is hidden.
  final bool disabled;

  /// Header configuration.
  final AppShellHeaderConfig? header;

  /// Navbar configuration.
  final AppShellNavbarConfig? navbar;

  /// Aside configuration.
  final AppShellAsideConfig? aside;

  /// Footer configuration.
  final AppShellFooterConfig? footer;

  /// Main-area padding token.
  final String? padding;

  /// The nearest [AppShellScope], or null.
  static AppShellScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppShellScope>();
  }

  /// The nearest [AppShellScope].
  static AppShellScope of(BuildContext context) {
    final scope = maybeOf(context);
    assert(scope != null, 'AppShell section used outside AppShell');
    return scope!;
  }

  @override
  bool updateShouldNotify(AppShellScope oldWidget) {
    return withBorder != oldWidget.withBorder ||
        layout != oldWidget.layout ||
        disabled != oldWidget.disabled ||
        header != oldWidget.header ||
        navbar != oldWidget.navbar ||
        aside != oldWidget.aside ||
        footer != oldWidget.footer ||
        padding != oldWidget.padding;
  }
}

/// Column count and gutter published by `Grid` for `GridCol`.
class GridScope extends InheritedWidget {
  /// Creates a grid scope.
  const GridScope({
    required this.columns,
    required this.gutter,
    required this.grow,
    required this.justify,
    required this.align,
    required super.child,
    super.key,
  });

  /// Number of columns in a row.
  final int columns;

  /// Resolved gutter in logical pixels.
  final double gutter;

  /// Whether columns in the last row expand.
  final bool grow;

  /// Main-axis packing of a row.
  final MainAxisAlignment justify;

  /// Cross-axis alignment in a row.
  final CrossAxisAlignment align;

  /// The nearest [GridScope], or null.
  static GridScope? maybeOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<GridScope>();
  }

  /// The nearest [GridScope].
  static GridScope of(BuildContext context) {
    final scope = maybeOf(context);
    assert(scope != null, 'GridCol used outside Grid');
    return scope!;
  }

  @override
  bool updateShouldNotify(GridScope oldWidget) {
    return columns != oldWidget.columns ||
        gutter != oldWidget.gutter ||
        grow != oldWidget.grow ||
        justify != oldWidget.justify ||
        align != oldWidget.align;
  }
}
