import 'package:flutter/widgets.dart';
import 'package:mantle_core/src/tokens/scale.dart';
import 'package:mantle_core/src/tokens/token_group.dart';

/// Typography tokens for the Mantle design system.
class MantleTypography implements MantleTokenGroup {
  /// Creates typography tokens.
  const MantleTypography({
    required this.fontFamily,
    required this.fontFamilyMono,
    required this.fontSize,
    required this.headings,
    required this.body,
    required this.label,
    required this.lineHeight,
  });

  /// An empty group that yields to the other side in [mergeWith].
  const MantleTypography.empty()
    : fontFamily = '',
      fontFamilyMono = '',
      fontSize = const MantleSizeScale.empty(),
      headings = const MantleHeadings.empty(),
      body = const TextStyle(),
      label = const TextStyle(),
      lineHeight = const MantleSizeScale.empty();

  /// The font family for the typography.
  final String fontFamily;

  /// The font family for the monospace typography.
  final String fontFamilyMono;

  /// The font sizes for the typography.
  final MantleSizeScale<double> fontSize;

  /// The heading styles for the typography.
  final MantleHeadings headings;

  /// The style for the body text.
  final TextStyle body;

  /// The style for the label text.
  final TextStyle label;

  /// The line heights for the typography.
  final MantleSizeScale<double> lineHeight;

  /// Whether this group carries no author-provided values.
  bool get isEmpty => fontFamily.isEmpty && fontSize.tokens.isEmpty;

  @override
  MantleTypography lerpWith(covariant MantleTypography other, double t) {
    if (isEmpty) {
      return other;
    }
    if (other.isEmpty) {
      return this;
    }
    final snap = t < 0.5 ? this : other;
    return MantleTypography(
      fontFamily: snap.fontFamily,
      fontFamilyMono: snap.fontFamilyMono,
      fontSize: fontSize.lerp(other.fontSize, t),
      headings: headings.lerpWith(other.headings, t),
      body: TextStyle.lerp(body, other.body, t)!,
      label: TextStyle.lerp(label, other.label, t)!,
      lineHeight: lineHeight.lerp(other.lineHeight, t),
    );
  }

  @override
  MantleTypography mergeWith(covariant MantleTypography other) {
    if (isEmpty) {
      return other;
    }
    if (other.isEmpty) {
      return this;
    }
    return MantleTypography(
      fontFamily: fontFamily.isEmpty ? other.fontFamily : fontFamily,
      fontFamilyMono: fontFamilyMono.isEmpty
          ? other.fontFamilyMono
          : fontFamilyMono,
      fontSize: fontSize.merge(other.fontSize),
      headings: headings.mergeWith(other.headings),
      body: other.body.merge(body),
      label: other.label.merge(label),
      lineHeight: lineHeight.merge(other.lineHeight),
    );
  }
}

/// Heading styles for h1–h6.
class MantleHeadings implements MantleTokenGroup {
  /// Creates heading styles.
  const MantleHeadings({
    required this.h1,
    required this.h2,
    required this.h3,
    required this.h4,
    required this.h5,
    required this.h6,
  });

  /// Empty headings that yield in [mergeWith].
  const MantleHeadings.empty()
    : h1 = const TextStyle(),
      h2 = const TextStyle(),
      h3 = const TextStyle(),
      h4 = const TextStyle(),
      h5 = const TextStyle(),
      h6 = const TextStyle();

  /// The style for the first-level heading.
  final TextStyle h1;

  /// The style for the second-level heading.
  final TextStyle h2;

  /// The style for the third-level heading.
  final TextStyle h3;

  /// The style for the fourth-level heading.
  final TextStyle h4;

  /// The style for the fifth-level heading.
  final TextStyle h5;

  /// The style for the sixth-level heading.
  final TextStyle h6;

  bool get _isEmpty =>
      h1 == const TextStyle() &&
      h2 == const TextStyle() &&
      h3 == const TextStyle() &&
      h4 == const TextStyle() &&
      h5 == const TextStyle() &&
      h6 == const TextStyle();

  @override
  MantleHeadings lerpWith(covariant MantleHeadings other, double t) {
    return MantleHeadings(
      h1: TextStyle.lerp(h1, other.h1, t)!,
      h2: TextStyle.lerp(h2, other.h2, t)!,
      h3: TextStyle.lerp(h3, other.h3, t)!,
      h4: TextStyle.lerp(h4, other.h4, t)!,
      h5: TextStyle.lerp(h5, other.h5, t)!,
      h6: TextStyle.lerp(h6, other.h6, t)!,
    );
  }

  @override
  MantleHeadings mergeWith(covariant MantleHeadings other) {
    if (_isEmpty) {
      return other;
    }
    if (other._isEmpty) {
      return this;
    }
    // this wins non-null TextStyle fields; [other] fills the rest.
    return MantleHeadings(
      h1: other.h1.merge(h1),
      h2: other.h2.merge(h2),
      h3: other.h3.merge(h3),
      h4: other.h4.merge(h4),
      h5: other.h5.merge(h5),
      h6: other.h6.merge(h6),
    );
  }
}
