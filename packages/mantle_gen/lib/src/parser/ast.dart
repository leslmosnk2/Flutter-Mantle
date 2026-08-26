import 'package:mantle_gen/src/parser/expression.dart';

/// A node in a compiled template abstract syntax tree.
sealed class TemplateNode {
  const TemplateNode();
}

/// Literal text emitted verbatim.
final class TextNode extends TemplateNode {
  /// Creates a [TextNode] with the given [value].
  const TextNode(this.value);

  /// The literal text content.
  final String value;
}

/// An expression interpolated into the output.
final class OutputNode extends TemplateNode {
  /// Creates an [OutputNode] for the given [expression].
  const OutputNode(this.expression);

  /// The expression to evaluate and render.
  final Expression expression;
}

/// A conditional block.
final class IfNode extends TemplateNode {
  /// Creates an [IfNode].
  const IfNode({
    required this.condition,
    required this.body,
    this.elifBranches = const [],
    this.elseBody = const [],
  });

  /// The condition for the primary branch.
  final Expression condition;

  /// Nodes rendered when [condition] is truthy.
  final List<TemplateNode> body;

  /// Additional `(condition, body)` branches.
  final List<(Expression, List<TemplateNode>)> elifBranches;

  /// Nodes rendered when no branch matches.
  final List<TemplateNode> elseBody;
}

/// A loop block.
final class ForNode extends TemplateNode {
  /// Creates a [ForNode].
  const ForNode({
    required this.itemName,
    required this.collection,
    required this.body,
    this.elseBody = const [],
  });

  /// The loop variable name.
  final String itemName;

  /// The collection expression to iterate over.
  final Expression collection;

  /// Nodes rendered for each item.
  final List<TemplateNode> body;

  /// Nodes rendered when the collection is empty.
  final List<TemplateNode> elseBody;
}

/// A raw block whose contents are emitted verbatim.
final class RawNode extends TemplateNode {
  /// Creates a [RawNode] with the given [value].
  const RawNode(this.value);

  /// The raw text content.
  final String value;
}
