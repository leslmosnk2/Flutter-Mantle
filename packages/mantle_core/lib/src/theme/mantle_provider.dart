import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:mantle_core/src/theme/aspects.dart';
import 'package:mantle_core/src/theme/color_scheme.dart';
import 'package:mantle_core/src/theme/mantle_facade.dart';
import 'package:mantle_core/src/theme/mantle_theme.dart';

export 'package:mantle_core/src/theme/aspects.dart';

/// Provides a [MantleTheme] (and color scheme) to descendants.
///
/// Nested providers **merge** with their ancestor: the inner theme wins
/// field-by-field, empty token groups inherit. Only the root honors
/// [baseline] for delegate fallback.
class MantleProvider extends StatefulWidget {
  /// Creates a Mantle provider.
  const MantleProvider({
    required this.theme,
    required this.child,
    this.baseline,
    this.animation = AnimationStyle.noAnimation,
    this.defaultColorScheme = MantleColorScheme.light,
    this.forceColorScheme,
    this.colorSchemeManager,
    this.env = MantleEnvironment.standard,
    this.onEnd,
    super.key,
  });

  /// Theme for this subtree. Nested providers merge this over the ancestor.
  final MantleTheme theme;

  /// Terminal fallback for delegate resolution. Honored only on the root.
  final MantleTheme? baseline;

  /// Curve and duration for theme transitions.
  final AnimationStyle animation;

  /// Scheme used when [colorSchemeManager] has no value and [forceColorScheme]
  /// is unset. Defaults to [MantleColorScheme.light].
  final MantleColorScheme defaultColorScheme;

  /// Forces a scheme for this subtree. Ignores the manager and default.
  final MantleColorScheme? forceColorScheme;

  /// Optional persistence for the user's preferred scheme.
  final MantleColorSchemeManager? colorSchemeManager;

  /// [MantleEnvironment.test] forces zero-duration transitions.
  final MantleEnvironment env;

  /// Called when a theme transition completes.
  final VoidCallback? onEnd;

  /// Descendant widgets.
  final Widget child;

  /// The theme for [context], optionally subscribing to [aspect].
  static MantleTheme of(BuildContext context, {MantleAspect? aspect}) {
    final scope = InheritedModel.inheritFrom<_MantleScope>(
      context,
      aspect: aspect,
    );
    if (scope == null) {
      throw FlutterError.fromParts([
        ErrorSummary('No MantleProvider found above this widget.'),
        ErrorDescription(
          'Wrap your app in MantleProvider(theme: ..., child: ...).',
        ),
      ]);
    }
    return scope.resolve(context);
  }

  /// The unresolved theme config for [context], or `null` if none is in scope.
  static MantleTheme? maybeUnresolvedOf(
    BuildContext context, {
    MantleAspect? aspect,
  }) {
    return InheritedModel.inheritFrom<_MantleScope>(
      context,
      aspect: aspect,
    )?.theme;
  }

  /// The unresolved theme config for [context].
  static MantleTheme unresolvedOf(
    BuildContext context, {
    MantleAspect? aspect,
  }) {
    final theme = maybeUnresolvedOf(context, aspect: aspect);
    if (theme == null) {
      throw FlutterError.fromParts([
        ErrorSummary('No MantleProvider found above this widget.'),
        ErrorDescription(
          'Wrap your app in MantleProvider(theme: ..., child: ...).',
        ),
      ]);
    }
    return theme;
  }

  /// The theme for [context], or `null` if none is in scope.
  static MantleTheme? maybeOf(BuildContext context, {MantleAspect? aspect}) {
    final scope = InheritedModel.inheritFrom<_MantleScope>(
      context,
      aspect: aspect,
    );
    return scope?.resolve(context);
  }

  /// Resolved `light` or `dark` scheme (never [MantleColorScheme.auto]).
  static MantleColorScheme colorSchemeOf(BuildContext context) {
    final scope = InheritedModel.inheritFrom<_MantleScope>(
      context,
      aspect: MantleAspect.colorScheme,
    );
    if (scope == null) {
      throw FlutterError.fromParts([
        ErrorSummary('No MantleProvider found above this widget.'),
        ErrorDescription(
          'Wrap your app in MantleProvider(theme: ..., child: ...).',
        ),
      ]);
    }
    return scope.colorScheme;
  }

  /// Resolved scheme, or `null` if no provider is in scope.
  static MantleColorScheme? maybeColorSchemeOf(BuildContext context) {
    return InheritedModel.inheritFrom<_MantleScope>(
      context,
      aspect: MantleAspect.colorScheme,
    )?.colorScheme;
  }

  /// Sets the preferred scheme on the nearest non-forced provider (usually
  /// the root). No-ops under [forceColorScheme].
  static void setColorScheme(
    BuildContext context,
    MantleColorScheme scheme,
  ) {
    InheritedModel.inheritFrom<_MantleScope>(
      context,
    )?._setColorScheme?.call(scheme);
  }

  /// Toggles between light and dark on the nearest non-forced provider.
  static void toggleColorScheme(BuildContext context) {
    InheritedModel.inheritFrom<_MantleScope>(
      context,
    )?._toggleColorScheme?.call();
  }

  @override
  State<MantleProvider> createState() => _MantleProviderState();
}

class _MantleProviderState extends State<MantleProvider>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late CurvedAnimation _curved;
  _MantleThemeTween? _tween;
  _MantleScope? _parent;

  MantleTheme? _cachedEffective;
  MantleTheme? _cachedWidgetTheme;
  MantleTheme? _cachedParentTheme;
  MantleTheme? _cachedBaseline;

  MantleColorScheme? _storedScheme;

  Duration get _duration {
    if (widget.env == MantleEnvironment.test) {
      return Duration.zero;
    }
    return widget.animation.duration ?? Duration.zero;
  }

  Curve get _curve => widget.animation.curve ?? Curves.linear;

  bool get _isRoot => _parent == null;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: _duration)
      ..addListener(_onTick)
      ..addStatusListener(_onStatus);
    _curved = CurvedAnimation(parent: _controller, curve: _curve);
    _storedScheme = widget.colorSchemeManager?.load();
  }

  void _onTick() {
    if (mounted) {
      setState(() {});
    }
  }

  void _onStatus(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      widget.onEnd?.call();
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _parent = InheritedModel.inheritFrom<_MantleScope>(context);
    _syncTween(animate: false);
  }

  @override
  void didUpdateWidget(MantleProvider oldWidget) {
    super.didUpdateWidget(oldWidget);
    _controller.duration = _duration;
    if (widget.animation.curve != oldWidget.animation.curve) {
      _curved.dispose();
      _curved = CurvedAnimation(parent: _controller, curve: _curve);
    }
    _syncTween(animate: !identical(oldWidget.theme, widget.theme));
  }

  MantleTheme get _effectiveTheme {
    final parentTheme = _parent?.theme;
    final baseline = _isRoot ? widget.baseline : _parent!.baseline;
    if (identical(_cachedWidgetTheme, widget.theme) &&
        identical(_cachedParentTheme, parentTheme) &&
        identical(_cachedBaseline, baseline) &&
        _cachedEffective != null) {
      return _cachedEffective!;
    }
    final own = widget.theme.bindBaseline(baseline);
    final effective = parentTheme == null ? own : own.mergeWith(parentTheme);
    _cachedWidgetTheme = widget.theme;
    _cachedParentTheme = parentTheme;
    _cachedBaseline = baseline;
    _cachedEffective = effective;
    return effective;
  }

  void _syncTween({required bool animate}) {
    final target = _effectiveTheme;
    if (_tween == null) {
      _tween = _MantleThemeTween(begin: target)..end = target;
      return;
    }
    if (identical(_tween!.end, target)) {
      return;
    }
    if (animate && _duration > Duration.zero) {
      _tween!
        ..begin = _tween!.evaluate(_curved)
        ..end = target;
      unawaited(_controller.forward(from: 0));
    } else {
      _tween!
        ..begin = target
        ..end = target;
    }
  }

  MantleColorScheme _resolvedScheme(BuildContext context) {
    if (widget.forceColorScheme != null) {
      return _resolveAuto(context, widget.forceColorScheme!);
    }
    if (_parent != null) {
      return _parent!.colorScheme;
    }
    final preferred = _storedScheme ?? widget.defaultColorScheme;
    return _resolveAuto(context, preferred);
  }

  MantleColorScheme _resolveAuto(
    BuildContext context,
    MantleColorScheme scheme,
  ) {
    if (scheme != MantleColorScheme.auto) {
      return scheme;
    }
    return MediaQuery.maybePlatformBrightnessOf(context) == Brightness.dark
        ? MantleColorScheme.dark
        : MantleColorScheme.light;
  }

  void _setColorScheme(MantleColorScheme scheme) {
    if (widget.forceColorScheme != null) {
      return;
    }
    widget.colorSchemeManager?.save(scheme);
    setState(() => _storedScheme = scheme);
  }

  void _toggleColorScheme() {
    final current = _resolvedScheme(context);
    _setColorScheme(
      current == MantleColorScheme.dark
          ? MantleColorScheme.light
          : MantleColorScheme.dark,
    );
  }

  @override
  void dispose() {
    if (_isRoot) {
      Mantle.detachRoot();
    }
    _curved.dispose();
    _controller
      ..removeListener(_onTick)
      ..removeStatusListener(_onStatus)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = _effectiveTheme;
    final animating = _controller.isAnimating;
    final lerpT = animating ? _curved.value : 0.0;
    if (_isRoot) {
      Mantle.attachRoot(theme);
    }

    final forced = widget.forceColorScheme != null;
    return _MantleScope(
      theme: theme,
      colorScheme: _resolvedScheme(context),
      baseline: _isRoot ? widget.baseline : _parent!.baseline,
      isRoot: _isRoot,
      schemeForced: forced,
      lerpBegin: animating ? _tween?.begin : null,
      lerpEnd: animating ? _tween?.end : null,
      lerpT: lerpT,
      setColorScheme: forced
          ? null
          : (_parent?._setColorScheme ?? _setColorScheme),
      toggleColorScheme: forced
          ? null
          : (_parent?._toggleColorScheme ?? _toggleColorScheme),
      child: widget.child,
    );
  }
}

class _MantleThemeTween extends Tween<MantleTheme> {
  _MantleThemeTween({required MantleTheme super.begin});

  @override
  MantleTheme lerp(double t) => begin!.lerpWith(end!, t);
}

class _MantleScope extends InheritedModel<MantleAspect> {
  const _MantleScope({
    required this.theme,
    required this.colorScheme,
    required this.baseline,
    required this.isRoot,
    required this.schemeForced,
    required this.lerpBegin,
    required this.lerpEnd,
    required this.lerpT,
    required this._setColorScheme,
    required this._toggleColorScheme,
    required super.child,
  });

  final MantleTheme theme;
  final MantleColorScheme colorScheme;
  final MantleTheme? baseline;
  final bool isRoot;
  final bool schemeForced;
  final MantleTheme? lerpBegin;
  final MantleTheme? lerpEnd;
  final double lerpT;
  final void Function(MantleColorScheme)? _setColorScheme;
  final VoidCallback? _toggleColorScheme;

  MantleTheme resolve(BuildContext context) {
    final begin = lerpBegin;
    final end = lerpEnd;
    if (begin != null && end != null && lerpT > 0 && lerpT < 1) {
      return begin.resolve(context).lerpWith(end.resolve(context), lerpT);
    }
    return theme.resolve(context);
  }

  @override
  bool updateShouldNotify(_MantleScope oldWidget) {
    return theme != oldWidget.theme ||
        colorScheme != oldWidget.colorScheme ||
        baseline != oldWidget.baseline ||
        isRoot != oldWidget.isRoot ||
        schemeForced != oldWidget.schemeForced ||
        lerpT != oldWidget.lerpT ||
        !identical(lerpBegin, oldWidget.lerpBegin) ||
        !identical(lerpEnd, oldWidget.lerpEnd);
  }

  @override
  bool updateShouldNotifyDependent(
    covariant _MantleScope oldWidget,
    Set<MantleAspect> dependencies,
  ) {
    for (final aspect in dependencies) {
      final changed = switch (aspect) {
        MantleAspect.colors => !identical(theme.colors, oldWidget.theme.colors),
        MantleAspect.icons => !identical(theme.icons, oldWidget.theme.icons),
        MantleAspect.typography => !identical(
          theme.typography,
          oldWidget.theme.typography,
        ),
        MantleAspect.spacing =>
          !identical(theme.spacing, oldWidget.theme.spacing) ||
              !identical(
                theme.spacingBuilder,
                oldWidget.theme.spacingBuilder,
              ) ||
              lerpT != oldWidget.lerpT,
        MantleAspect.radius =>
          !identical(theme.radius, oldWidget.theme.radius) ||
              !identical(theme.radiusBuilder, oldWidget.theme.radiusBuilder) ||
              lerpT != oldWidget.lerpT,
        MantleAspect.shadows => !identical(
          theme.shadows,
          oldWidget.theme.shadows,
        ),
        MantleAspect.breakpoints =>
          !identical(theme.breakpoints, oldWidget.theme.breakpoints) ||
              !identical(
                theme.breakpointsBuilder,
                oldWidget.theme.breakpointsBuilder,
              ) ||
              lerpT != oldWidget.lerpT,
        MantleAspect.components =>
          theme.components != oldWidget.theme.components ||
              theme.componentDefaults != oldWidget.theme.componentDefaults,
        MantleAspect.colorScheme => colorScheme != oldWidget.colorScheme,
        MantleAspect.config => _configChanged(theme, oldWidget.theme),
      };
      if (changed) {
        return true;
      }
    }
    return false;
  }
}

bool _configChanged(MantleTheme a, MantleTheme b) {
  return a.focusRing != b.focusRing ||
      a.scale != b.scale ||
      a.white != b.white ||
      a.black != b.black ||
      a.autoContrast != b.autoContrast ||
      a.luminanceThreshold != b.luminanceThreshold ||
      a.respectReducedMotion != b.respectReducedMotion ||
      a.cursorType != b.cursorType ||
      a.primaryColor != b.primaryColor ||
      a.primaryShade != b.primaryShade ||
      a.defaultRadius != b.defaultRadius ||
      a.defaultGradient != b.defaultGradient;
}
