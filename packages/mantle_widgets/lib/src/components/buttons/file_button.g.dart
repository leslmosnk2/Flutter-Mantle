// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_button.dart';

// **************************************************************************
// MantleComponentGenerator
// **************************************************************************

enum FileButtonVariant { defaults }

@immutable
class FileButtonStyle {
  const FileButtonStyle();

  FileButtonStyle copyWith() => this;

  FileButtonStyle mergeWith(FileButtonStyle? other) => this;
}

@immutable
class FileButtonState {
  const FileButtonState();
}

@immutable
class FileButtonContext {
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

  final BuildContext context;
  final FileButtonStyle style;
  final FileButtonState state;
  final FileButtonVariant variant;
  final FileButtonBuilder builder;
  final VoidCallback onPressed;
  final bool disabled;
  final bool multiple;
  final String? accept;
}

class FileButtonRoot {
  const FileButtonRoot(this._build);

  final Widget Function(FileButtonContext context) _build;

  Widget call(FileButtonContext context) => _build(context);
}

abstract class FileButtonDelegate extends ComponentDelegate {
  const FileButtonDelegate();

  Widget root(FileButtonContext context);
}

class FileButton extends StatelessWidget {
  const FileButton({
    super.key,
    required this.builder,
    required this.onPressed,
    this.disabled,
    this.multiple,
    this.accept,
    this.style,
  }) : variant = FileButtonVariant.defaults;

  final FileButtonVariant variant;
  final FileButtonBuilder builder;
  final VoidCallback onPressed;
  final bool? disabled;
  final bool? multiple;
  final String? accept;
  final FileButtonStyle? style;

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
