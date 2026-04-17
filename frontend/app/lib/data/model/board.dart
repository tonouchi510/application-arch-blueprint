class BoardModel {
  final String id;
  final String circleId;
  final String topic;
  final String status;

  const BoardModel({
    required this.id,
    required this.circleId,
    required this.topic,
    required this.status,
  });

  BoardModel copyWith({
    String? id,
    String? circleId,
    String? topic,
    String? status,
  }) {
    return BoardModel(
      id: id ?? this.id,
      circleId: circleId ?? this.circleId,
      topic: topic ?? this.topic,
      status: status ?? this.status,
    );
  }
}
