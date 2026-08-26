# FileButton

Baseline `FileButtonDelegate` implementation (`BasicFileButtonDelegate`).

Mantine-like `FileButtonDelegate`: injects a press handler into `builder`. Does not open a platform file picker. Apps should perform picking inside [FileButtonContext.onPressed], using [FileButtonContext.accept] and [FileButtonContext.multiple] as hints.

Source: `lib/src/widgets/buttons/file_button.dart`.

`BasicTheme` registers `FileButtonDelegate: BasicFileButtonDelegate()`.

Public constructors and props: [FileButton](/widgets/buttons/FileButton/).
