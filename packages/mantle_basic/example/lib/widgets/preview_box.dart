import 'package:flutter/widgets.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

class PreviewBox extends StatelessWidget {
  const PreviewBox({
    this.label,
    this.height = 48,
    super.key,
  });

  final String? label;
  final double height;

  @override
  Widget build(BuildContext context) {
    final theme = MantleTheme.of(context);
    final scheme = MantleProvider.colorSchemeOf(context);
    final fill = scheme == MantleColorScheme.dark
        ? theme.colors['dark'][5]
        : theme.colors['blue'][1];
    return Box(
      height: height,
      color: fill,
      radius: BorderRadius.circular(4),
      child: label == null
          ? null
          : MCenter(
              child: MText(size: 'sm', child: Text(label!)),
            ),
    );
  }
}
