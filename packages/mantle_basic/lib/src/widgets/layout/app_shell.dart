import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

Color _shellBorderColor(BuildContext context) {
  final theme = MantleTheme.of(context);
  final scheme = MantleProvider.colorSchemeOf(context);
  if (scheme == MantleColorScheme.dark) {
    return theme.colors['dark'][4];
  }
  return theme.colors['gray'][3];
}

bool _belowBreakpoint(BuildContext context, String? breakpoint) {
  if (breakpoint == null) {
    return false;
  }
  final theme = MantleTheme.of(context);
  final minWidth = theme.breakpoints[breakpoint];
  return MediaQuery.sizeOf(context).width < minWidth;
}

/// Baseline [AppShellDelegate]: pinned header/navbar/aside/footer around main.
class BasicAppShellDelegate extends AppShellDelegate {
  /// Creates a baseline app-shell delegate.
  const BasicAppShellDelegate();

  @override
  Widget root(AppShellContext context) {
    return AppShellScope(
      withBorder: context.withBorder,
      layout: context.layout,
      disabled: context.disabled,
      header: context.header,
      navbar: context.navbar,
      aside: context.aside,
      footer: context.footer,
      padding: context.padding,
      child: _AppShellLayout(shell: context),
    );
  }
}

class _AppShellLayout extends StatelessWidget {
  const _AppShellLayout({required this.shell});

  final AppShellContext shell;

  @override
  Widget build(BuildContext context) {
    AppShellHeader? header;
    AppShellNavbar? navbar;
    AppShellAside? aside;
    AppShellFooter? footer;
    AppShellMain? main;
    for (final child in shell.children) {
      switch (child) {
        case final AppShellHeader value:
          header = value;
        case final AppShellNavbar value:
          navbar = value;
        case final AppShellAside value:
          aside = value;
        case final AppShellFooter value:
          footer = value;
        case final AppShellMain value:
          main = value;
        default:
          break;
      }
    }

    final body = main ?? const SizedBox.expand();
    if (shell.disabled) {
      return body;
    }

    final headerConfig = shell.header;
    final footerConfig = shell.footer;
    final navbarConfig = shell.navbar;
    final asideConfig = shell.aside;

    final showHeader =
        header != null && headerConfig != null && !headerConfig.collapsed;
    final showFooter =
        footer != null && footerConfig != null && !footerConfig.collapsed;

    final navbarMobile = _belowBreakpoint(context, navbarConfig?.breakpoint);
    final asideMobile = _belowBreakpoint(context, asideConfig?.breakpoint);
    final showNavbar =
        navbar != null &&
        navbarConfig != null &&
        !(navbarMobile
            ? navbarConfig.collapsedMobile
            : navbarConfig.collapsedDesktop);
    final showAside =
        aside != null &&
        asideConfig != null &&
        !(asideMobile
            ? asideConfig.collapsedMobile
            : asideConfig.collapsedDesktop);

    final headerBox = showHeader
        ? SizedBox(height: headerConfig.height, child: header)
        : null;
    final footerBox = showFooter
        ? SizedBox(height: footerConfig.height, child: footer)
        : null;
    final navbarBox = showNavbar
        ? SizedBox(width: navbarConfig.width, child: navbar)
        : null;
    final asideBox = showAside
        ? SizedBox(width: asideConfig.width, child: aside)
        : null;

    if (shell.layout == AppShellLayout.alt) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ?navbarBox,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ?headerBox,
                Expanded(child: body),
                ?footerBox,
              ],
            ),
          ),
          ?asideBox,
        ],
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ?headerBox,
        Expanded(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ?navbarBox,
              Expanded(child: body),
              ?asideBox,
            ],
          ),
        ),
        ?footerBox,
      ],
    );
  }
}

bool _sectionBorder(BuildContext context, bool? override) {
  return override ?? AppShellScope.maybeOf(context)?.withBorder ?? true;
}

/// Baseline [AppShellHeaderDelegate].
class BasicAppShellHeaderDelegate extends AppShellHeaderDelegate {
  /// Creates a baseline header delegate.
  const BasicAppShellHeaderDelegate();

  @override
  Widget root(AppShellHeaderContext context) {
    final border = _sectionBorder(context.context, context.withBorder);
    return DecoratedBox(
      decoration: BoxDecoration(
        border: border
            ? Border(
                bottom: BorderSide(color: _shellBorderColor(context.context)),
              )
            : null,
      ),
      child: context.child,
    );
  }
}

/// Baseline [AppShellNavbarDelegate].
class BasicAppShellNavbarDelegate extends AppShellNavbarDelegate {
  /// Creates a baseline navbar delegate.
  const BasicAppShellNavbarDelegate();

  @override
  Widget root(AppShellNavbarContext context) {
    final border = _sectionBorder(context.context, context.withBorder);
    return DecoratedBox(
      decoration: BoxDecoration(
        border: border
            ? Border(
                right: BorderSide(color: _shellBorderColor(context.context)),
              )
            : null,
      ),
      child: context.child,
    );
  }
}

/// Baseline [AppShellAsideDelegate].
class BasicAppShellAsideDelegate extends AppShellAsideDelegate {
  /// Creates a baseline aside delegate.
  const BasicAppShellAsideDelegate();

  @override
  Widget root(AppShellAsideContext context) {
    final border = _sectionBorder(context.context, context.withBorder);
    return DecoratedBox(
      decoration: BoxDecoration(
        border: border
            ? Border(
                left: BorderSide(color: _shellBorderColor(context.context)),
              )
            : null,
      ),
      child: context.child,
    );
  }
}

/// Baseline [AppShellFooterDelegate].
class BasicAppShellFooterDelegate extends AppShellFooterDelegate {
  /// Creates a baseline footer delegate.
  const BasicAppShellFooterDelegate();

  @override
  Widget root(AppShellFooterContext context) {
    final border = _sectionBorder(context.context, context.withBorder);
    return DecoratedBox(
      decoration: BoxDecoration(
        border: border
            ? Border(top: BorderSide(color: _shellBorderColor(context.context)))
            : null,
      ),
      child: context.child,
    );
  }
}

/// Baseline [AppShellMainDelegate].
class BasicAppShellMainDelegate extends AppShellMainDelegate {
  /// Creates a baseline main delegate.
  const BasicAppShellMainDelegate();

  @override
  Widget root(AppShellMainContext context) {
    final paddingToken = AppShellScope.maybeOf(context.context)?.padding;
    if (paddingToken == null) {
      return context.child;
    }
    final padding = resolveSpacing(
      MantleTheme.of(context.context),
      paddingToken,
    );
    return Padding(padding: EdgeInsets.all(padding), child: context.child);
  }
}

/// Baseline [AppShellSectionDelegate].
class BasicAppShellSectionDelegate extends AppShellSectionDelegate {
  /// Creates a baseline section delegate.
  const BasicAppShellSectionDelegate();

  @override
  Widget root(AppShellSectionContext context) {
    if (!context.grow) {
      return context.child;
    }
    return Expanded(
      child: SingleChildScrollView(child: context.child),
    );
  }
}
