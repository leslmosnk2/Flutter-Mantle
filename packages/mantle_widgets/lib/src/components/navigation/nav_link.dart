// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/navigation/types.dart';

part 'nav_link.g.dart';

/// Source-of-truth contract for NavLink: a navigation row with nested links.
@MantleComponent(
  name: 'NavLink',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('label'),
    MantleProperty<Widget>('description', nullable: true),
    MantleProperty<Widget>('leftSection', nullable: true),
    MantleProperty<Widget>('rightSection', nullable: true),
    MantleProperty<List<Widget>>('children', nullable: true),
    MantleProperty<bool>('active', nullable: true, defaultValue: false),
    MantleProperty<bool>('opened', nullable: true, defaultValue: false),
    MantleProperty<bool>('disabled', nullable: true, defaultValue: false),
    MantleProperty<NavLinkOnTap>('onTap', nullable: true),
    MantleProperty<NavLinkOnOpenedChange>('onOpenedChange', nullable: true),
    MantleProperty<String>(
      'childrenOffset',
      nullable: true,
      defaultValue: 'lg',
    ),
    MantleProperty<String>('color', nullable: true),
  ],
)
abstract class MantleNavLinkContract {
  /// Builds the link row and optional nested children.
  @MantleComponent.slot()
  Widget root(NavLinkContext context);
}
