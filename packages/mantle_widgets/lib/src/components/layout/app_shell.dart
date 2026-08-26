// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/layout/types.dart';

part 'app_shell.g.dart';

/// Source-of-truth contract for AppShell: header / navbar / main / aside / footer.
@MantleComponent(
  name: 'AppShell',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<List<Widget>>('children'),
    MantleProperty<AppShellHeaderConfig>('header', nullable: true),
    MantleProperty<AppShellNavbarConfig>('navbar', nullable: true),
    MantleProperty<AppShellAsideConfig>('aside', nullable: true),
    MantleProperty<AppShellFooterConfig>('footer', nullable: true),
    MantleProperty<String>('padding', nullable: true),
    MantleProperty<bool>('withBorder', nullable: true, defaultValue: true),
    MantleProperty<AppShellLayout>(
      'layout',
      nullable: true,
      defaultValue: AppShellLayout.defaults,
    ),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
  ],
)
abstract class MantleAppShellContract {
  /// Builds the shell and provides [AppShellScope].
  @MantleComponent.slot()
  Widget root(AppShellContext context);
}

/// Source-of-truth contract for AppShellHeader (Mantine `AppShell.Header`).
@MantleComponent(
  name: 'AppShellHeader',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<bool>('withBorder', nullable: true),
  ],
)
abstract class MantleAppShellHeaderContract {
  /// Builds the header chrome.
  @MantleComponent.slot()
  Widget root(AppShellHeaderContext context);
}

/// Source-of-truth contract for AppShellNavbar (Mantine `AppShell.Navbar`).
@MantleComponent(
  name: 'AppShellNavbar',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<bool>('withBorder', nullable: true),
  ],
)
abstract class MantleAppShellNavbarContract {
  /// Builds the navbar chrome.
  @MantleComponent.slot()
  Widget root(AppShellNavbarContext context);
}

/// Source-of-truth contract for AppShellAside (Mantine `AppShell.Aside`).
@MantleComponent(
  name: 'AppShellAside',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<bool>('withBorder', nullable: true),
  ],
)
abstract class MantleAppShellAsideContract {
  /// Builds the aside chrome.
  @MantleComponent.slot()
  Widget root(AppShellAsideContext context);
}

/// Source-of-truth contract for AppShellFooter (Mantine `AppShell.Footer`).
@MantleComponent(
  name: 'AppShellFooter',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<bool>('withBorder', nullable: true),
  ],
)
abstract class MantleAppShellFooterContract {
  /// Builds the footer chrome.
  @MantleComponent.slot()
  Widget root(AppShellFooterContext context);
}

/// Source-of-truth contract for AppShellMain (Mantine `AppShell.Main`).
@MantleComponent(
  name: 'AppShellMain',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
  ],
)
abstract class MantleAppShellMainContract {
  /// Builds the main content area.
  @MantleComponent.slot()
  Widget root(AppShellMainContext context);
}

/// Source-of-truth contract for AppShellSection (Mantine `AppShell.Section`).
@MantleComponent(
  name: 'AppShellSection',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<bool>('grow', nullable: true, defaultValue: false),
  ],
)
abstract class MantleAppShellSectionContract {
  /// Builds a grouped region inside navbar or aside.
  @MantleComponent.slot()
  Widget root(AppShellSectionContext context);
}
