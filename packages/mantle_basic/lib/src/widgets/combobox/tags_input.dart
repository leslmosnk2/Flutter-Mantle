import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/combobox/combobox_chrome.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [TagsInputDelegate]: free-form tags with optional suggestions.
class BasicTagsInputDelegate extends TagsInputDelegate {
  /// Creates a baseline tags-input delegate.
  const BasicTagsInputDelegate();

  @override
  Widget root(TagsInputContext context) =>
      _BasicTagsInput(tagsInputContext: context);
}

class _BasicTagsInput extends StatefulWidget {
  const _BasicTagsInput({required this.tagsInputContext});

  final TagsInputContext tagsInputContext;

  @override
  State<_BasicTagsInput> createState() => _BasicTagsInputState();
}

class _BasicTagsInputState extends State<_BasicTagsInput> {
  List<String> _value = const [];
  String _search = '';
  var _opened = false;

  TagsInputContext get _ctx => widget.tagsInputContext;

  List<String> get value => _ctx.value ?? _value;
  String get search => _ctx.searchValue ?? _search;
  bool get opened => _ctx.dropdownOpened ?? _opened;
  List<ComboboxItem> get data => _ctx.data ?? const [];

  @override
  void didUpdateWidget(covariant _BasicTagsInput oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_ctx.value != oldWidget.tagsInputContext.value && _ctx.value != null) {
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

  bool get _atMax => _ctx.maxTags != null && value.length >= _ctx.maxTags!;

  void _addTag(String raw) {
    final tag = raw.trim();
    if (tag.isEmpty || _atMax) {
      return;
    }
    final duplicate = value.any(
      (item) => item.toLowerCase() == tag.toLowerCase(),
    );
    if (duplicate && !_ctx.allowDuplicates) {
      return;
    }
    _setValue([...value, tag]);
    _setSearch('');
  }

  void _setSearch(String next) {
    var query = next;
    final split = _ctx.splitChars;
    if (split.isNotEmpty && query.contains(split)) {
      final parts = query.split(split);
      for (var i = 0; i < parts.length - 1; i++) {
        _addTag(parts[i]);
      }
      query = parts.last;
    }
    if (_ctx.searchValue == null) {
      setState(() => _search = query);
    }
    _ctx.onSearchChange?.call(query);
    if (data.isNotEmpty) {
      _setOpened(true);
    }
  }

  @override
  Widget build(BuildContext context) {
    final visible = visibleComboboxItems(
      data: data,
      search: search,
      limit: _ctx.limit,
      hideValues: value.toSet(),
    );
    final options = data.isEmpty
        ? const <Widget>[]
        : visible.isEmpty
        ? [
            ComboboxEmpty(
              child: Text(_ctx.nothingFoundMessage ?? 'Nothing found'),
            ),
          ]
        : buildComboboxOptions(items: visible, selected: value.toSet());

    return Focus(
      onKeyEvent: (node, event) {
        if (event is KeyDownEvent &&
            event.logicalKey == LogicalKeyboardKey.enter) {
          _addTag(search);
          return KeyEventResult.handled;
        }
        if (event is KeyDownEvent &&
            event.logicalKey == LogicalKeyboardKey.backspace &&
            search.isEmpty &&
            value.isNotEmpty) {
          _remove(value.last);
          return KeyEventResult.handled;
        }
        return KeyEventResult.ignored;
      },
      child: Combobox(
        dropdownOpened: opened && options.isNotEmpty,
        onDropdownOpen: () => _setOpened(true),
        onDropdownClose: () => _setOpened(false),
        size: _ctx.size,
        maxDropdownHeight: _ctx.maxDropdownHeight,
        readOnly: _ctx.readOnly || _ctx.disabled,
        onOptionSubmit: _addTag,
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
                for (final tag in value)
                  Pill(
                    withRemoveButton: !_ctx.disabled && !_ctx.readOnly,
                    onRemove: () => _remove(tag),
                    child: Text(tag),
                  ),
                PillsInputField(
                  value: search,
                  placeholder: value.isEmpty ? _ctx.placeholder : null,
                  disabled: _ctx.disabled || _ctx.readOnly || _atMax,
                  onChanged: _setSearch,
                ),
                if (_ctx.clearable && value.isNotEmpty)
                  GestureDetector(
                    onTap: () => _setValue(const []),
                    child: const Text('×'),
                  ),
              ],
            ),
          ),
          ComboboxDropdown(
            hidden: options.isEmpty,
            child: ComboboxOptions(children: options),
          ),
        ],
      ),
    );
  }
}
