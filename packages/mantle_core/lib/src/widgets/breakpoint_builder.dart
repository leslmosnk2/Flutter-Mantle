import 'package:flutter/widgets.dart';
import 'package:mantle_core/src/theme/mantle_provider.dart';
import 'package:mantle_core/src/tokens/breakpoint.dart';
import 'package:mantle_core/src/tokens/size.dart';

/// A widget that builds its child based on the current breakpoint.
class BreakpointBuilder extends StatelessWidget {
  /// Creates a new breakpoint builder.
  const BreakpointBuilder({required this.builder, super.key});

  /// The builder function that creates the widget
  ///   based on the current breakpoint.
  final Widget Function(BuildContext context, MantleSize breakpoint) builder;

  @override
  Widget build(BuildContext context) {
    final breakpoints = MantleProvider.of(
      context,
      aspect: MantleAspect.breakpoints,
    ).breakpoints;
    final breakpoint = breakpoints.fromContext(context);
    return builder(context, breakpoint);
  }
}
