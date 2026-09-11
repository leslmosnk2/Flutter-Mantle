// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_button.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

/// Visual variants of [FileButton].
enum FileButtonVariant {
  /// The default variant.
  defaults,
}

/// Resolved visual values for [FileButton].
@immutable
class FileButtonStyle {
  /// Creates a [FileButtonStyle].
  const FileButtonStyle();

  /// Returns a copy of this [FileButtonStyle] with selected fields replaced.
  FileButtonStyle copyWith() => this;

  /// Merges [other] over this [FileButtonStyle]; null fields keep this value.
  FileButtonStyle mergeWith(FileButtonStyle? other) => this;
}

/// Resolved interaction state for [FileButton].
@immutable
class FileButtonState {
  /// Creates a [FileButtonState].
  const FileButtonState();
}

/// Values passed to [FileButtonDelegate] slots during build.
@immutable
class FileButtonContext {
  /// Creates a [FileButtonContext].
  const FileButtonContext({
    required this.context,
    required this.style,
    required this.state,
    required this.variant,
    required this.builder,
    required this.onPressed,
    required this.disabled,
    required this.multiple,
    this.accept,
  });

  /// The [BuildContext] for this build.
  final BuildContext context;

  /// Style overrides merged over theme defaults.
  final FileButtonStyle style;

  /// Resolved interaction state for this build.
  final FileButtonState state;

  /// The visual variant selected by the constructor.
  final FileButtonVariant variant;

  /// The builder.
  final FileButtonBuilder builder;

  /// Called when the control is pressed.
  final VoidCallback onPressed;

  /// Whether interaction is disabled.
  final bool disabled;

  /// Whether more than one item can be selected.
  final bool multiple;

  /// The accept.
  final String? accept;
}

/// Builder for the root slot.
class FileButtonRoot {
  /// Creates a [FileButtonRoot] from a builder function.
  const FileButtonRoot(this._build);

  final Widget Function(FileButtonContext context) _build;

  /// Invokes this slot with [context].
  Widget call(FileButtonContext context) => _build(context);
}

/// Theme-owned composition slots for [FileButton].
abstract class FileButtonDelegate extends ComponentDelegate {
  /// Creates a [FileButtonDelegate].
  const FileButtonDelegate();

  /// Builds the composition root.
  Widget root(FileButtonContext context);
}

/// A [FileButton] widget resolved through [FileButtonDelegate].
class FileButton extends StatelessWidget {
  /// Creates a [FileButton].
  const FileButton({
    super.key,
    required this.builder,
    required this.onPressed,
    this.disabled,
    this.multiple,
    this.accept,
    this.style,
  }) : variant = FileButtonVariant.defaults;

  /// The visual variant selected by the constructor.
  final FileButtonVariant variant;

  /// The builder.
  final FileButtonBuilder builder;

  /// Called when the control is pressed.
  final VoidCallback onPressed;

  /// Whether interaction is disabled.
  final bool? disabled;

  /// Whether more than one item can be selected.
  final bool? multiple;

  /// The accept.
  final String? accept;

  /// Style overrides merged over theme defaults.
  final FileButtonStyle? style;

  /// Resolves properties and builds via [FileButtonDelegate].
  @override
  Widget build(BuildContext context) {
    final resolvedBuilder = builder;
    final resolvedOnPressed = onPressed;
    final resolvedDisabled = disabled ?? false;
    final resolvedMultiple = multiple ?? false;
    final resolvedAccept = accept;

    const fromProps = FileButtonStyle();
    final merged = fromProps.mergeWith(style);
    final resolvedStyle = merged;
    const resolvedState = FileButtonState();
    final fileButtonContext = FileButtonContext(
      context: context,
      style: resolvedStyle,
      state: resolvedState,
      variant: variant,
      builder: resolvedBuilder,
      onPressed: resolvedOnPressed,
      disabled: resolvedDisabled,
      multiple: resolvedMultiple,
      accept: resolvedAccept,
    );
    final delegate = MantleTheme.of(context).delegate<FileButtonDelegate>();
    return delegate.root(fileButtonContext);
  }
}
