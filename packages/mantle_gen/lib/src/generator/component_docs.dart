/// Dartdoc strings emitted for generated component APIs.
abstract final class GeneratedComponentDocs {
  /// One-line description of the public widget.
  static String widget(String name) =>
      '${_capArticle(name)} [$name] widget resolved through [${name}Delegate].';

  /// One-line description of the variant enum.
  static String variantEnum(String name) => 'Visual variants of [$name].';

  /// One-line description of an enum value.
  static String variantValue(String variantName) {
    if (variantName == 'default' || variantName == 'defaults') {
      return 'The default variant.';
    }
    return 'The ${_humanize(variantName)} variant.';
  }

  /// Constructor dartdoc for a named or unnamed factory.
  static String constructor(
    String name, {
    required bool unnamed,
    String? variantName,
  }) {
    if (unnamed) {
      return 'Creates ${_article(name)} [$name].';
    }
    return 'Creates ${_article(variantName ?? '')} '
        '${_humanize(variantName ?? '')} [$name].';
  }

  /// Constructor dartdoc for a generated type (`FooStyle`, `FooContext`, …).
  static String typeConstructor(String typeName) =>
      'Creates ${_article(typeName)} [$typeName].';

  /// One-line description of the style class.
  static String styleClass(String name) =>
      'Resolved visual values for [$name].';

  /// One-line description of the state class.
  static String stateClass(String name) =>
      'Resolved interaction state for [$name].';

  /// One-line description of the context class.
  static String contextClass(String name) =>
      'Values passed to [${name}Delegate] slots during build.';

  /// One-line description of a slot callable type.
  static String slotClass(String methodName) =>
      'Builder for the ${_humanize(methodName)} slot.';

  /// Constructor dartdoc for a slot callable.
  static String slotConstructor(String typeName) =>
      'Creates ${_article(typeName)} [$typeName] from a builder function.';

  /// Dartdoc for `call` on a slot callable.
  static String slotCall() => 'Invokes this slot with [context].';

  /// One-line description of the theme delegate.
  static String delegateClass(String name) =>
      'Theme-owned composition slots for [$name].';

  /// Dartdoc for a delegate slot method.
  static String delegateMethod(String methodName) {
    if (methodName == 'root') {
      return 'Builds the composition root.';
    }
    return 'Builds the ${_humanize(methodName)} slot.';
  }

  /// Dartdoc for `copyWith`.
  static String copyWith(String styleClassName) {
    return 'Returns a copy of this [$styleClassName] with selected fields '
        'replaced.';
  }

  /// Dartdoc for `mergeWith`.
  static String mergeWith(String styleClassName) {
    return 'Merges [other] over this [$styleClassName]; null fields keep this '
        'value.';
  }

  /// Dartdoc for `Widget.build`.
  static String buildMethod(String name) =>
      'Resolves properties and builds via [${name}Delegate].';

  /// Dartdoc for a generated field or constructor parameter.
  static String property(
    String name, {
    String? type,
    String? componentName,
  }) {
    final known = _known[name];
    if (known != null) return known;

    if (name.startsWith('on') && name.length > 2 && _isUpper(name[2])) {
      return 'Called when ${_humanize(name.substring(2))}.';
    }
    if (name.startsWith('has') && name.length > 3 && _isUpper(name[3])) {
      return 'Whether this has ${_humanize(name.substring(3))}.';
    }
    if (name.startsWith('is') && name.length > 2 && _isUpper(name[2])) {
      return 'Whether this is ${_humanize(name.substring(2))}.';
    }

    final bareType = type?.replaceAll('?', '');
    if (bareType == 'bool') {
      return 'Whether ${_humanize(name)}.';
    }

    if (componentName != null && name == 'variant') {
      return 'The visual variant of this [$componentName].';
    }
    if (componentName != null && name == 'style') {
      return 'Style overrides merged over [$componentName] theme defaults.';
    }

    return 'The ${_humanize(name)}.';
  }

  static const _known = <String, String>{
    'active': 'Whether this item is the active option.',
    'align': 'Text alignment.',
    'alignment': 'Content alignment inside the component.',
    'appearance': 'Visual appearance token.',
    'autoContrast': 'Whether to pick a contrasting foreground automatically.',
    'background': 'Background color.',
    'block': 'Whether to render as a block instead of inline.',
    'borderColor': 'Border color token or value.',
    'center': 'Whether to center content.',
    'chevron': 'Expand/collapse indicator widget.',
    'chevronPosition': 'Side of the label the chevron is placed on.',
    'child': 'The primary child widget.',
    'children': 'Child widgets composed by this component.',
    'cite': 'Citation shown with the quote.',
    'clearable': 'Whether the value can be cleared.',
    'color': 'Foreground or accent color.',
    'context': 'The [BuildContext] for this build.',
    'controlSize': 'Size of the scroll controls.',
    'data': 'Tabular data to render.',
    'defaultValue': 'Initial value when [value] is omitted.',
    'description': 'Supporting description text.',
    'disableChevronRotation': 'Whether to keep the chevron unrotated.',
    'disabled': 'Whether interaction is disabled.',
    'draggable': 'Whether the content can be dragged.',
    'dropdownOpened': 'Whether the dropdown is open.',
    'duration': 'Animation duration in milliseconds.',
    'error': 'Error text or error state.',
    'exitDuration': 'Exit animation duration in milliseconds.',
    'fadeEdges': 'Whether to fade the scrolling edges.',
    'fontSize': 'Font size in logical pixels.',
    'fw': 'Font weight.',
    'gap': 'Spacing token between items.',
    'gradient': 'Gradient fill for this variant.',
    'grow': 'Whether the control expands to fill available width.',
    'height': 'Height in logical pixels.',
    'hidden': 'Whether this content is hidden.',
    'hoverBackground': 'Background color while hovered.',
    'hoverColor': 'Foreground color while hovered.',
    'horizontalPadding': 'Horizontal padding in logical pixels.',
    'icon': 'Leading or decorative icon.',
    'iconSize': 'Icon size in logical pixels.',
    'inherit': 'Whether to inherit typography from the parent.',
    'inline': 'Whether to render inline.',
    'keepMounted': 'Whether to keep children mounted when closed.',
    'label': 'The label.',
    'lineClamp': 'Maximum number of lines before clamping.',
    'loading': 'Whether a loading indicator is shown.',
    'margin': 'Outer spacing.',
    'maxHeight': 'Maximum height in logical pixels.',
    'maxTags': 'Maximum number of tags.',
    'maxValues': 'Maximum number of selected values.',
    'maxWidth': 'Maximum width in logical pixels.',
    'minWidth': 'Minimum width in logical pixels.',
    'mounted': 'Whether the transition is in the mounted phase.',
    'multiple': 'Whether more than one item can be selected.',
    'nothingFoundMessage': 'Message shown when no options match.',
    'onChange': 'Called when the value changes.',
    'onChanged': 'Called when the value changes.',
    'onClose': 'Called when the overlay closes.',
    'onDropdownClose': 'Called when the dropdown closes.',
    'onDropdownOpen': 'Called when the dropdown opens.',
    'onEntered': 'Called after the enter transition finishes.',
    'onExited': 'Called after the exit transition finishes.',
    'onOptionSubmit': 'Called when an option is submitted.',
    'onPressed': 'Called when the control is pressed.',
    'onRemove': 'Called when an item is removed.',
    'onSearchChange': 'Called when the search text changes.',
    'opened': 'Whether the content is expanded.',
    'order': 'Heading level from 1 to 6.',
    'padding': 'Inner spacing.',
    'pauseOnHover': 'Whether to pause motion while hovered.',
    'placeholder': 'Placeholder text when empty.',
    'prefix': 'Widget placed before the main content.',
    'radius': 'Corner radius.',
    'readOnly': 'Whether the value cannot be edited.',
    'repeat': 'How many times the content is repeated.',
    'reverse': 'Whether motion runs in reverse.',
    'scrollAmount': 'Distance scrolled by each control press.',
    'searchable': 'Whether the list can be filtered.',
    'searchValue': 'Controlled search text.',
    'selected': 'Whether this item is selected.',
    'shadow': 'Shadow token.',
    'size': 'Size token.',
    'spacing': 'Spacing token between items.',
    'span': 'Whether to render as an inline span.',
    'splitChars': 'Characters that split tags.',
    'state': 'Resolved interaction state for this build.',
    'stickyHeader': 'Whether the header stays pinned while scrolling.',
    'striped': 'Whether rows use alternating backgrounds.',
    'style': 'Style overrides merged over theme defaults.',
    'suffix': 'Widget placed after the main content.',
    'text': 'The text to display.',
    'textStyle': 'Text style overrides.',
    'truncate': 'How overflowing text is truncated.',
    'value': 'The controlled value.',
    'variant': 'The visual variant selected by the constructor.',
    'width': 'Width in logical pixels.',
    'withBorder': 'Whether to draw a border.',
    'withPadding': 'Whether to include default padding.',
    'withRemoveButton': 'Whether a remove control is shown.',
    'withScrollArea': 'Whether options are wrapped in a scroll area.',
  };

  static bool _isUpper(String ch) =>
      ch.toUpperCase() == ch && ch.toLowerCase() != ch;

  static String _article(String name) {
    if (name.isEmpty) return 'a';
    const vowels = 'AEIOU';
    return vowels.contains(name[0].toUpperCase()) ? 'an' : 'a';
  }

  static String _capArticle(String name) {
    final article = _article(name);
    return '${article[0].toUpperCase()}${article.substring(1)}';
  }

  static String _humanize(String name) {
    if (name.isEmpty) return name;
    final buffer = StringBuffer();
    for (var i = 0; i < name.length; i++) {
      final ch = name[i];
      if (i > 0 && _isUpper(ch)) {
        buffer
          ..write(' ')
          ..write(ch.toLowerCase());
      } else {
        buffer.write(i == 0 ? ch.toLowerCase() : ch);
      }
    }
    return buffer.toString();
  }
}
