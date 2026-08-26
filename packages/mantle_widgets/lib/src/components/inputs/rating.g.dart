// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum RatingVariant { defaults }

@immutable
class RatingStyle {
  const RatingStyle();

  RatingStyle copyWith() => this;

  RatingStyle mergeWith(RatingStyle? other) => this;
}

@immutable
class RatingState {
  const RatingState();
}

@immutable
class RatingContext {
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

  final BuildContext context;
  final RatingStyle style;
  final RatingState state;
  final RatingVariant variant;
  final double? value;
  final double defaultValue;
  final void Function(double)? onChanged;
  final int count;
  final int fractions;
  final bool readOnly;
  final bool highlightSelectedOnly;
  final String color;
  final String size;
}

class RatingRoot {
  const RatingRoot(this._build);

  final Widget Function(RatingContext context) _build;

  Widget call(RatingContext context) => _build(context);
}

abstract class RatingDelegate extends ComponentDelegate {
  const RatingDelegate();

  Widget root(RatingContext context);
}

class Rating extends StatelessWidget {
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

  final RatingVariant variant;
  final double? value;
  final double? defaultValue;
  final void Function(double)? onChanged;
  final int? count;
  final int? fractions;
  final bool? readOnly;
  final bool? highlightSelectedOnly;
  final String? color;
  final String? size;
  final RatingStyle? style;

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
