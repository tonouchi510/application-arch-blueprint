class CircleModel {
  final String id;
  final String name;
  final String description;
  final String ownerId;
  final int memberCount;

  const CircleModel({
    required this.id,
    required this.name,
    required this.description,
    required this.ownerId,
    this.memberCount = 0,
  });

  CircleModel copyWith({
    String? id,
    String? name,
    String? description,
    String? ownerId,
    int? memberCount,
  }) {
    return CircleModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      ownerId: ownerId ?? this.ownerId,
      memberCount: memberCount ?? this.memberCount,
    );
  }
}

class CircleMemberModel {
  final String id;
  final String circleId;
  final String userId;
  final String joinedDate;

  const CircleMemberModel({
    required this.id,
    required this.circleId,
    required this.userId,
    required this.joinedDate,
  });
}
