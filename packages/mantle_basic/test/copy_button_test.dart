import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_basic/mantle_basic.dart';
import 'package:mantle_core/testing.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(SystemChannels.platform, (call) async {
          if (call.method == 'Clipboard.setData') {
            return null;
          }
          return null;
        });
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(SystemChannels.platform, null);
  });

  group('BasicCopyButtonDelegate', () {
    testWidgets('builder receives copied after copy', (tester) async {
      await tester.pumpMantle(
        CopyButton(
          value: 'https://mantine.dev',
          timeout: 50,
          builder: (context, {required copied, required copy}) {
            return UnstyledButton(
              onPressed: copy,
              child: Text(copied ? 'Copied' : 'Copy'),
            );
          },
        ),
        theme: BasicTheme(),
      );

      expect(find.text('Copy'), findsOneWidget);
      await tester.tap(find.text('Copy'));
      await tester.pump();
      expect(find.text('Copied'), findsOneWidget);

      await tester.pump(const Duration(milliseconds: 50));
      expect(find.text('Copy'), findsOneWidget);
    });

    testWidgets('onCopy fires after copy', (tester) async {
      var copies = 0;
      await tester.pumpMantle(
        CopyButton(
          value: 'secret',
          onCopy: () => copies++,
          builder: (context, {required copied, required copy}) {
            return UnstyledButton(
              onPressed: copy,
              child: const Text('Copy'),
            );
          },
        ),
        theme: BasicTheme(),
      );

      await tester.tap(find.text('Copy'));
      await tester.pump();
      expect(copies, 1);
    });
  });
}
