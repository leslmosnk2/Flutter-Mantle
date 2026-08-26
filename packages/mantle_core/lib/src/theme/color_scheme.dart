import 'package:flutter/widgets.dart';
import 'package:mantle_core/src/tokens/shade.dart';

/// Color scheme for a Mantle subtree.
///
/// [MantleColorScheme.auto] follows [MediaQuery.platformBrightnessOf]. After
/// resolution the provider only ever exposes [MantleColorScheme.light] or
/// [MantleColorScheme.dark] to descendants.
enum MantleColorScheme {
  /// Light surfaces and the [MantleShade.light] primary shade.
  light,

  /// Dark surfaces and the [MantleShade.dark] primary shade.
  dark,

  /// Resolve from the platform brightness.
  auto,
}

/// Reads and writes a preferred [MantleColorScheme] in external storage.
///
/// Persistence is app-owned (for example `shared_preferences`). Core ships
/// [MemoryColorSchemeManager] for tests and ephemeral use.
abstract interface class MantleColorSchemeManager {
  /// Returns the stored preference, or `null` when nothing has been saved.
  MantleColorScheme? load();

  /// Persists [scheme].
  void save(MantleColorScheme scheme);
}

/// In-memory [MantleColorSchemeManager].
class MemoryColorSchemeManager implements MantleColorSchemeManager {
  /// Creates a manager, optionally seeded with [initial].
  MemoryColorSchemeManager([MantleColorScheme? initial]) : _value = initial;

  MantleColorScheme? _value;

  @override
  MantleColorScheme? load() => _value;

  @override
  void save(MantleColorScheme scheme) => _value = scheme;
}

/// Environment the provider is running in.
enum MantleEnvironment {
  /// Normal runtime behavior.
  standard,

  /// Disables theme-transition animations (Mantine's `env: 'test'`).
  test,
}

/// Controls how focus rings are shown.
enum MantleFocusRing {
  /// Shown for keyboard focus only (default).
  auto,

  /// Shown for keyboard and pointer focus.
  always,

  /// Never shown.
  never,
}

/// Cursor used on interactive elements that do not set one themselves.
enum MantleCursorType {
  /// Native cursors (Mantine's `cursorType: 'default'`).
  system,

  /// `SystemMouseCursors.click` on interactive widgets.
  pointer,
}
