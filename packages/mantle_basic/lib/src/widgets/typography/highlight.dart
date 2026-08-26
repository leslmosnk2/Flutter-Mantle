import 'package:flutter/widgets.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [HighlightDelegate]: [Mark] matching substrings in [MText].
class BasicHighlightDelegate extends HighlightDelegate {
  /// Creates a baseline highlight delegate.
  const BasicHighlightDelegate();

  @override
  Widget root(HighlightContext context) {
    final chunks = highlightChunks(context.text, context.highlight);
    return MText(
      size: context.size,
      child: Text.rich(
        TextSpan(
          children: [
            for (final chunk in chunks)
              if (chunk.highlighted)
                WidgetSpan(
                  alignment: PlaceholderAlignment.baseline,
                  baseline: TextBaseline.alphabetic,
                  child: Mark(
                    color: context.color,
                    child: Text(chunk.chunk),
                  ),
                )
              else
                TextSpan(text: chunk.chunk),
          ],
        ),
      ),
    );
  }
}
