import 'package:flutter/widget_previews.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/preview_kit.dart';
import 'package:mantle_widgets/navigation.dart';

@Preview(
  name: 'Stepper usage',
  wrapper: wrapMantlePreview,
  size: Size(480, 180),
)
@Preview(
  name: 'Stepper usage (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// stepperUsagePreview gallery.
Widget stepperUsagePreview() {
  return const SizedBox(
    width: 440,
    height: 140,
    child: Stepper(
      active: 1,
      children: [
        StepperStep(label: Text('First'), child: Text('Step 1 body')),
        StepperStep(label: Text('Second'), child: Text('Step 2 body')),
        StepperStep(label: Text('Final'), child: Text('Step 3 body')),
        StepperCompleted(child: Text('Done')),
      ],
    ),
  );
}

/// Catalog of the displays above, stacked for a single preview.
@Preview(name: 'Stepper catalog', wrapper: wrapMantlePreview)
@Preview(
  name: 'Stepper catalog (dark)',
  wrapper: wrapMantlePreview,
  brightness: Brightness.dark,
)
/// stepperCatalogPreview gallery.
Widget stepperCatalogPreview() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisSize: MainAxisSize.min,
    children: [
      PreviewSection(title: 'Usage', child: stepperUsagePreview()),
    ],
  );
}
