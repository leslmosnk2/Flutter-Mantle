import 'package:flutter/widgets.dart';

export 'package:mantle_basic/src/widgets/buttons/button.preview.dart'
    show wrapMantlePreview;

/// No-op handler for preview-only callbacks.
void previewNoop() {}

/// Section header used in catalog previews, matching Button.
class PreviewSection extends StatelessWidget {
  /// Creates a titled preview section.
  const PreviewSection({
    required this.title,
    required this.child,
    super.key,
  });

  /// Section label shown above [child].
  final String title;

  /// Section body.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          child,
        ],
      ),
    );
  }
}
