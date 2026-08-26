import 'package:mantle_gen/src/generator/component_spec.dart';
import 'package:mantle_gen/src/parser/exception.dart';
import 'package:mantle_gen/src/parser/template.dart';
import 'package:mantle_gen/src/template/component.dart';
import 'package:mantle_gen/src/template/token_mixin.dart';
import 'package:test/test.dart';

void main() {
  group('Template.compile', () {
    test('interpolates variables', () {
      final template = Template.compile('Hello {{ name }}!');
      expect(template.render({'name': 'World'}), 'Hello World!');
    });

    test('drops comments', () {
      final template = Template.compile('a{# hidden #}b');
      expect(template.render({}), 'ab');
    });

    test('raw blocks emit literal delimiters', () {
      final template = Template.compile('{% raw %}{{ x }}{% endraw %}');
      expect(template.render({}), '{{ x }}');
    });

    test('throws on unclosed output delimiter', () {
      expect(
        () => Template.compile('{{ missing'),
        throwsA(isA<TemplateException>()),
      );
    });

    test('throws on unclosed tag', () {
      expect(
        () => Template.compile('{% if visible %}'),
        throwsA(isA<TemplateException>()),
      );
    });

    test('trims whitespace with dash markers', () {
      final template = Template.compile(
        'hello\n{%- if visible -%}\nworld{%- endif -%}\n!',
      );
      expect(template.render({'visible': true}), 'helloworld!');
    });
  });

  group('Template control flow', () {
    test('if / elif / else', () {
      final template = Template.compile(
        '{% if flagA %}A{% elif flagB %}B{% else %}C{% endif %}',
      );
      expect(template.render({'flagA': true, 'flagB': false}), 'A');
      expect(template.render({'flagA': false, 'flagB': true}), 'B');
      expect(template.render({'flagA': false, 'flagB': false}), 'C');
    });

    test('not / and / or', () {
      final template = Template.compile(
        '{% if not hidden and show %}yes{% else %}no{% endif %}',
      );
      expect(
        template.render({'hidden': false, 'show': true}),
        'yes',
      );
      expect(
        template.render({'hidden': true, 'show': true}),
        'no',
      );
    });

    test('or binds less tightly than and', () {
      final template = Template.compile(
        '{% if not hidden and show or force %}yes{% else %}no{% endif %}',
      );
      expect(
        template.render({'hidden': false, 'show': false, 'force': true}),
        'yes',
      );
      expect(
        template.render({'hidden': true, 'show': true, 'force': false}),
        'no',
      );
    });

    test('for loop with loop metadata', () {
      final template = Template.compile(
        // One template expression; wrapping it would insert whitespace tokens.
        // ignore: lines_longer_than_80_chars
        '{% for item in items %}{{ loop.index }}:{{ item }}{% if not loop.last %},{% endif %}{% endfor %}',
      );
      expect(
        template.render({
          'items': ['a', 'b', 'c'],
        }),
        '1:a,2:b,3:c',
      );
    });

    test('nested for loops', () {
      final template = Template.compile(
        // One template expression; wrapping it would insert whitespace tokens.
        // ignore: lines_longer_than_80_chars
        '{% for row in rows %}{% for cell in row %}{{ cell }}{% endfor %}|{% endfor %}',
      );
      expect(
        template.render({
          'rows': [
            ['a', 'b'],
            ['c'],
          ],
        }),
        'ab|c|',
      );
    });

    test('for else branch on empty collection', () {
      final template = Template.compile(
        '{% for item in items %}{{ item }}{% else %}empty{% endfor %}',
      );
      expect(template.render({'items': <String>[]}), 'empty');
      expect(
        template.render({
          'items': ['x'],
        }),
        'x',
      );
    });

    test('dotted paths on maps', () {
      final template = Template.compile('{{ user.name }}');
      expect(
        template.render({
          'user': {'name': 'Ada'},
        }),
        'Ada',
      );
    });

    test('throws on undefined variable', () {
      final template = Template.compile('{{ missing }}');
      expect(
        () => template.render({}),
        throwsA(
          isA<TemplateException>().having(
            (e) => e.message,
            'message',
            contains('Undefined variable "missing"'),
          ),
        ),
      );
    });

    test('null values render as empty string', () {
      final template = Template.compile('x{{ value }}y');
      expect(template.render({'value': null}), 'xy');
    });
  });

  group('TokenMixinTemplate', () {
    test('renders token mixin', () {
      expect(
        TokenMixinTemplate.render(
          name: '_PaletteTokens',
          type: 'int',
          fields: ['red', 'blue'],
        ),
        '''
mixin _PaletteTokens {
  Map<String, int> toMap() => {
    'red': red,
    'blue': blue,
  };
}
''',
      );
    });
  });

  group('ComponentTemplate', () {
    test('renders widget API, style, state, and slot delegates', () {
      final label = SlotSpec(
        methodName: 'label',
        typeName: 'ChipLabel',
        returnType: 'Widget',
      );
      final root = SlotSpec(
        methodName: 'root',
        typeName: 'ChipRoot',
        returnType: 'Widget',
        childParams: [
          SlotParamSpec(name: 'label', typeName: 'ChipLabel', slot: label),
        ],
      );

      final output = ComponentTemplate.render(
        ComponentSpec(
          name: 'Chip',
          variants: const [
            VariantSpec(
              name: 'default',
              enumName: 'defaults',
              isUnnamedConstructor: true,
            ),
            VariantSpec(
              name: 'filled',
              enumName: 'filled',
              isUnnamedConstructor: false,
              properties: [
                PropertySpec(
                  name: 'gradient',
                  type: 'Gradient',
                  defaultBuilderName: '_getDefaultGradient',
                  ownerVariantEnumNames: ['filled'],
                ),
              ],
            ),
          ],
          properties: const [
            PropertySpec(name: 'child', type: 'Widget'),
            PropertySpec(name: 'onPressed', type: 'VoidCallback'),
            PropertySpec(
              name: 'disabled',
              type: 'bool',
              nullable: true,
              defaultValueSource: 'false',
            ),
          ],
          styleProperties: const [
            PropertySpec(
              name: 'color',
              type: 'Color',
            ),
            PropertySpec(
              name: 'alignment',
              type: 'AlignmentGeometry',
              defaultValueSource: 'Alignment.center',
            ),
          ],
          stateProperties: const [
            PropertySpec(
              name: 'disabled',
              type: 'bool',
              defaultValueSource: 'false',
            ),
          ],
          slots: [root, label],
          rootSlot: root,
        ),
      );

      expect(output, contains('enum ChipVariant {\n  defaults,\n  filled,'));
      expect(output, contains('class ChipStyle {'));
      expect(output, contains('ChipStyle mergeWith(ChipStyle? other)'));
      expect(output, contains('final bool disabled;'));
      expect(output, contains('class ChipContext {'));
      expect(output, contains('class ChipLabel {'));
      expect(
        output,
        contains('Widget call(ChipContext context) => _build(context);'),
      );
      expect(
        output,
        contains('abstract class ChipDelegate extends ComponentDelegate'),
      );
      expect(
        output,
        contains(
          'Widget root(ChipContext context, {required ChipLabel label});',
        ),
      );
      expect(output, contains('const Chip({'));
      expect(output, contains('required this.child'));
      expect(output, contains('required this.onPressed'));
      expect(output, contains('final Widget child;'));
      expect(output, contains('final VoidCallback onPressed;'));
      expect(output, contains('const Chip.filled({'));
      expect(output, contains('variant = ChipVariant.defaults'));
      expect(output, contains('gradient = null'));
      expect(
        output,
        contains('MantleTheme.of(context).delegate<ChipDelegate>()'),
      );
      expect(output, contains('ChipLabel((ctx) => delegate.label(ctx))'));
      expect(
        output,
        contains('alignment: merged.alignment ?? Alignment.center'),
      );
      expect(
        output,
        contains(
          'resolvedGradient = gradient ?? '
          '(variant == ChipVariant.filled ? '
          '_getDefaultGradient(context) : null)',
        ),
      );
    });
  });
}
