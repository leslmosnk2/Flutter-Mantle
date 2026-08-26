import 'package:flutter/widgets.dart';
import 'package:mantle_basic/src/widgets/combobox/combobox_chrome.dart';
import 'package:mantle_widgets/mantle_widgets.dart';

/// Baseline [CascaderDelegate]: path selection through columns or a flat list.
class BasicCascaderDelegate extends CascaderDelegate {
  /// Creates a baseline cascader delegate.
  const BasicCascaderDelegate();

  @override
  Widget root(CascaderContext context) =>
      _BasicCascader(cascaderContext: context);
}

class _BasicCascader extends StatefulWidget {
  const _BasicCascader({required this.cascaderContext});

  final CascaderContext cascaderContext;

  @override
  State<_BasicCascader> createState() => _BasicCascaderState();
}

class _BasicCascaderState extends State<_BasicCascader> {
  List<String> _value = const [];
  List<String> _activePath = const [];
  String _search = '';
  var _opened = false;

  CascaderContext get _ctx => widget.cascaderContext;

  List<String>? get value {
    final current = _ctx.value ?? (_value.isEmpty ? null : _value);
    return current;
  }

  String get search => _ctx.searchValue ?? _search;
  bool get opened => _ctx.dropdownOpened ?? _opened;

  @override
  void didUpdateWidget(covariant _BasicCascader oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (_ctx.value != oldWidget.cascaderContext.value && _ctx.value != null) {
      _value = _ctx.value!;
      _activePath = _ctx.value!;
    }
  }

  void _setOpened(bool next) {
    if (_ctx.disabled) {
      return;
    }
    if (_ctx.dropdownOpened == null) {
      setState(() => _opened = next);
    }
    if (next) {
      _ctx.onDropdownOpen?.call();
      setState(() {
        _activePath = value ?? const [];
      });
    } else {
      _ctx.onDropdownClose?.call();
    }
  }

  void _setValue(List<String>? path) {
    setState(() => _value = path ?? const []);
    _ctx.onChange?.call(path);
  }

  String get _display {
    final path = value;
    if (path == null || path.isEmpty) {
      return '';
    }
    final nodes = resolveCascaderPath(_ctx.data, path);
    return [
      for (final node in nodes) node.label,
    ].join(_ctx.separator);
  }

  List<String>? _pathTo(String target) {
    List<String>? walk(List<CascaderOption> nodes, List<String> path) {
      for (final option in nodes) {
        final next = [...path, option.value];
        if (option.value == target) {
          return next;
        }
        if (option.hasChildren) {
          final found = walk(option.children!, next);
          if (found != null) {
            return found;
          }
        }
      }
      return null;
    }

    return walk(_ctx.data, const []);
  }

  void _select(List<String> path, CascaderOption option) {
    final isLeaf = !option.hasChildren;
    if (option.disabled) {
      return;
    }
    if (_ctx.changeOnSelect || isLeaf) {
      if (_ctx.allowDeselect && _samePath(value, path)) {
        _setValue(null);
      } else {
        _setValue(path);
      }
      if (isLeaf) {
        _setOpened(false);
      }
    }
    setState(() => _activePath = path);
  }

  @override
  Widget build(BuildContext context) {
    final dropdownChild = _ctx.searchable && search.trim().isNotEmpty
        ? _flatResults()
        : (_ctx.withColumns ? _columns() : _flatResults());

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
        withScrollArea: false,
        readOnly: _ctx.disabled,
        onOptionSubmit: (submitted) {
          final option = findCascaderOption(_ctx.data, submitted);
          final path = _pathTo(submitted);
          if (option != null && path != null) {
            _select(path, option);
          }
        },
        children: [
          ComboboxTarget(
            child: Input(
              size: _ctx.size,
              radius: _ctx.radius,
              disabled: _ctx.disabled,
              readOnly: !_ctx.searchable,
              pointer: !_ctx.searchable,
              value: _ctx.searchable
                  ? (search.isEmpty ? _display : search)
                  : (_display.isEmpty ? null : _display),
              placeholder: _ctx.placeholder,
              onChanged: _ctx.searchable
                  ? (next) {
                      if (_ctx.searchValue == null) {
                        setState(() => _search = next);
                      }
                      _ctx.onSearchChange?.call(next);
                      _setOpened(true);
                    }
                  : null,
              error: _ctx.error != null ? const SizedBox.shrink() : null,
              rightSection: _ctx.clearable && (value?.isNotEmpty ?? false)
                  ? GestureDetector(
                      onTap: () => _setValue(null),
                      child: const Text('×'),
                    )
                  : ComboboxChevron(
                      size: _ctx.size,
                      error: _ctx.error != null,
                    ),
            ),
          ),
          ComboboxDropdown(
            child: ComboboxOptions(children: [dropdownChild]),
          ),
        ],
      ),
    );
  }

  Widget _columns() {
    final columns = <List<CascaderOption>>[_ctx.data];
    var level = _ctx.data;
    for (final value in _activePath) {
      CascaderOption? match;
      for (final option in level) {
        if (option.value == value) {
          match = option;
          break;
        }
      }
      if (match == null || !match.hasChildren) {
        break;
      }
      columns.add(match.children!);
      level = match.children!;
    }

    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: _ctx.maxDropdownHeight),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var i = 0; i < columns.length; i++)
              SizedBox(
                width: _ctx.columnWidth,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    for (final option in columns[i])
                      _CascaderRow(
                        option: option,
                        inPath:
                            i < _activePath.length &&
                            _activePath[i] == option.value,
                        selected: _samePath(
                          value,
                          [..._activePath.take(i), option.value],
                        ),
                        onHover:
                            _ctx.expandTrigger == CascaderExpandTrigger.hover
                            ? () {
                                if (option.hasChildren) {
                                  setState(() {
                                    _activePath = [
                                      ..._activePath.take(i),
                                      option.value,
                                    ];
                                  });
                                }
                              }
                            : null,
                      ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _flatResults() {
    final query = search.trim().toLowerCase();
    final rows = <(List<String>, CascaderOption)>[];
    void walk(List<CascaderOption> nodes, List<String> path) {
      for (final option in nodes) {
        final next = [...path, option.value];
        final labelPath = resolveCascaderPath(
          _ctx.data,
          next,
        ).map((node) => node.label).join(_ctx.separator);
        final matches =
            query.isEmpty || labelPath.toLowerCase().contains(query);
        if (!option.hasChildren && matches) {
          rows.add((next, option));
        } else if (option.hasChildren) {
          if (_ctx.changeOnSelect && matches) {
            rows.add((next, option));
          }
          walk(option.children!, next);
        }
      }
    }

    walk(_ctx.data, const []);
    if (rows.isEmpty) {
      return ComboboxEmpty(
        child: Text(_ctx.nothingFoundMessage ?? 'Nothing found'),
      );
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (final row in rows)
          ComboboxOption(
            key: comboboxOptionKey(row.$2.value),
            value: row.$2.value,
            selected: _samePath(value, row.$1),
            disabled: row.$2.disabled,
            child: Text(
              resolveCascaderPath(
                _ctx.data,
                row.$1,
              ).map((node) => node.label).join(_ctx.separator),
            ),
          ),
      ],
    );
  }
}

bool _samePath(List<String>? a, List<String> b) {
  if (a == null || a.length != b.length) {
    return false;
  }
  for (var i = 0; i < a.length; i++) {
    if (a[i] != b[i]) {
      return false;
    }
  }
  return true;
}

class _CascaderRow extends StatelessWidget {
  const _CascaderRow({
    required this.option,
    required this.inPath,
    required this.selected,
    this.onHover,
  });

  final CascaderOption option;
  final bool inPath;
  final bool selected;
  final VoidCallback? onHover;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: onHover == null ? null : (_) => onHover!(),
      child: ComboboxOption(
        key: comboboxOptionKey(option.value),
        value: option.value,
        selected: selected || inPath,
        disabled: option.disabled,
        child: Row(
          children: [
            Expanded(child: Text(option.label)),
            if (option.hasChildren) const ComboboxChevron(),
          ],
        ),
      ),
    );
  }
}
