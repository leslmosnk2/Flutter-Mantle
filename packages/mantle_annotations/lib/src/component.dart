import 'package:mantle_annotations/src/property.dart';
import 'package:mantle_annotations/src/variant.dart';

/// Represents a Mantle component.
sealed class MantleComponent {
  /// Creates a new Mantle component with the specified name and factories.
  const factory MantleComponent({
    required String name,
    required List<MantleVariant> variants,
    List<MantleProperty<dynamic>> properties,
  }) = MantleComponentContract;

  /// Creates a new Mantle component with the specified children.
  const factory MantleComponent.slot({
    List<MantleProperty<dynamic>> properties,
  }) = MantleComponentSlots;

  /// Creates a new Mantle component with the specified states.
  const factory MantleComponent.state({
    required List<MantleProperty<dynamic>> properties,
  }) = MantleComponentState;

  /// Creates a new Mantle component with the specified styles.
  const factory MantleComponent.style({
    required List<MantleProperty<dynamic>> properties,
  }) = MantleComponentStyle;
}

/// Represents the contract for a Mantle component.
class MantleComponentContract implements MantleComponent {
  /// Creates a component API contract.
  const MantleComponentContract({
    required this.name,
    required this.variants,
    this.properties = const [],
  });

  /// The name of the generated component.
  final String name;

  /// The list of factory methods for the generated component.
  final List<MantleVariant> variants;

  /// A list of properties shared along the different factories.
  final List<MantleProperty<dynamic>> properties;
}

/// Represents the slots for a Mantle component.
class MantleComponentSlots implements MantleComponent {
  /// Creates a slot contract for a component's composition tree.
  const MantleComponentSlots({
    this.properties = const [],
  });

  /// Properties available to this slot.
  final List<MantleProperty<dynamic>> properties;
}

/// Represents the states for a Mantle component.
class MantleComponentState implements MantleComponent {
  /// Creates a state contract for derived component values.
  const MantleComponentState({this.properties = const []});

  /// Properties that make up the generated state type.
  final List<MantleProperty<dynamic>> properties;
}

/// Represents the styles for a Mantle component.
class MantleComponentStyle implements MantleComponent {
  /// Creates a style contract for resolved visual values.
  const MantleComponentStyle({required this.properties});

  /// Properties that make up the generated style type.
  final List<MantleProperty<dynamic>> properties;
}
