import 'package:flutter/widgets.dart';
import 'package:mantle_core/mantle_core.dart';

/// Resolves a Mantine spacing token, scaled by the theme.
double resolveSpacing(
  MantleTheme theme,
  String? size, {
  String fallback = 'md',
}) {
  return theme.spacing.all(size ?? fallback).left * theme.scale;
}

/// Resolves [size] when set; otherwise `null`.
double? tryResolveSpacing(MantleTheme theme, String? size) {
  if (size == null) {
    return null;
  }
  return theme.spacing.all(size).left * theme.scale;
}

/// Inserts a [gap] box between [children] on [axis].
List<Widget> childrenWithGap(
  List<Widget> children,
  double gap, {
  required Axis axis,
}) {
  if (children.length <= 1 || gap <= 0) {
    return children;
  }
  final spaced = <Widget>[children.first];
  for (var i = 1; i < children.length; i++) {
    spaced
      ..add(
        axis == Axis.horizontal ? SizedBox(width: gap) : SizedBox(height: gap),
      )
      ..add(children[i]);
  }
  return spaced;
}
