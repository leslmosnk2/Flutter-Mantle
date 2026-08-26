import 'package:flutter/widgets.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

class GalleryTitle extends StatelessWidget {
  const GalleryTitle(
    this.text, {
    this.order = 1,
    super.key,
  });

  final String text;
  final int order;

  @override
  Widget build(BuildContext context) {
    return MTitle(
      order: order,
      child: Text(text),
    );
  }
}

class GalleryText extends StatelessWidget {
  const GalleryText(
    this.text, {
    this.size = 'md',
    this.color,
    super.key,
  });

  final String text;
  final String size;
  final String? color;

  @override
  Widget build(BuildContext context) {
    return MText(
      size: size,
      color: color,
      child: Text(text),
    );
  }
}
