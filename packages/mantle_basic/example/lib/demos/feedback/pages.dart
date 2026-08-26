import 'package:gallery/catalog.dart';
import 'package:gallery/demos/feedback/alert.dart';
import 'package:gallery/demos/feedback/empty_state.dart';
import 'package:gallery/demos/feedback/loader.dart';
import 'package:gallery/demos/feedback/notification.dart';
import 'package:gallery/demos/feedback/progress.dart';
import 'package:gallery/demos/feedback/ring_progress.dart';
import 'package:gallery/demos/feedback/semi_circle_progress.dart';
import 'package:gallery/demos/feedback/skeleton.dart';

final feedbackPages = <GalleryPage>[
  alertPage,
  emptyStatePage,
  loaderPage,
  notificationPage,
  progressPage,
  ringProgressPage,
  semiCircleProgressPage,
  skeletonPage,
];
