import 'package:gallery/catalog.dart';
import 'package:gallery/demos/buttons/pages.dart';
import 'package:gallery/demos/combobox/pages.dart';
import 'package:gallery/demos/data_display/pages.dart';
import 'package:gallery/demos/feedback/pages.dart';
import 'package:gallery/demos/inputs/pages.dart';
import 'package:gallery/demos/layout/pages.dart';
import 'package:gallery/demos/miscellaneous/pages.dart';
import 'package:gallery/demos/navigation/pages.dart';
import 'package:gallery/demos/overlays/pages.dart';
import 'package:gallery/demos/typography/pages.dart';

final List<GalleryPage> galleryPages = [
  ...buttonPages,
  ...comboboxPages,
  ...dataDisplayPages,
  ...feedbackPages,
  ...inputPages,
  ...layoutPages,
  ...navigationPages,
  ...overlayPages,
  ...miscellaneousPages,
  ...typographyPages,
];
