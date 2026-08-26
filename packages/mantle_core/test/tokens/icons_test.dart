import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mantle_core/mantle_core.dart';

IconTokenBuilder _icon(String name) =>
    ({size = 24, color = const Color(0xFF000000)}) => Text('$name-$size');

void main() {
  group('MantleIcons', () {
    test('[] returns an icon builder', () {
      final icons = MantleIcons({'home': _icon('home')});
      final widget = icons['home'](size: 16, color: const Color(0xFFFF0000));

      expect(widget, isA<Text>());
      expect((widget as Text).data, contains('home-16'));
    });

    test('[] throws when icon is missing', () {
      const icons = MantleIcons({});

      expect(
        () => icons['missing'],
        throwsA(
          isA<ArgumentError>().having(
            (e) => e.message,
            'message',
            'No icon named "missing"',
          ),
        ),
      );
    });

    test('.contains() reports membership', () {
      final icons = MantleIcons({'home': _icon('home')});

      expect(icons.contains('home'), isTrue);
      expect(icons.contains('missing'), isFalse);
    });

    test('.lerpWith() snaps builders at t = 0.5', () {
      final a = MantleIcons({'home': _icon('a')});
      final b = MantleIcons({'home': _icon('b')});

      final before = a.lerpWith(b, 0.49);
      final after = a.lerpWith(b, 0.5);

      expect((before['home']() as Text).data, startsWith('a-'));
      expect((after['home']() as Text).data, startsWith('b-'));
    });

    test('.lerpWith() keeps tokens present in only one side', () {
      final a = MantleIcons({'home': _icon('home')});
      final b = MantleIcons({'search': _icon('search')});
      final mid = a.lerpWith(b, 0.5);

      expect(mid.contains('home'), isTrue);
      expect(mid.contains('search'), isTrue);
    });

    test('.mergeWith() prefers this for overlapping keys', () {
      final a = MantleIcons({
        'home': _icon('a-home'),
        'shared': _icon('a-shared'),
      });
      final b = MantleIcons({
        'shared': _icon('b-shared'),
        'search': _icon('b-search'),
      });
      final merged = a.mergeWith(b);

      expect((merged['home']() as Text).data, startsWith('a-home'));
      expect((merged['shared']() as Text).data, startsWith('a-shared'));
      expect((merged['search']() as Text).data, startsWith('b-search'));
    });
  });
}
