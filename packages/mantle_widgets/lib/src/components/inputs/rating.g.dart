// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [Rating].
enum RatingVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [Rating].
@immutable
class RatingStyle {
  /// Creates a [RatingStyle].
  const RatingStyle();

  /// Returns a copy of this [RatingStyle] with selected fields replaced.
  RatingStyle copyWith() => this;

  /// Merges [other] over this [RatingStyle]; null fields keep this value.
  RatingStyle mergeWith(RatingStyle? other) => this;
}

/// Resolved interaction state for [Rating].
@immutable
class RatingState {
  /// Creates a [RatingState].
  const RatingState();
}

/// Values passed to [RatingDelegate] slots during build.
@immutable
class RatingContext {
  /// Creates a [RatingContext].
  const RatingContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    this.value,
    required this.defaultValue,
    this.onChanged,
    required this.count,
    required this.fractions,
    required this.readOnly,
    required this.highlightSelectedOnly,
    required this.color,
    required this.size,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final RatingStyle style;

  /// Resolved interaction state for this build.
  final RatingState state;

  /// The visual variant selected by the constructor.
  final RatingVariant variant;

  /// The controlled value.
  final double? value;

  /// Initial value when [value] is omitted.
  final double defaultValue;

  /// Called when the value changes.
  final void Function(double)? onChanged;

  /// The count.
  final int count;

  /// The fractions.
  final int fractions;

  /// Whether the value cannot be edited.
  final bool readOnly;

  /// Whether highlight selected only.
  final bool highlightSelectedOnly;

  /// Foreground or accent color.
  final String color;

  /// Size token.
  final String size;
}

/// Builder for the root slot.
class RatingRoot {
  /// Creates a [RatingRoot] from a builder function.
  const RatingRoot(this._build);

  final Widget Function(RatingContext context) _build;

  /// Invokes this slot with [context].
  Widget call(RatingContext context) => _build(context);
}

/// Theme-owned composition slots for [Rating].
abstract class RatingDelegate extends ComponentDelegate {
  /// Creates a [RatingDelegate].
  const RatingDelegate();

  /// Builds the composition root.
  Widget root(RatingContext context);
}

/// A [Rating] widget resolved through [RatingDelegate].
class Rating extends StatelessWidget {
  /// Creates a [Rating].
  const Rating({
    super.key,
    this.value,
    this.defaultValue,
    this.onChanged,
    this.count,
    this.fractions,
    this.readOnly,
    this.highlightSelectedOnly,
    this.color,
    this.size,
    this.style,
  }) : variant = RatingVariant.defaults;

  /// The visual variant selected by the constructor.
  final RatingVariant variant;

  /// The controlled value.
  final double? value;

  /// Initial value when [value] is omitted.
  final double? defaultValue;

  /// Called when the value changes.
  final void Function(double)? onChanged;

  /// The count.
  final int? count;

  /// The fractions.
  final int? fractions;

  /// Whether the value cannot be edited.
  final bool? readOnly;

  /// Whether highlight selected only.
  final bool? highlightSelectedOnly;

  /// Foreground or accent color.
  final String? color;

  /// Size token.
  final String? size;

  /// Style overrides merged over theme defaults.
  final RatingStyle? style;

  /// Resolves properties and builds via [RatingDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedValue = value;
    final resolvedDefaultValue = defaultValue ?? 0.0;
    final resolvedOnChanged = onChanged;
    final resolvedCount = count ?? 5;
    final resolvedFractions = fractions ?? 1;
    final resolvedReadOnly = readOnly ?? false;
    final resolvedHighlightSelectedOnly = highlightSelectedOnly ?? false;
    final resolvedColor = color ?? 'yellow';
    final resolvedSize = size ?? 'sm';

    const fromProps = RatingStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = RatingState();
    final ratingContext = RatingContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      value: resolvedValue,
      defaultValue: resolvedDefaultValue,
      onChanged: resolvedOnChanged,
      count: resolvedCount,
      fractions: resolvedFractions,
      readOnly: resolvedReadOnly,
      highlightSelectedOnly: resolvedHighlightSelectedOnly,
      color: resolvedColor,
      size: resolvedSize,
    );
    final delegate = MantleTheme.of(context).delegate<RatingDelegate>();
    return delegate.root(ratingContext);
  }
}
