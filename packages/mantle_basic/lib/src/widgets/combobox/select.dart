import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/combobox/combobox_chrome.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [SelectDelegate]: input + Combobox options.
class BasicSelectDelegate extends SelectDelegate {
  /// Creates a baseline select delegate.
  const BasicSelectDelegate();

  @override
  Widget root(SelectContext context) => _BasicSelect(selectContext: context);
}

class _BasicSelect extends StatefulWidget {
  const _BasicSelect({required this.selectContext});

  final SelectContext selectContext;

  @override
  State<_BasicSelect> createState() => _BasicSelectState();
}

class _BasicSelectState extends State<_BasicSelect> {
  String? _value;
  String _search = '';
  var _opened = false;

  SelectContext get _ctx => widget.selectContext;

  String? get value => _ctx.value ?? _value;
  String get search => _ctx.searchValue ?? _search;
  bool get opened => _ctx.dropdownOpened ?? _opened;

  @override
  void didUpdateWidget(covariant _BasicSelect oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_ctx.value != oldWidget.selectContext.value) {
      _value = _ctx.value;
    }
    if (_ctx.searchValue != oldWidget.selectContext.searchValue &&
        _ctx.searchValue != null) {
      _search = _ctx.searchValue!;
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

  void _setValue(String? next) {
    setState(() => _value = next);
    _ctx.onChange?.call(next);
  }

  void _setSearch(String next) {
    if (_ctx.searchValue == null) {
      setState(() => _search = next);
    }
    _ctx.onSearchChange?.call(next);
    if (!opened) {
      _setOpened(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final selected = itemForValue(_ctx.data, value);
    final query = _ctx.searchable ? search : '';
    final visible = visibleComboboxItems(
      data: _ctx.data,
      search: query,
      limit: _ctx.limit,
    );
    final display = _ctx.searchable ? search : (selected?.label ?? value ?? '');
    final options = visible.isEmpty
        ? [
            ComboboxEmpty(
              child: Text(_ctx.nothingFoundMessage ?? 'Nothing found'),
            ),
          ]
        : buildComboboxOptions(
            items: visible,
            selected: {?value},
            withCheckIcon: _ctx.withCheckIcon,
            checkIconPosition: _ctx.checkIconPosition,
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
          if (_ctx.allowDeselect && submitted == value) {
            _setValue(null);
            if (_ctx.searchable) {
              _setSearch('');
            }
          } else {
            _setValue(submitted);
            final item = itemForValue(_ctx.data, submitted);
            if (_ctx.searchable) {
              _setSearch(item?.label ?? submitted);
            }
          }
          _setOpened(false);
        },
        children: [
          ComboboxTarget(
            child: Input(
              size: _ctx.size,
              radius: _ctx.radius,
              disabled: _ctx.disabled,
              readOnly: !_ctx.searchable || _ctx.readOnly,
              pointer: !_ctx.searchable,
              value: display.isEmpty ? null : display,
              placeholder: _ctx.placeholder,
              onChanged: _ctx.searchable ? _setSearch : null,
              error: _ctx.error != null ? const SizedBox.shrink() : null,
              rightSection: _rightSection(selected != null || value != null),
            ),
          ),
          ComboboxDropdown(child: ComboboxOptions(children: options)),
        ],
      ),
    );
  }

  Widget _rightSection(bool hasValue) {
    if (_ctx.clearable && hasValue && !_ctx.disabled && !_ctx.readOnly) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          _setValue(null);
          if (_ctx.searchable) {
            _setSearch('');
          }
        },
        child: const Text('×'),
      );
    }
    return ComboboxChevron(size: _ctx.size, error: _ctx.error != null);
  }
}
