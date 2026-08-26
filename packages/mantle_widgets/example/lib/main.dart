import 'package:flutter/widgets.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

void main() {
  runApp(
    MantleProvider(
      theme: BasicTheme(),
      child: const Directionality(
        textDirection: TextDirection.ltr,
        child: ColoredBox(
          color: Color(0xFFF8F9FA),
          child: Center(
            child: Button.filled(
              onPressed: _noop,
              child: Text('Save'),
            ),
          ),
        ),
      ),
    ),
  );
}

void _noop() {}
