import 'package:flutter/widgets.dart';
import 'package:mantle_annotations/mantle_annotations.dart';
import 'package:mantle_core/mantle_core.dart';

part 'basic_tokens.g.dart';

/// Mantine radius scale in logical pixels.
const MantleRadius basicRadius = MantleRadius.fromScale(
  MantleSizeScale({
    'xs': 2,
    'sm': 4,
    'md': 8,
    'lg': 16,
    'xl': 32,
  }),
);

/// Mantine spacing scale in logical pixels.
const MantleSpacing basicSpacing = MantleSpacing.fromScale(
  MantleSizeScale({
    'xs': 10,
    'sm': 12,
    'md': 16,
    'lg': 20,
    'xl': 32,
  }),
);

/// Mantine breakpoint minimum widths (em × 16).
const MantleBreakpoint basicBreakpoints = MantleBreakpoint.fromScale(
  MantleSizeScale({
    'xs': 576,
    'sm': 768,
    'md': 992,
    'lg': 1200,
    'xl': 1408,
  }),
);

/// Context-built Mantine spacing scale.
@MantleToken(['xs', 'sm', 'md', 'lg', 'xl'])
class BasicSpacing extends _$BasicSpacing {
  /// Creates spacing tokens for the current `BuildContext`.
  BasicSpacing(BuildContext _)
    : super(
        xs: 10,
        sm: 12,
        md: 16,
        lg: 20,
        xl: 32,
      );
}

/// Context-built Mantine radius scale.
@MantleToken(['xs', 'sm', 'md', 'lg', 'xl'])
class BasicRadius extends _$BasicRadius {
  /// Creates radius tokens for the current `BuildContext`.
  BasicRadius(BuildContext _)
    : super(
        xs: 2,
        sm: 4,
        md: 8,
        lg: 16,
        xl: 32,
      );
}

/// Context-built Mantine breakpoint scale.
@MantleToken(['xs', 'sm', 'md', 'lg', 'xl'])
class BasicBreakpoints extends _$BasicBreakpoints {
  /// Creates breakpoint tokens for the current `BuildContext`.
  BasicBreakpoints(BuildContext _)
    : super(
        xs: 576,
        sm: 768,
        md: 992,
        lg: 1200,
        xl: 1408,
      );
}

/// Mantine type scale, headings, and body/label styles.
const MantleTypography basicTypography = MantleTypography(
  // Empty family → Flutter's platform default, matching Mantine's
  // system font stack in spirit.
  fontFamily: '',
  fontFamilyMono: 'monospace',
  fontSize: MantleSizeScale({
    'xs': 12,
    'sm': 14,
    'md': 16,
    'lg': 18,
    'xl': 20,
  }),
  headings: MantleHeadings(
    h1: TextStyle(
      fontSize: 34,
      height: 1.3,
      fontWeight: FontWeight.w700,
    ),
    h2: TextStyle(
      fontSize: 26,
      height: 1.35,
      fontWeight: FontWeight.w700,
    ),
    h3: TextStyle(
      fontSize: 22,
      height: 1.4,
      fontWeight: FontWeight.w700,
    ),
    h4: TextStyle(
      fontSize: 18,
      height: 1.45,
      fontWeight: FontWeight.w700,
    ),
    h5: TextStyle(
      fontSize: 16,
      height: 1.5,
      fontWeight: FontWeight.w700,
    ),
    h6: TextStyle(
      fontSize: 14,
      height: 1.5,
      fontWeight: FontWeight.w700,
    ),
  ),
  body: TextStyle(fontSize: 16, height: 1.55),
  label: TextStyle(
    fontSize: 14,
    height: 1.45,
    fontWeight: FontWeight.w600,
  ),
  lineHeight: MantleSizeScale({
    'xs': 1.4,
    'sm': 1.45,
    'md': 1.55,
    'lg': 1.6,
    'xl': 1.65,
  }),
);
