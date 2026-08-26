import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/combobox/combobox_chrome.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline ComboboxPopoverDelegate: dropdown attached to `child`.
class BasicComboboxPopoverDelegate extends ComboboxPopoverDelegate {
  /// Creates a baseline combobox-popover delegate.
  const BasicComboboxPopoverDelegate();

  @override
  Widget root(ComboboxPopoverContext context) =>
      _BasicComboboxPopover(popoverContext: context);
}

class _BasicComboboxPopover extends StatefulWidget {
  const _BasicComboboxPopover({required this.popoverContext});

  final ComboboxPopoverContext popoverContext;

  @override
  State<_BasicComboboxPopover> createState() => _BasicComboboxPopoverState();
}

class _BasicComboboxPopoverState extends State<_BasicComboboxPopover> {
  List<String> _value = const [];
  String _search = '';
  var _opened = false;

  ComboboxPopoverContext get _ctx => widget.popoverContext;

  List<String> get value => _ctx.value ?? _value;
  String get search => _ctx.searchValue ?? _search;
  bool get opened => _ctx.dropdownOpened ?? _opened;

  @override
  void didUpdateWidget(covariant _BasicComboboxPopover oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_ctx.value != oldWidget.popoverContext.value && _ctx.value != null) {
      _value = _ctx.value!;
    }
  }

  void _setOpened(bool next) {
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

  @override
  Widget build(BuildContext context) {
    final query = _ctx.searchable ? search : '';
    final visible = visibleComboboxItems(
      data: _ctx.data,
      search: query,
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
            selected: value.toSet(),
            withCheckIcon: _ctx.withCheckIcon,
            checkIconPosition: _ctx.checkIconPosition,
          );

    final target = _ctx.child is ComboboxPopoverTarget
        ? _ctx.child
        : ComboboxPopoverTarget(child: _ctx.child);

    return Combobox(
      dropdownOpened: opened,
      onDropdownOpen: () => _setOpened(true),
      onDropdownClose: () => _setOpened(false),
      size: _ctx.size,
      maxDropdownHeight: _ctx.maxDropdownHeight,
      onOptionSubmit: (submitted) {
        if (_ctx.multiple) {
          final next = List<String>.of(value);
          if (next.contains(submitted)) {
            if (_ctx.allowDeselect) {
              next.remove(submitted);
            }
          } else {
            next.add(submitted);
          }
          _setValue(next);
        } else if (_ctx.allowDeselect && value.contains(submitted)) {
          _setValue(const []);
          _setOpened(false);
        } else {
          _setValue([submitted]);
          _setOpened(false);
        }
      },
      children: [
        ComboboxTarget(child: target),
        ComboboxDropdown(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (_ctx.searchable)
                ComboboxSearch(
                  value: search,
                  onChanged: (next) {
                    if (_ctx.searchValue == null) {
                      setState(() => _search = next);
                    }
                    _ctx.onSearchChange?.call(next);
                  },
                ),
              ComboboxOptions(children: options),
            ],
          ),
        ),
      ],
    );
  }
}

/// Baseline [ComboboxPopoverTargetDelegate].
class BasicComboboxPopoverTargetDelegate extends ComboboxPopoverTargetDelegate {
  /// Creates a baseline popover-target delegate.
  const BasicComboboxPopoverTargetDelegate();

  @override
  Widget root(ComboboxPopoverTargetContext context) => context.child;
}
