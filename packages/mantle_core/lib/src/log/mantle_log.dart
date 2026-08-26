import 'package:flutter/foundation.dart';
import 'package:mantle_core/src/components/errors.dart';

/// How [MantleLog.warnFallback] behaves when a baseline delegate is used.
enum FallbackPolicy {
  /// Log once per `(theme, delegate)` pair (debug and profile only).
  warn,

  /// Throw. Used by theme packages to assert they cover every contract.
  throwing,

  /// Do nothing.
  ignore,
}

/// A single Mantle log record.
@immutable
class MantleLogRecord {
  /// Creates a log record.
  const MantleLogRecord({
    required this.message,
    this.delegate,
    this.theme,
  });

  /// Human-readable message.
  final String message;

  /// Contract type, when this record is a delegate fallback.
  final Type? delegate;

  /// Theme debug name, when this record is a delegate fallback.
  final String? theme;
}

/// Debug/profile logging for fallbacks and static-access warnings.
abstract final class MantleLog {
  /// Current fallback policy. Tests may set [FallbackPolicy.throwing].
  static FallbackPolicy fallbackPolicy = FallbackPolicy.warn;

  /// Optional sink; defaults to [debugPrint] when unset.
  static void Function(MantleLogRecord record)? onRecord;

  static final Set<(String, Type)> _warned = {};
  static List<MantleLogRecord>? _captured;

  /// Starts capturing records and returns the live list.
  static List<MantleLogRecord> capture() {
    _captured = <MantleLogRecord>[];
    return _captured!;
  }

  /// Clears warn-once state, captured records, and policy between tests.
  static void resetForTest() {
    _warned.clear();
    _captured = null;
    fallbackPolicy = FallbackPolicy.warn;
    onRecord = null;
  }

  /// Warns that [theme] had no [delegate] and the baseline was used.
  ///
  /// No-ops in release unless [fallbackPolicy] is [FallbackPolicy.throwing].
  /// Logs at most once per `(theme, delegate)` pair per session.
  static void warnFallback({
    required Type delegate,
    required String theme,
  }) {
    if (fallbackPolicy == FallbackPolicy.ignore) {
      return;
    }

    if (fallbackPolicy == FallbackPolicy.throwing) {
      throw MissingDelegateError(
        delegate,
        theme: theme,
        hasBaseline: true,
      );
    }

    if (kReleaseMode) {
      return;
    }

    if (!_warned.add((theme, delegate))) {
      return;
    }

    final message =
        '[mantle] Theme "$theme" has no $delegate. Falling back to the '
        'baseline implementation. Register one in your theme to silence '
        'this warning:\n'
        '  components: DelegateRegistry({ $delegate: My${delegate}Impl() })';
    final record = MantleLogRecord(
      message: message,
      delegate: delegate,
      theme: theme,
    );
    _emit(record);
  }

  static void _emit(MantleLogRecord record) {
    _captured?.add(record);
    final sink = onRecord;
    if (sink != null) {
      sink(record);
    } else {
      debugPrint(record.message);
    }
  }
}
