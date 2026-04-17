class CircleModel {
  final String id;
  final String name;
  final String description;
  final String ownerId;

  const CircleModel({
    required this.id,
    required this.name,
    required this.description,
    required this.ownerId,
  });

  CircleModel copyWith({
    String? id,
    String? name,
    String? description,
    String? ownerId,
  }) {
    return CircleModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      ownerId: ownerId ?? this.ownerId,
    );
  }
}
