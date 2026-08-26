import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/data_display/tokens.dart';
import 'package:mantle_basic/src/widgets/layout/layout_tokens.dart';
import 'package:mantle_core/mantle_core.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [AvatarDelegate]: image, initials, or placeholder.
class BasicAvatarDelegate extends AvatarDelegate {
  /// Creates a baseline avatar delegate.
  const BasicAvatarDelegate();

  @override
  Widget root(AvatarContext context) {
    final theme = MantleTheme.of(context.context);
    final size = avatarSize(context.size, theme.scale);
    final group = AvatarGroupScope.maybeOf(context.context);
    final colorKey = context.color == 'initials' && context.name != null
        ? initialsPalette(context.name!)
        : context.color;
    final colors = resolveAppearance(
      context.context,
      appearance: context.appearance,
      color: colorKey,
      autoContrast: context.autoContrast,
    );
    final radius = resolveRadius(context.radius, context.context);
    final content = context.src != null && context.src!.isNotEmpty
        ? Image.network(
            context.src!,
            fit: BoxFit.cover,
            width: size,
            height: size,
            errorBuilder: (_, _, _) => _placeholder(context, colors, size),
          )
        : _placeholder(context, colors, size);

    Widget avatar = SizedBox(
      width: size,
      height: size,
      child: ClipRRect(
        borderRadius: radius,
        child: content,
      ),
    );

    if (group != null) {
      avatar = DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: radius,
          border: Border.all(color: bodyColor(context.context), width: 2),
        ),
        child: avatar,
      );
    }

    return Semantics(
      label: context.alt ?? context.name,
      image: context.src != null,
      child: avatar,
    );
  }

  Widget _placeholder(
    AvatarContext context,
    VariantColors colors,
    double size,
  ) {
    final label = context.child != null
        ? null
        : (context.name != null ? avatarInitials(context.name!) : null);
    return ColoredBox(
      color: colors.background ?? const Color(0x00000000),
      child: Center(
        child:
            context.child ??
            (label != null && label.isNotEmpty
                ? Text(
                    label,
                    style: TextStyle(
                      color: colors.color,
                      fontWeight: FontWeight.w700,
                      fontSize: size / 2.5,
                      height: 1,
                    ),
                  )
                : CustomPaint(
                    size: Size.square(size * 0.7),
                    painter: _PlaceholderPainter(
                      color: colors.color ?? const Color(0xFF868E96),
                    ),
                  )),
      ),
    );
  }
}

/// Baseline [AvatarGroupDelegate]: overlapping row.
class BasicAvatarGroupDelegate extends AvatarGroupDelegate {
  /// Creates a baseline avatar-group delegate.
  const BasicAvatarGroupDelegate();

  @override
  Widget root(AvatarGroupContext context) {
    final theme = MantleTheme.of(context.context);
    final spacing = resolveSpacing(theme, context.spacing, fallback: 'sm');
    return AvatarGroupScope(
      spacing: spacing,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (var i = 0; i < context.children.length; i++)
            Align(
              widthFactor: i == 0 ? 1 : (1 - spacing / 38).clamp(0.4, 1),
              alignment: AlignmentDirectional.centerEnd,
              child: context.children[i],
            ),
        ],
      ),
    );
  }
}

class _PlaceholderPainter extends CustomPainter {
  _PlaceholderPainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    canvas
      ..drawCircle(
        Offset(size.width / 2, size.height * 0.32),
        size.width * 0.22,
        paint,
      )
      ..drawOval(
        Rect.fromCenter(
          center: Offset(size.width / 2, size.height * 0.85),
          width: size.width * 0.72,
          height: size.height * 0.55,
        ),
        paint,
      );
  }

  @override
  bool shouldRepaint(covariant _PlaceholderPainter oldDelegate) {
    return oldDelegate.color != color;
  }
}
