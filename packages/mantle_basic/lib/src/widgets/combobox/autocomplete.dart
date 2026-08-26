import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/combobox/combobox_chrome.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [AutocompleteDelegate]: free text plus suggestions.
class BasicAutocompleteDelegate extends AutocompleteDelegate {
  /// Creates a baseline autocomplete delegate.
  const BasicAutocompleteDelegate();

  @override
  Widget root(AutocompleteContext context) =>
      _BasicAutocomplete(autocompleteContext: context);
}

class _BasicAutocomplete extends StatefulWidget {
  const _BasicAutocomplete({required this.autocompleteContext});

  final AutocompleteContext autocompleteContext;

  @override
  State<_BasicAutocomplete> createState() => _BasicAutocompleteState();
}

class _BasicAutocompleteState extends State<_BasicAutocomplete> {
  String _value = '';
  var _opened = false;

  AutocompleteContext get _ctx => widget.autocompleteContext;

  String get value => _ctx.value ?? _value;
  bool get opened => _ctx.dropdownOpened ?? _opened;

  @override
  void didUpdateWidget(covariant _BasicAutocomplete oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_ctx.value != oldWidget.autocompleteContext.value &&
        _ctx.value != null) {
      _value = _ctx.value!;
    }
  }

  void _setOpened(bool next) {
    if (_ctx.disabled || _ctx.readOnly) {
      return;
    }
    if (_ctx.dropdownOpened == null) {
      setState(() => _opened = next);
    }
    if (next) {
      _ctx.onDropdownOpen?.call();
    } else {
      _ctx.onDropdownClose?.call();
    }
  }

  void _setValue(String next) {
    setState(() => _value = next);
    _ctx.onChange?.call(next);
    if (next.isNotEmpty) {
      _setOpened(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final visible = visibleComboboxItems(
      data: _ctx.data,
      search: value,
      limit: _ctx.limit,
    );
    final options = visible.isEmpty
        ? [
            ComboboxEmpty(
              child: Text(_ctx.nothingFoundMessage ?? 'Nothing found'),
            ),
          ]
        : buildComboboxOptions(
            items: visible,
            selected: {value},
          );

    return wrapComboboxField(
      size: _ctx.size,
      label: _ctx.label,
      description: _ctx.description,
      error: _ctx.error,
      child: Combobox(
        dropdownOpened: opened,
        onDropdownOpen: () => _setOpened(true),
        onDropdownClose: () => _setOpened(false),
        size: _ctx.size,
        maxDropdownHeight: _ctx.maxDropdownHeight,
        readOnly: _ctx.readOnly || _ctx.disabled,
        onOptionSubmit: (submitted) {
          final item = itemForValue(_ctx.data, submitted);
          _setValue(item?.label ?? submitted);
          _setOpened(false);
        },
        children: [
          ComboboxTarget(
            child: Input(
              size: _ctx.size,
              radius: _ctx.radius,
              disabled: _ctx.disabled,
              readOnly: _ctx.readOnly,
              value: value.isEmpty ? null : value,
              placeholder: _ctx.placeholder,
              onChanged: _setValue,
              error: _ctx.error != null ? const SizedBox.shrink() : null,
              rightSection: _ctx.clearable && value.isNotEmpty
                  ? GestureDetector(
                      onTap: () => _setValue(''),
                      child: const Text('×'),
                    )
                  : null,
            ),
          ),
          ComboboxDropdown(child: ComboboxOptions(children: options)),
        ],
      ),
    );
  }
}
