import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';

MantleColor _palette(int seed) {
  return MantleColor([
    for (var i = 0; i < 10; i++) Color.fromARGB(255, seed, i * 25, 100),
  ]);
}

final _theme = MantleTheme(
  colors: MantleColors({
    'blue': _palette(34),
    'gray': _palette(200),
  }),
  spacing: MantleSpacing(const {'md': 16}),
  typography: const MantleTypography(
    fontFamily: 'sans-serif',
    fontFamilyMono: 'monospace',
    fontSize: MantleSizeScale.empty(),
    headings: MantleHeadings.empty(),
    body: TextStyle(fontSize: 18, color: Color(0xFF1A1B1E)),
    label: TextStyle(fontSize: 14, color: Color(0xFF1A1B1E)),
    lineHeight: MantleSizeScale.empty(),
  ),
);

void main() {
  runApp(
    MantleProvider(
      theme: _theme,
      child: const Directionality(
        textDirection: TextDirection.ltr,
        child: _Home(),
      ),
    ),
  );
}

class _Home extends StatelessWidget {
  const _Home();

  @override
  Widget build(BuildContext context) {
    final mantle = MantleTheme.of(context);
    return ColoredBox(
      color: mantle.colors['gray'][0],
      child: Center(
        child: Padding(
          padding: mantle.spacing.all('md'),
          child: Text('Mantle', style: mantle.typography.body),
        ),
      ),
    );
  }
}
