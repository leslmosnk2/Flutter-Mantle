// Contracts are single-method by design so themes only implement `root`.
// ignore_for_file: one_member_abstracts

import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/src/components/typography/types.dart';

part 'text.g.dart';

/// Source-of-truth contract for MText (Mantine `Text`).
///
/// Named `MText` because [Text] collides with `package:flutter/widgets.dart`.
@MantleComponent(
  name: 'MText',
  variants: [MantleVariant('default')],
  properties: [
    MantleProperty<Widget>('child'),
    MantleProperty<String>('size', nullable: true, defaultValue: 'md'),
    MantleProperty<FontWeight>('fw', nullable: true),
    MantleProperty<MTextTruncate>('truncate', nullable: true),
    MantleProperty<int>('lineClamp', nullable: true),
    MantleProperty<String>('color', nullable: true),
    MantleProperty<TextAlign>('align', nullable: true),
    MantleProperty<bool>('inherit', nullable: true, defaultValue: false),
    MantleProperty<bool>('inline', nullable: true, defaultValue: false),
    MantleProperty<bool>('span', nullable: true, defaultValue: false),
  ],
)
abstract class MantleMTextContract {
  /// Builds styled text around [MTextContext.child].
  @MantleComponent.slot()
  Widget root(MTextContext context);
}
