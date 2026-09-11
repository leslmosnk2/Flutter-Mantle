// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'basic_tokens.dart';

// **************************************************************************
// MantleTokenGenerator
// **************************************************************************

class _$BasicSpacing implements MantleSpacing {
  const _$BasicSpacing({
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
  });

  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;

  @override
  Set<MantleSize> get tokens => {'xs', 'sm', 'md', 'lg', 'xl'};

  @override
  bool get isEmpty => false;

  @override
  double operator [](MantleSize size) => switch (size) {
    'xs' => xs,
    'sm' => sm,
    'md' => md,
    'lg' => lg,
    'xl' => xl,
    _ => throw ArgumentError('No size named "$size"'),
  };

  @override
  double? getOrNull(MantleSize size) => switch (size) {
    'xs' => xs,
    'sm' => sm,
    'md' => md,
    'lg' => lg,
    'xl' => xl,
    _ => null,
  };

  @override
  _$BasicSpacing mapValues(double Function(double value) transform) {
    return _$BasicSpacing(
      xs: transform(xs),
      sm: transform(sm),
      md: transform(md),
      lg: transform(lg),
      xl: transform(xl),
    );
  }

  @override
  _$BasicSpacing resolveRem({
    required TextScaler textScaler,
    double remBase = 16,
  }) {
    return mapValues((value) => textScaler.scale(value / remBase) * remBase);
  }

  _$BasicSpacingAll get all => _$BasicSpacingAll(this);

  EdgeInsets only({
    double top = 0,
    double right = 0,
    double bottom = 0,
    double left = 0,
  }) {
    return EdgeInsets.only(top: top, right: right, bottom: bottom, left: left);
  }

  EdgeInsets symmetric({double vertical = 0, double horizontal = 0}) {
    return EdgeInsets.symmetric(vertical: vertical, horizontal: horizontal);
  }

  _$BasicSpacing copyWith({
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
  }) {
    return _$BasicSpacing(
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
    );
  }

  @override
  _$BasicSpacing mergeWith(covariant MantleSpacing other) {
    return _$BasicSpacing(
      xs: getOrNull('xs') ?? other['xs'],
      sm: getOrNull('sm') ?? other['sm'],
      md: getOrNull('md') ?? other['md'],
      lg: getOrNull('lg') ?? other['lg'],
      xl: getOrNull('xl') ?? other['xl'],
    );
  }

  @override
  _$BasicSpacing lerpWith(covariant MantleSpacing other, double t) {
    return _$BasicSpacing(
      xs: xs * (1 - t) + (other.getOrNull('xs') ?? xs) * t,
      sm: sm * (1 - t) + (other.getOrNull('sm') ?? sm) * t,
      md: md * (1 - t) + (other.getOrNull('md') ?? md) * t,
      lg: lg * (1 - t) + (other.getOrNull('lg') ?? lg) * t,
      xl: xl * (1 - t) + (other.getOrNull('xl') ?? xl) * t,
    );
  }
}

class _$BasicSpacingAll {
  const _$BasicSpacingAll(this._s);

  final _$BasicSpacing _s;

  EdgeInsets get xs => EdgeInsets.all(_s.xs);

  EdgeInsets get sm => EdgeInsets.all(_s.sm);

  EdgeInsets get md => EdgeInsets.all(_s.md);

  EdgeInsets get lg => EdgeInsets.all(_s.lg);

  EdgeInsets get xl => EdgeInsets.all(_s.xl);
}

class _$BasicRadius implements MantleRadius {
  const _$BasicRadius({
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
  });

  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;

  @override
  Set<MantleSize> get tokens => {'xs', 'sm', 'md', 'lg', 'xl'};

  @override
  bool get isEmpty => false;

  @override
  double operator [](MantleSize size) => switch (size) {
    'xs' => xs,
    'sm' => sm,
    'md' => md,
    'lg' => lg,
    'xl' => xl,
    _ => throw ArgumentError('No size named "$size"'),
  };

  @override
  double? getOrNull(MantleSize size) => switch (size) {
    'xs' => xs,
    'sm' => sm,
    'md' => md,
    'lg' => lg,
    'xl' => xl,
    _ => null,
  };

  @override
  _$BasicRadius mapValues(double Function(double value) transform) {
    return _$BasicRadius(
      xs: transform(xs),
      sm: transform(sm),
      md: transform(md),
      lg: transform(lg),
      xl: transform(xl),
    );
  }

  @override
  _$BasicRadius resolveRem({
    required TextScaler textScaler,
    double remBase = 16,
  }) {
    return mapValues((value) => textScaler.scale(value / remBase) * remBase);
  }

  _$BasicRadiusBorder get border => _$BasicRadiusBorder(this);

  _$BasicRadiusCircular get circular => _$BasicRadiusCircular(this);

  Radius elliptical(double x, double y) => Radius.elliptical(x, y);

  _$BasicRadius copyWith({
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
  }) {
    return _$BasicRadius(
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
    );
  }

  @override
  _$BasicRadius mergeWith(covariant MantleRadius other) {
    return _$BasicRadius(
      xs: getOrNull('xs') ?? other['xs'],
      sm: getOrNull('sm') ?? other['sm'],
      md: getOrNull('md') ?? other['md'],
      lg: getOrNull('lg') ?? other['lg'],
      xl: getOrNull('xl') ?? other['xl'],
    );
  }

  @override
  _$BasicRadius lerpWith(covariant MantleRadius other, double t) {
    return _$BasicRadius(
      xs: xs * (1 - t) + (other.getOrNull('xs') ?? xs) * t,
      sm: sm * (1 - t) + (other.getOrNull('sm') ?? sm) * t,
      md: md * (1 - t) + (other.getOrNull('md') ?? md) * t,
      lg: lg * (1 - t) + (other.getOrNull('lg') ?? lg) * t,
      xl: xl * (1 - t) + (other.getOrNull('xl') ?? xl) * t,
    );
  }
}

class _$BasicRadiusBorder {
  const _$BasicRadiusBorder(this._s);

  final _$BasicRadius _s;

  BorderRadius get xs => BorderRadius.circular(_s.xs);

  BorderRadius get sm => BorderRadius.circular(_s.sm);

  BorderRadius get md => BorderRadius.circular(_s.md);

  BorderRadius get lg => BorderRadius.circular(_s.lg);

  BorderRadius get xl => BorderRadius.circular(_s.xl);
}

class _$BasicRadiusCircular {
  const _$BasicRadiusCircular(this._s);

  final _$BasicRadius _s;

  Radius get xs => Radius.circular(_s.xs);

  Radius get sm => Radius.circular(_s.sm);

  Radius get md => Radius.circular(_s.md);

  Radius get lg => Radius.circular(_s.lg);

  Radius get xl => Radius.circular(_s.xl);
}

class _$BasicBreakpoints implements MantleBreakpoint {
  const _$BasicBreakpoints({
    required this.xs,
    required this.sm,
    required this.md,
    required this.lg,
    required this.xl,
  });

  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;

  @override
  Set<MantleSize> get tokens => {'xs', 'sm', 'md', 'lg', 'xl'};

  @override
  bool get isEmpty => false;

  @override
  double operator [](MantleSize size) => switch (size) {
    'xs' => xs,
    'sm' => sm,
    'md' => md,
    'lg' => lg,
    'xl' => xl,
    _ => throw ArgumentError('No size named "$size"'),
  };

  @override
  double? getOrNull(MantleSize size) => switch (size) {
    'xs' => xs,
    'sm' => sm,
    'md' => md,
    'lg' => lg,
    'xl' => xl,
    _ => null,
  };

  @override
  _$BasicBreakpoints mapValues(double Function(double value) transform) {
    return _$BasicBreakpoints(
      xs: transform(xs),
      sm: transform(sm),
      md: transform(md),
      lg: transform(lg),
      xl: transform(xl),
    );
  }

  @override
  _$BasicBreakpoints resolveRem({
    required TextScaler textScaler,
    double remBase = 16,
  }) {
    return mapValues((value) => textScaler.scale(value / remBase) * remBase);
  }

  _$BasicBreakpoints copyWith({
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
  }) {
    return _$BasicBreakpoints(
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
    );
  }

  @override
  _$BasicBreakpoints mergeWith(covariant MantleBreakpoint other) {
    return _$BasicBreakpoints(
      xs: getOrNull('xs') ?? other['xs'],
      sm: getOrNull('sm') ?? other['sm'],
      md: getOrNull('md') ?? other['md'],
      lg: getOrNull('lg') ?? other['lg'],
      xl: getOrNull('xl') ?? other['xl'],
    );
  }

  @override
  _$BasicBreakpoints lerpWith(covariant MantleBreakpoint other, double t) {
    return _$BasicBreakpoints(
      xs: xs * (1 - t) + (other.getOrNull('xs') ?? xs) * t,
      sm: sm * (1 - t) + (other.getOrNull('sm') ?? sm) * t,
      md: md * (1 - t) + (other.getOrNull('md') ?? md) * t,
      lg: lg * (1 - t) + (other.getOrNull('lg') ?? lg) * t,
      xl: xl * (1 - t) + (other.getOrNull('xl') ?? xl) * t,
    );
  }
}
