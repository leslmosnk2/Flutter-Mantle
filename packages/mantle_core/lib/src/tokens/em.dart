import 'package:flutter/widgets.dart';

/// CSS-style `em` relative to the ambient text style.
///
/// `1.emOf(context)` is the current [DefaultTextStyle] font size (16 when
/// unset), scaled with [MediaQuery.textScalerOf].
extension MantleEm on num {
  /// This number of ems in logical pixels for [context].
  double emOf(BuildContext context) {
    final inherited = context
        .dependOnInheritedWidgetOfExactType<DefaultTextStyle>();
    final fontSize = inherited?.style.fontSize ?? 16;
    return MediaQuery.textScalerOf(context).scale(fontSize * toDouble());
  }
}
