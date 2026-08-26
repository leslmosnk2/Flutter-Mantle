import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/combobox/combobox_chrome.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [MultiSelectDelegate]: pills + dropdown.
class BasicMultiSelectDelegate extends MultiSelectDelegate {
  /// Creates a baseline multi-select delegate.
  const BasicMultiSelectDelegate();

  @override
  Widget root(MultiSelectContext context) =>
      _BasicMultiSelect(multiSelectContext: context);
}

class _BasicMultiSelect extends StatefulWidget {
  const _BasicMultiSelect({required this.multiSelectContext});

  final MultiSelectContext multiSelectContext;

  @override
  State<_BasicMultiSelect> createState() => _BasicMultiSelectState();
}

class _BasicMultiSelectState extends State<_BasicMultiSelect> {
  List<String> _value = const [];
  String _search = '';
  var _opened = false;

  MultiSelectContext get _ctx => widget.multiSelectContext;

  List<String> get value => _ctx.value ?? _value;
  String get search => _ctx.searchValue ?? _search;
  bool get opened => _ctx.dropdownOpened ?? _opened;

  @override
  void didUpdateWidget(covariant _BasicMultiSelect oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_ctx.value != oldWidget.multiSelectContext.value &&
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

  void _setValue(List<String> next) {
    setState(() => _value = next);
    _ctx.onChange?.call(next);
  }

  void _remove(String item) {
    _ctx.onRemove?.call(item);
    _setValue([
      for (final value in this.value)
        if (value != item) value,
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final selected = value.toSet();
    final visible = visibleComboboxItems(
      data: _ctx.data,
      search: _ctx.searchable ? search : '',
      limit: _ctx.limit,
      hideValues: _ctx.hidePickedOptions ? selected : const {},
    );
    final atMax = _ctx.maxValues != null && value.length >= _ctx.maxValues!;
    final options = visible.isEmpty
        ? [
            ComboboxEmpty(
              child: Text(_ctx.nothingFoundMessage ?? 'Nothing found'),
            ),
          ]
        : buildComboboxOptions(
            items: visible,
            selected: selected,
            withCheckIcon: _ctx.withCheckIcon,
            checkIconPosition: _ctx.checkIconPosition,
          );

    final pills = [
      for (final item in value)
        Pill(
          withRemoveButton: !_ctx.disabled && !_ctx.readOnly,
          onRemove: () => _remove(item),
          child: Text(itemForValue(_ctx.data, item)?.label ?? item),
        ),
      if (_ctx.searchable)
        PillsInputField(
          value: search,
          placeholder: value.isEmpty ? _ctx.placeholder : null,
          disabled: _ctx.disabled || _ctx.readOnly || atMax,
          onChanged: (next) {
            if (_ctx.searchValue == null) {
              setState(() => _search = next);
            }
            _ctx.onSearchChange?.call(next);
            _setOpened(true);
          },
        )
      else if (value.isEmpty && _ctx.placeholder != null)
        Text(_ctx.placeholder!),
    ];

    return Combobox(
      dropdownOpened: opened,
      onDropdownOpen: () => _setOpened(true),
      onDropdownClose: () => _setOpened(false),
      size: _ctx.size,
      maxDropdownHeight: _ctx.maxDropdownHeight,
      readOnly: _ctx.readOnly || _ctx.disabled || atMax,
      onOptionSubmit: (submitted) {
        if (selected.contains(submitted)) {
          _remove(submitted);
        } else if (!atMax) {
          _setValue([...value, submitted]);
        }
        if (_ctx.searchable) {
          if (_ctx.searchValue == null) {
            setState(() => _search = '');
          }
          _ctx.onSearchChange?.call('');
        }
      },
      children: [
        ComboboxTarget(
          child: PillsInput(
            size: _ctx.size,
            radius: _ctx.radius,
            disabled: _ctx.disabled,
            label: _ctx.label,
            description: _ctx.description,
            error: _ctx.error,
            children: [
              ...pills,
              if (_ctx.clearable && value.isNotEmpty)
                GestureDetector(
                  onTap: () {
                    _setValue(const []);
                    _ctx.onChange?.call(const []);
                  },
                  child: const Text('×'),
                ),
            ],
          ),
        ),
        ComboboxDropdown(child: ComboboxOptions(children: options)),
      ],
    );
  }
}
